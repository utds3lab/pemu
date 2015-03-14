/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#include <stdio.h>
#include "qemu-common.h"

#include "qemu/host-utils.h"
#include "cpu.h"
#include "tcg-op.h"

#include "helper.h"
#define GEN_HELPER 1
#include "helper.h"

#include "../pemu.h"

#define DEBUG

static struct _INTROSPECT_INFO {
	target_ulong save_all[100];
	int syscall_num;
	int introspect_already_alloc;
	int return_pc;
	int syscall_retval;
} introspect_info;

static void introspect_save_all(CPUX86State *env)
{
	introspect_info.save_all[R_EAX] = env->regs[R_EAX];
	introspect_info.save_all[R_EBX] = env->regs[R_EBX];
	introspect_info.save_all[R_ECX] = env->regs[R_ECX];
	introspect_info.save_all[R_EDX] = env->regs[R_EDX];
	introspect_info.save_all[R_EDI] = env->regs[R_EDI];
	introspect_info.save_all[R_ESI] = env->regs[R_ESI];
	introspect_info.save_all[R_EBP] = env->regs[R_EBP];
	introspect_info.save_all[R_ESP] = env->regs[R_ESP];
}

static void introspect_restore_all(CPUX86State *env)
{
	env->regs[R_EAX] = introspect_info.save_all[R_EAX];
	env->regs[R_EBX] = introspect_info.save_all[R_EBX];
	env->regs[R_ECX] = introspect_info.save_all[R_ECX];
	env->regs[R_EDX] = introspect_info.save_all[R_EDX];
	env->regs[R_EDI] = introspect_info.save_all[R_EDI];
	env->regs[R_ESI] = introspect_info.save_all[R_ESI];
	env->regs[R_EBP] = introspect_info.save_all[R_EBP];
	env->regs[R_ESP] = introspect_info.save_all[R_ESP];
}

void introspect_sysenter(CPUX86State *env, int arg[], int num)
{
	if(introspect_info.syscall_num == 0x40) {
		assert(num <= 4);
		env->regs[R_EBX] = arg[0];
		env->regs[R_ECX] = arg[1];
		env->regs[R_EDX] = arg[2];
		env->regs[R_ESI] = arg[3];
		env->regs[R_EBP] = env->regs[R_ESP];
		env->regs[R_EAX] = 0x40;
		env->eip = 0xb7fe2419; //sysenter
#ifdef DEBUG
		fprintf(stdout, "introspect_sysenter finished\n");
#endif
	}
}

void introspect_sysexit(CPUX86State *env)
{	
	//fprintf(stdout, "syscall 0x%x sysexit eax=%d\n", introspect_info.syscall_num, env->regs[R_EAX]);
	if(introspect_info.syscall_num == 0x40) {
		introspect_info.syscall_retval = env->regs[R_EAX]; 
		env->eip = introspect_info.return_pc;
		introspect_restore_all(env);
		introspect_info.syscall_num = 0;
		introspect_info.return_pc = 0;
		set_returnVal(introspect_info.syscall_retval);
		post_sem_2();
	}
}

void helper_introspect_hook(int pc)
{
	int arg[6];
	int num;
	if(introspect_info.return_pc == 0 && pemu_exec_stats.PEMU_introspect && pc < 0xc0000000) {
#ifdef DEBUG
		fprintf(stdout, "helper_introspect_hook before wait_sc\n");
#endif
		wait_sem_1();

		if(pemu_exec_stats.PEMU_introspect == 0) {
#ifdef DEBUG
		fprintf(stdout, "pemu_exec_stats.PEMU_introspect == 0\n");
#endif
			return;
		}

		num = get_sc_info(arg, &introspect_info.syscall_num);
		introspect_save_all(cpu_single_env);
		introspect_sysenter(cpu_single_env, arg, num);
		introspect_info.return_pc = pc;
#ifdef DEBUG
		fprintf(stdout, "helper_introspect_hook before cpu_loop_exit syscall_num=0x%x\n",
				introspect_info.syscall_num);
#endif
		cpu_loop_exit(cpu_single_env);
	}
}

int introspect_enter_PEMU(int sysnum, int arg1, int arg2, int arg3,int arg4, int arg5, int arg6)
{
#ifdef DEBUG
	fprintf(stdout, "introspect_enter_PEMU\n");
#endif
	return do_syscall_policy(sysnum, arg1, arg2, arg3, arg4, arg5, arg6);
}

void init_introspect(void)
{
	init_sig();
}

