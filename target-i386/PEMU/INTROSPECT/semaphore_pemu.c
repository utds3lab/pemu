/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#include"sse.h"
#include <stdio.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <errno.h>
#include <sys/sem.h>
#include"cpu.h"
#include <sys/mman.h>

#include "../pemu.h"

#define SEMKEY1 (key_t)0xF00B00
#define SEMKEY2 (key_t)0xF00B01
#define SEMKEY3 (key_t)0xF00B02

//#define DEBUG

size_t sbuf_size = 0x100000;
target_ulong user_buf;
static struct sc_info *shm;
extern uint8_t *get_ram_addr();

void init_sig(void)
{ 
	shm = get_ram_addr();

	sem_init(&shm->sem_1, 0, 0);
	sem_init(&shm->sem_2, 0, 0);
}


//guest inject syscall
void wait_sem_1(void)
{
	sem_wait(&shm->sem_1);	
}

void wait_sem_2(void)
{
	sem_wait(&shm->sem_2);	
}

void post_sem_1(void)
{
	sem_post(&shm->sem_1); 
}

void post_sem_2(void)
{
	sem_post(&shm->sem_2); 
}


void set_returnVal(target_ulong ret)
{
	shm->sysret = ret;
}


int get_sc_info(int arg[], target_ulong * syscall)
{
	int i;
	*syscall = shm->syscall;
#ifdef DEBUG
    printf("execute syscall %x %x\n", *syscall, sizeof(struct sc_info));
    if(*syscall == 0x5)
    {
        printf("open file %s\n", (char *)shm + shm->arg[0].buf_addr);
    }
#endif
	for(i=0; i< shm->arg_num;i++)
	{
		if(shm->arg[i].pointer)
			arg[i] = shm->arg[i].buf_addr + user_buf;
		else
			arg[i] = shm->arg[i].value;
	}

	return shm->arg_num;
}



//host catch syscall
void sc_init(int syscall)
{
    memset(shm, 0, sizeof(struct sc_info));
    shm->free = 0x1000;
    shm->syscall = syscall;
}


int insert_sc_arg_with_buffer(int index, target_ulong value, target_ulong size, int iswrite, int bufindex, int bufsize)
{
   shm->arg[index].value = value;
   shm->arg[index].size = size;
   shm->arg[index].iswrite = iswrite;
   shm->arg_num = index+1;
   
   if(size > 0)
   {
     shm->arg[index].pointer = 1;
     shm->arg[index].buf_addr = shm->free;
     shm->free = shm->free + size;   
     if(!iswrite)
     {
       	memcpy((char *)shm +shm->arg[index].buf_addr, (char*) value, size);  
     }
     if(bufindex !=-1)
     {  
     }
   }else
       shm->arg[index].pointer = 0;
}

int insert_sc_arg(int index, target_ulong value, target_ulong size, int iswrite)
{
   shm->arg[index].value = value;
   shm->arg[index].size = size;
   shm->arg[index].iswrite = iswrite;
   shm->arg_num = index+1;
   
   if(size > 0)
   {
     shm->arg[index].pointer = 1;
     shm->arg[index].buf_addr = shm->free;
     shm->free = shm->free + size;   
     if(!iswrite)
     {
       	memcpy((char *)shm +shm->arg[index].buf_addr, (char *) value, size);  
     }
   }else
       shm->arg[index].pointer = 0;
}

int dispatch_sc(void)
{
	pemu_exec_stats.PEMU_introspect = 1; 

#ifdef DEBUG
    printf("syscall return1 %x %x\n", shm->sysret, sizeof(struct sc_info));
#endif

	post_sem_1();

#ifdef DEBUG
    printf("syscall return2 %x %x\n", shm->sysret, sizeof(struct sc_info));
#endif

	wait_sem_2();

#ifdef DEBUG
    printf("syscall return3 %x %x\n", shm->sysret, sizeof(struct sc_info));
#endif
    
    int i;
    struct sys_para *para = shm->arg;
    for(i = 0;i < shm->arg_num;i++)
    {
        if(para[i].iswrite)
        {
       		memcpy((char *) para[i].value, (char *)shm + para[i].buf_addr, para[i].size);  
        }
    }  
    
	return shm->sysret;
}

