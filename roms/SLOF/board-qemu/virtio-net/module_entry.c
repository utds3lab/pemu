/******************************************************************************
 * Copyright (c) 2004, 2011 IBM Corporation
 * All rights reserved.
 * This program and the accompanying materials
 * are made available under the terms of the BSD License
 * which accompanies this distribution, and is available at
 * http://www.opensource.org/licenses/bsd-license.php
 *
 * Contributors:
 *     IBM Corporation - initial implementation
 *****************************************************************************/

#include <string.h>
#include <netdriver_int.h>
#include "virtio-net.h"

extern char __module_start[];
extern char __module_end[];
extern char __bss_start[];
extern char __bss_end[];

snk_kernel_t	*snk_kernel_interface;
snk_module_t	*snk_module_interface;


snk_module_t* module_init(snk_kernel_t *snk_kernel_int, pci_config_t *conf)
{
	long		module_size;

	module_size = __module_end - __module_start;
	if (module_size >= 0x800000) {
		snk_kernel_int->print("Module size (%llu bytes) is too big!\n",
				      module_size);
		return 0;
	}

	memset(__bss_start, 0, __bss_end - __bss_start);

	snk_kernel_interface = snk_kernel_int;
	snk_module_interface = &virtionet_interface;
	snk_module_interface->link_addr = module_init;

	if (snk_kernel_int->version != snk_module_interface->version)
		return 0;

	if (vn_module_init_pci(snk_kernel_int, conf))
		return 0;

	return &virtionet_interface;
}
