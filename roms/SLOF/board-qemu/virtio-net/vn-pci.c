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

#include <stdarg.h>
#include <string.h>
#include <cache.h>
#include <byteorder.h>
#include <netdriver_int.h>
#include <libhvcall.h>
#include <virtio.h>
#include "virtio-net.h"


#define VIRTIOHDR_DEVICE_FEATURES	0
#define VIRTIOHDR_GUEST_FEATURES	4
#define VIRTIOHDR_QUEUE_ADDRESS		8
#define VIRTIOHDR_QUEUE_SIZE		12
#define VIRTIOHDR_QUEUE_SELECT		14
#define VIRTIOHDR_QUEUE_NOTIFY		16
#define VIRTIOHDR_DEVICE_STATUS		18
#define VIRTIOHDR_ISR_STATUS		19
#define VIRTIOHDR_MAC_ADDRESS		20


/**
 * Module init for virtio via PCI.
 * Checks whether we're responsible for the given device and set up
 * the virtqueue configuration.
 */
int
vn_module_init_pci(snk_kernel_t *snk_kernel_int, pci_config_t *conf)
{
	uint64_t bar;
	int i;

	dprintk("virtionet: doing virtionet_module_init_pci!\n");

	virtiodev.type = VIRTIO_TYPE_PCI;

	/* Check whether the driver can handle this device by verifying vendor,
	 * device id and class code. */
	if (conf->vendor_id != 0x1af4) {
		dprintk("virtionet: unsupported vendor id\n");
		return -1;
	}
	if (conf->device_id < 0x1000 || conf->device_id > 0x103f) {
		dprintk("virtionet: unsupported device id\n");
		return -1;
	}
	if (conf->class_code != 0x20000) {
		dprintk("virtionet: unsupported class code\n");
		return -1;
	}

	bar = snk_kernel_interface->pci_config_read(conf->puid, 4, conf->bus,
						    conf->devfn, 0x10);

	if (!(bar & 1)) {
		printk("First BAR is not an I/O BAR!\n");
		return -1;
	}
	bar &= ~3ULL;

	dprintk("untranslated bar = %llx\n", bar);

	snk_kernel_interface->translate_addr((void *)&bar);

	dprintk("translated bar = %llx\n", bar);
	virtiodev.base = (void*)bar;

	/* Reset device */
	virtio_reset_device(&virtiodev);

	/* The queue information can be retrieved via the virtio header that
	 * can be found in the I/O BAR. First queue is the receive queue,
	 * second the transmit queue, and the forth is the control queue for
	 * networking options.
	 * We are only interested in the receive and transmit queue here. */

	for (i=VQ_RX; i<=VQ_TX; i++) {
		/* Select ring (0=RX, 1=TX): */
		vq[i].id = i-VQ_RX;
		ci_write_16(virtiodev.base+VIRTIOHDR_QUEUE_SELECT,
			    cpu_to_le16(vq[i].id));

		vq[i].size = le16_to_cpu(ci_read_16(virtiodev.base+VIRTIOHDR_QUEUE_SIZE));
		vq[i].desc = malloc_aligned(virtio_vring_size(vq[i].size), 4096);
		if (!vq[i].desc) {
			printk("malloc failed!\n");
			return -1;
		}
		memset(vq[i].desc, 0, virtio_vring_size(vq[i].size));
		ci_write_32(virtiodev.base+VIRTIOHDR_QUEUE_ADDRESS,
			    cpu_to_le32((long)vq[i].desc / 4096));
		vq[i].avail = (void*)vq[i].desc
				    + vq[i].size * sizeof(struct vring_desc);
		vq[i].used = (void*)VQ_ALIGN((long)vq[i].avail
				    + vq[i].size * sizeof(struct vring_avail));

		dprintk("%i: vq.id = %lx\nvq.size =%lx\n vq.avail =%lx\nvq.used=%lx\n",
			i, vq[i].id, vq[i].size, vq[i].avail, vq[i].used);
	}

	/* Copy MAC address */
	for (i = 0; i < 6; i++) {
		virtionet_interface.mac_addr[i]
				= ci_read_8(virtiodev.base+VIRTIOHDR_MAC_ADDRESS+i);
	}

	/* Acknowledge device. */
	virtio_set_status(&virtiodev, VIRTIO_STAT_ACKNOWLEDGE);

	return 0;
}
