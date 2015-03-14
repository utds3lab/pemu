/******************************************************************************
 * Copyright (c) 2011 IBM Corporation
 * All rights reserved.
 * This program and the accompanying materials
 * are made available under the terms of the BSD License
 * which accompanies this distribution, and is available at
 * http://www.opensource.org/licenses/bsd-license.php
 *
 * Contributors:
 *     IBM Corporation - initial implementation
 *****************************************************************************/

/*
 * This is the implementation for the Virtio network device driver. Details
 * about the virtio-net interface can be found in Rusty Russel's "Virtio PCI
 * Card Specification v0.8.10", appendix C, which can be found here:
 *
 *        http://ozlabs.org/~rusty/virtio-spec/virtio-spec.pdf
 */

#include <stdint.h>
#include "netdriver_int.h"
#include <libhvcall.h>
#include <virtio.h>
#include <string.h>
#include "virtio-net.h"


#define sync()  asm volatile (" sync \n" ::: "memory")


struct virtio_device virtiodev;
struct vqs vq[2];     /* Information about virtqueues */


/* See Virtio Spec, appendix C, "Device Operation" */ 
struct virtio_net_hdr {
	uint8_t  flags;
	uint8_t  gso_type;
	uint16_t  hdr_len;
	uint16_t  gso_size;
	uint16_t  csum_start;
	uint16_t  csum_offset;
	// uint16_t  num_buffers;	/* Only if VIRTIO_NET_F_MRG_RXBUF */
};

static uint16_t last_rx_idx;	/* Last index in RX "used" ring */


/**
 * Initialize the virtio-net device.
 * See the Virtio Spec, chapter 2.2.1 and Appendix C "Device Initialization"
 * for details.
 */
static int virtionet_init(void)
{
	int i;

	dprintk("virtionet_init(%02x:%02x:%02x:%02x:%02x:%02x)\n",
		snk_module_interface->mac_addr[0], snk_module_interface->mac_addr[1],
		snk_module_interface->mac_addr[2], snk_module_interface->mac_addr[3],
		snk_module_interface->mac_addr[4], snk_module_interface->mac_addr[5]);

	if (snk_module_interface->running != 0)
		return 0;

	/* Tell HV that we know how to drive the device. */
	virtio_set_status(&virtiodev, VIRTIO_STAT_ACKNOWLEDGE|VIRTIO_STAT_DRIVER);

	/* Device specific setup - we do not support special features right now */
	virtio_set_guest_features(&virtiodev,  0);

	/* Allocate memory for one transmit an multiple receive buffers */
	vq[VQ_RX].buf_mem = malloc((BUFFER_ENTRY_SIZE+sizeof(struct virtio_net_hdr))
				   * RX_QUEUE_SIZE);
	if (!vq[VQ_RX].buf_mem) {
		printk("virtionet: Failed to allocate buffers!\n");
		virtio_set_status(&virtiodev, VIRTIO_STAT_FAILED);
		return -1;
	}

	/* Prepare receive buffer queue */
	for (i = 0; i < RX_QUEUE_SIZE; i++) {
		struct vring_desc *desc;
		/* Descriptor for net_hdr: */
		desc = &vq[VQ_RX].desc[i*2];
		desc->addr = (uint64_t)vq[VQ_RX].buf_mem
			     + i * (BUFFER_ENTRY_SIZE+sizeof(struct virtio_net_hdr));
		// printk("RX buf %i addr = 0x%llx\n", i, desc->addr);
		desc->len = sizeof(struct virtio_net_hdr);
		desc->flags = VRING_DESC_F_NEXT | VRING_DESC_F_WRITE;
		desc->next = i*2+1;

		/* Descriptor for data: */
		desc = &vq[VQ_RX].desc[i*2+1];
		desc->addr = vq[VQ_RX].desc[i*2].addr + sizeof(struct virtio_net_hdr);
		desc->len = BUFFER_ENTRY_SIZE;
		desc->flags = VRING_DESC_F_WRITE;
		desc->next = 0;

		vq[VQ_RX].avail->ring[i] = i*2;
	}
	sync();
	vq[VQ_RX].avail->flags = VRING_AVAIL_F_NO_INTERRUPT;
	vq[VQ_RX].avail->idx = RX_QUEUE_SIZE;

	last_rx_idx = vq[VQ_RX].used->idx;

	vq[VQ_TX].avail->flags = VRING_AVAIL_F_NO_INTERRUPT;
	vq[VQ_TX].avail->idx = 0;

	/* Tell HV that setup succeeded */
	virtio_set_status(&virtiodev, VIRTIO_STAT_ACKNOWLEDGE
				      |VIRTIO_STAT_DRIVER
				      |VIRTIO_STAT_DRIVER_OK);

	/* Tell HV that RX queues are ready */
	virtio_queue_notify(&virtiodev, VQ_RX);

	snk_module_interface->running = 1;

	return 0;
}


