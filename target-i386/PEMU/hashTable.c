/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#include "hashTable.h"
#include <stdlib.h>
/*---------------------shadow memory----------------------*/
#define PAGE_BITS 16
#define PAGE_SIZE (1<<PAGE_BITS)
#define PAGE_NUM  (1<<16)

#define IS_DISTINGUISHED_SM(smap) \
   ((smap) == &distinguished_secondary_map)

#define ENSURE_MAPPABLE(map, addr)                              \
   do {                                                           \
      if (IS_DISTINGUISHED_SM(map[addr >> 16])) {       \
         map[addr >> 16] = alloc_secondary_map; \
      }                                                           \
   } while(0)

#define ENSURE_MAPPABLE_BYTE_GRANUITY(map, addr)         \
   do {                                                           \
      if (IS_DISTINGUISHED_SM(map[addr >> 16])) {    \
          map[addr >> 16] = alloc_secondary_map(); \
      }                                                           \
   } while(0)

#define CACHE_POOL_SIZE 1024 * 1024 * 10

/*format: type, fun_pointer, para_num, para_0, para_1 ...*/
static long *cache_pool;
static long *current;

typedef struct {
	long byte[PAGE_SIZE];
} SecMap;

static SecMap distinguished_secondary_map;

static SecMap * ii_primary_map[PAGE_NUM];

static uint32_t shadow_bytes;


//yang
static uint32_t mem_usage = 0;

void init_hashTable(void)
{
    int32_t i;
	
	for (i = 0; i< PAGE_SIZE; i++) {
		distinguished_secondary_map.byte[i] = UNTAINTED; //0xff
	}

	for (i = 0; i < PAGE_NUM; i++) {
		ii_primary_map[i] = &distinguished_secondary_map;
	}
	current = cache_pool = malloc(sizeof(long) * CACHE_POOL_SIZE);
	//fprintf(stdout, "allocate a cache starting from %p\n", current);
}

void free_hashTable(void)
{
	int32_t i;
	for (i = 0; i < PAGE_NUM; i++) {
		if(ii_primary_map[i] != &distinguished_secondary_map) {
			free(ii_primary_map[i]);
        }
	}
}

static SecMap* alloc_secondary_map(void)
{
   SecMap* map;
   int32_t  i;

   /* Mark all bytes as invalid access and invalid value. */
   map = (SecMap *) malloc(sizeof(SecMap));
   //yang
   mem_usage += sizeof(SecMap);

   for (i = 0; i < PAGE_SIZE; i++) {
      map->byte[i] = UNTAINTED; /* Invalid Value */
   }

   shadow_bytes += sizeof(SecMap);
   return map;
}

long lookup_hashTable(target_ulong a)
{
   
   SecMap* sm;
   uint32_t sm_off;

   sm = ii_primary_map[a>>16];
   sm_off = a & 0xFFFF;

   return sm->byte[sm_off];
}

void set_hashTable(target_ulong a, long addr)
{
   SecMap* sm;
   uint32_t sm_off;

   ENSURE_MAPPABLE_BYTE_GRANUITY(ii_primary_map, a);
   sm = ii_primary_map[a >> 16];
   sm_off = a & 0xFFFF;
   sm->byte[sm_off] = addr;

}

void set_hashTable_bysize(target_ulong a, long addr, uint32_t size)
{
	uint32_t i;

	for(i = 0; i < size; i++)
		set_hashTable(a+i, addr);
}

long get_cache_current(void)
{
	return current;
}

void set_cache_value(long val)
{
	*current = val;
	current++;

   //yang
//   mem_usage += sizeof(long);
}


//yang
void update_mem_usage(int len)
{
	mem_usage += len;
}
void get_mem_usage()
{
	printf("MEM usage is %d\n", mem_usage);
}
