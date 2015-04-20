/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#include <stdio.h>
#include "pemu.h"
#include "parse_operand.h"

#include "qemu/host-utils.h"
#include "cpu.h"
#include "tcg-op.h"

#include "helper.h"
#define GEN_HELPER 1
#include "helper.h"




long para_array[20];

typedef void (*FUNC0)();
typedef void (*FUNC1)(void*);
typedef void (*FUNC2)(void*, void *);


typedef void (*FUNC3)(void*, void*, void*);


void helper_inst_hook_1(void *func)
{
	((FUNC0)func)();
}

void helper_inst_hook_2(void *func, void *arg1)
{
	((FUNC1)func)(arg1);
}

void helper_inst_hook_3(void *func, void *arg1, void *arg2)
{
	((FUNC2)func)(arg1, arg2);
}

void helper_inst_hook_4(void *func, void *arg1, void *arg2, void *arg3)
{
	//printf("%x %x %x %x\n", func, arg1, arg2, arg3);
	((FUNC3)func)(arg1, arg2, arg3);
}


void helper_inst_hook_5(void *func, void *arg1, void *arg2, void *arg3, void *arg4)
{
}

void PEMU_instrument_code(void *ptr, unsigned long bbl_addr, int is_regen)
{
	long *p = (long*)ptr;
	long type = *p++;
	long bbl_pc;

	if(type == BBL_LEVEL)
	{
		bbl_pc = *p++;
		if(bbl_pc != bbl_addr)
				return;
		if(is_regen && *p == 0)
				return;
		*p++ = 1;
	}
	void *func = (void*)(*p++);
	long para_num = (*p++);
	long *func_args = (long*)p;

	//fprintf(stdout, "p=%p funptr=%p type=%d para_num=%d\n", p, func, type, para_num);
	//TODO: parse the arguments, eg. translate enum to the real value: IARG_INST_PTR to pc
    //	func_args[2] = pemu_exec_stats.pin_exec_stats.pin_args[IARG_INST_PTR];
	//printf("Here %x %x %x %x\n", func_args[0], func_args[1], func_args[2], func_args[3]);
	
	switch(para_num) {
		case 0:
			gen_helper_inst_hook_1(tcg_const_ptr(func));
			break;
		case 1:
			gen_helper_inst_hook_2(tcg_const_ptr(func), tcg_const_ptr(func_args[0]));
			break;
		case 2:
			gen_helper_inst_hook_3(tcg_const_ptr(func), tcg_const_ptr(func_args[0]), tcg_const_ptr(func_args[1]));
			break;
		case 3:
			gen_helper_inst_hook_4(tcg_const_ptr(func), tcg_const_ptr(func_args[0]), tcg_const_ptr(func_args[1]), 
					tcg_const_ptr(func_args[2]));
			break;
		case 4:
			gen_helper_inst_hook_5(tcg_const_ptr(func), tcg_const_ptr(func_args[0]), tcg_const_ptr(func_args[1]), 
					tcg_const_ptr(func_args[2]), tcg_const_ptr(func_args[3]));
			break;
		default:
			fprintf(stderr, "too many arguments for instrumentation functions\n");
			assert(0);
	}

}