/**
 * Shutdown driver.
 * We've got to make sure that the hosts stops all transfers since the buffers
 * in our main memory will become invalid after this module has been terminated.
 */
static int virtionet_term(void)
{
	dprintk("virtionet_term()\n");

	if (snk_module_interface->running == 0)
		return 0;

	/* Quiesce device */
	virtio_set_status(&virtiodev, VIRTIO_STAT_FAILED);

	/* Reset device */
	virtio_reset_device(&virtiodev);

	snk_module_interface->running = 0;

	return 0;
}


/**
 * Transmit a packet
 */
static int virtionet_xmit(char *buf, int len)
{
	struct vring_desc *desc;
	int id;
	static struct virtio_net_hdr nethdr = {
		0, 0, sizeof(struct virtio_net_hdr),
		0, 0, 0
	};

	if (len > BUFFER_ENTRY_SIZE) {
		printk("virtionet: Packet too big!\n");
		return 0;
	}

	dprintk("\nvirtionet_xmit(packet at %p, %d bytes)\n", buf, len);

	/* Determine descriptor index */
	id = (vq[VQ_TX].avail->idx * 2) % vq[VQ_TX].size;

	/* Set up virtqueue descriptor for header */
	desc = &vq[VQ_TX].desc[id];
	desc->addr = (uint64_t)&nethdr;
	desc->len = sizeof(struct virtio_net_hdr);
	desc->flags = VRING_DESC_F_NEXT;
	desc->next = id + 1;

	/* Set up virtqueue descriptor for data */
	desc = &vq[VQ_TX].desc[id+1];
	desc->addr = (uint64_t)buf;
	desc->len = len;
	desc->flags = 0;
	desc->next = 0;

	vq[VQ_TX].avail->ring[vq[VQ_TX].avail->idx % vq[VQ_TX].size] = id;
	sync();
	vq[VQ_TX].avail->idx += 1;

	/* Tell HV that TX queue is ready */
	virtio_queue_notify(&virtiodev, VQ_TX);

	return len;
}


/**
 * Receive a packet
 */
static int virtionet_receive(char *buf, int maxlen)
{
	int len = 0;
	int id;

	if (last_rx_idx == vq[VQ_RX].used->idx) {
		/* Nothing received yet */
		return 0;
	}

	id = (vq[VQ_RX].used->ring[last_rx_idx % vq[VQ_RX].size].id + 1)
	     % vq[VQ_RX].size;
	len = vq[VQ_RX].used->ring[last_rx_idx % vq[VQ_RX].size].len
	      - sizeof(struct virtio_net_hdr);

	dprintk("virtionet_receive() last_rx_idx=%i, vq[VQ_RX].used->idx=%i,"
		" id=%i len=%i\n", last_rx_idx, vq[VQ_RX].used->idx, id, len);

	if (len > maxlen) {
		printk("virtio-net: Receive buffer not big enough!\n");
		len = maxlen;
	}

#if 0
	/* Dump packet */
	printk("\n");
	int i;
	for (i=0; i<64; i++) {
		printk(" %02x", *(uint8_t*)(vq[VQ_RX].desc[id].addr+i));
		if ((i%16)==15)
			printk("\n");
	}
	printk("\n");
#endif

	/* Copy data to destination buffer */
	memcpy(buf, (void*)vq[VQ_RX].desc[id].addr, len);

	/* Move indices to next entries */
	last_rx_idx = last_rx_idx + 1;

	vq[VQ_RX].avail->ring[vq[VQ_RX].avail->idx % vq[VQ_RX].size] = id - 1;
	sync();
	vq[VQ_RX].avail->idx += 1;

	/* Tell HV that RX queue entry is ready */
	virtio_queue_notify(&virtiodev, VQ_RX);

	return len;
}


/**
 * Network IO control function - not implemented.
 */
static int virtionet_ioctl(int request, void* data)
{
	dprintk("virtionet_ioctl()\n");

	return -1;
}


/**
 * Module definition
 */
snk_module_t virtionet_interface = {
	.version = 1,
	.type    = MOD_TYPE_NETWORK,
	.running = 0,
	.init    = virtionet_init,
	.term    = virtionet_term,
	.write   = virtionet_xmit,
	.read    = virtionet_receive,
	.ioctl   = virtionet_ioctl
};
