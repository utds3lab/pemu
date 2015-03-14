/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#ifndef __CODECACHE_H
#define __CODECACHE_H

#include "qemu-common.h"
#include <stdint.h>

#define TAINTED 1
#define UNTAINTED 0

#ifdef CPLUSPLUS
extern "C" {
#endif
void init_hashTable(void);
void free_hashTable(void);

//void start_code_cache(Addr pc);
//void end_code_cache(Addr pc);

long lookup_hashTable(target_ulong a);
void set_hashTable(target_ulong a, long addr);
void set_hashTable_bysize(target_ulong a, long addr, uint32_t size);
long get_cache_current(void);
void set_cache_value(long val);

#ifdef CPLUSPLUS
}
#endif


#endif
