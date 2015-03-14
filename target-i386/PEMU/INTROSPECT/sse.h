/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#include "qemu-common.h"
#include <pthread.h>
#include <semaphore.h>

#include <stdio.h> 
#include <pthread.h> 
#include <unistd.h> 


struct sys_para{
    int pointer;
    target_ulong value;
    target_ulong buf_addr;
    unsigned int size;
    int iswrite;
};

struct sc_info{
    struct sys_para arg[6];
    int arg_num;
    target_ulong syscall;
    target_ulong sysret;
    target_ulong free;
	sem_t sem_1;
	sem_t sem_2;
};
union semun
{
     int              val;    /* Value for SETVAL */
     struct semid_ds *buf;    /* Buffer for IPC_STAT, IPC_SET */
     unsigned short  *array;  /* Array for GETALL, SETALL */
};

void sig_init(void);
//void wait_sc(void);
//void sig_finish(target_ulong ret);

void wait_sem_1(void);
void wait_sem_2(void);
void post_sem_1(void);
void post_sem_2(void);
void set_returnVal(target_ulong ret);

int get_sc_info(int arg[], target_ulong * syscall);
extern target_ulong user_buf;
extern size_t sbuf_size;


void sc_init(int syscall);
int insert_sc_arg_with_buffer(int index, target_ulong value, target_ulong size, int iswrite, int bufindex, int bufsize);
int insert_sc_arg(int index, target_ulong value, target_ulong size, int iswrite);
int dispatch_sc();

