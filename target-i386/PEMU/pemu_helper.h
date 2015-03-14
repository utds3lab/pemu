/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#ifndef PEMU_HELPER_H
#define PEMU_HELPER_H

#include "linux.h"
#include "pemu.h"

static void get_name(uint32_t addr, int size, char *buf)
{
   PEMU_read_mem(addr + pemu_guest_os.commoffset, 16, buf);
}

static uint32_t next_task_struct(uint32_t addr)
{
	uint32_t retval;
	uint32_t next;

    PEMU_read_mem(addr + pemu_guest_os.listoffset + sizeof(uint32_t), 
			sizeof(uint32_t), &next);
    retval = next - pemu_guest_os.listoffset;

  	return retval;
}


static uint32_t get_pgd(uint32_t addr)
{
	uint32_t mmaddr, pgd;
	PEMU_read_mem(addr + pemu_guest_os.mmoffset, sizeof(mmaddr), &mmaddr);
	
	if (0 == mmaddr)
		PEMU_read_mem(addr + pemu_guest_os.mmoffset + sizeof(mmaddr), 
  				sizeof(mmaddr), &mmaddr);

	if (0 != mmaddr)
	   	PEMU_read_mem(mmaddr + pemu_guest_os.pgdoffset, sizeof(pgd), &pgd);
	else
	   	memset(&pgd, 0, sizeof(pgd));

	return pgd;
}

#if 0
static uint32_t get_first_mmap(uint32_t addr)
{
	uint32_t mmaddr, mmap;
	PEMU_read_mem(addr + pemu_guest_os.mmoffset, sizeof(mmaddr), &mmaddr);

	if (0 == mmaddr)
		PEMU_read_mem(addr + pemu_guest_os.mmoffset + sizeof(mmaddr), 
                   sizeof(mmaddr), &mmaddr);

  	if (0 != mmaddr)
	 	PEMU_read_mem(mmaddr, sizeof(mmap), &mmap);
	else
		memset(&mmap, 0, sizeof(mmap));
	
	return mmap;
}

static uint32_t get_vmstart(uint32_t addr)
{
	uint32_t vmstart;
	PEMU_read_mem(addr + pemu_guest_os.vmstartoffset, sizeof(vmstart), &vmstart);
  	return vmstart;
}

static uint32_t get_next_mmap(uint32_t addr)
{
  	uint32_t mmap;
	PEMU_read_mem(addr + pemu_guest_os.vmnextoffset, sizeof(mmap), &mmap);
	return mmap;
}

static uint32_t get_vmend(uint32_t addr)
{
   	uint32_t vmend;
	PEMU_read_mem(addr + pemu_guest_os.vmendoffset, sizeof(vmend), &vmend);
	return vmend;
}
#endif

#endif
