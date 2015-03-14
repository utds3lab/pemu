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

#ifndef VIRTIO_NET_H
#define VIRTIO_NET_H

#define RX_QUEUE_SIZE		16
#define BUFFER_ENTRY_SIZE	1514

enum {
	VQ_RX = 0,	/* Receive Queue */
	VQ_TX = 1,	/* Transmit Queue */
};

struct vqs {
	uint64_t id;	/* Queue ID */
	uint32_t size;
	void *buf_mem;
	struct vring_desc *desc;
	struct vring_avail *avail;
	struct vring_used *used;
};

extern struct vqs vq[2];
extern struct virtio_device virtiodev;

/* Device is identified by RX queue ID: */
#define DEVICE_ID  vq[0].id

extern snk_kernel_t *snk_kernel_interface;
extern snk_module_t *snk_module_interface;
extern snk_module_t virtionet_interface;

#define printk(fmt...)  do { snk_kernel_interface->print(fmt); } while(0)
#define malloc(args...) snk_kernel_interface->k_malloc(args)
#define malloc_aligned(args...) snk_kernel_interface->k_malloc_aligned(args)
#define free(args...)  do { snk_kernel_interface->k_free(args); } while(0)

#undef DEBUG
#ifdef DEBUG
# define dprintk(fmt...)	printk(fmt)
#else
# define dprintk(fmt...)
#endif

int vn_module_init_pci(snk_kernel_t *snk_kernel_int, pci_config_t *conf);

#endif
