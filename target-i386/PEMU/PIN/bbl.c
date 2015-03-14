/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#include "../pemu.h"
#include "pin.h"
#include "instrumentation_level.h"
//#include "bbl.h"
#include <stdarg.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <inttypes.h>
#include <signal.h>

#include "qemu/host-utils.h"
#include "cpu.h"
#include "disas/disas.h"
#include "tcg-op.h"

#include "helper.h"
#define GEN_HELPER 1
#include "helper.h"

static long func_args[10];
VOID BBL_MoveAllAttributes (BBL fromBbl, BBL toBbl)
{
}

UINT32 BBL_NumIns (BBL bbl)
{
	return bbl->inst_count;
}

INS BBL_InsHead (BBL x)
{
	return x->head;
}

INS BBL_InsTail (BBL x)
{
}

BBL BBL_Next (BBL x)
{
	return x->next;
}

BBL BBL_Prev (BBL x)
{
}

BOOL BBL_Valid (BBL x)
{
	return x!=NULL;
}

BOOL BBL_Original (BBL bbl)
{
}

ADDRINT BBL_Address (BBL bbl)
{
	return bbl->start_pc;
}

USIZE BBL_Size (BBL bbl)
{
	return bbl->size;
}

VOID BBL_InsertCall (BBL bbl, IPOINT action, AFUNPTR funptr,...)
{
	long ptr;
	int num = 0;
	va_list vl;
	long val = -2;
	uint32_t i;

	long hook = lookup_hashTable(bbl->start_pc);
	if(hook != 0)
		return;
	
	va_start(vl, funptr);

	ptr = get_cache_current();
	set_cache_value(BBL_LEVEL);
	set_cache_value(bbl->start_pc);
	set_cache_value(0);
	set_cache_value(funptr);
	while(1)
	{
		val = va_arg(vl, long);
		switch(val)//TODO: convert enum to 64-pointer
		{
			case 0xffffffff:
				goto OUT;
			case IARG_UINT32:
				val = va_arg(vl, long);
				func_args[num] = val;
				num++;
				break;
			case IARG_INST_PTR:
				func_args[num] = bbl->start_pc;
				num++;
				break;
			default://memory address?
				break;
		}
	}
OUT:
	va_end(vl);
	
	set_cache_value(num);
	for(i = 0;i < num;i++) {
		set_cache_value(func_args[i]);
	}

	set_hashTable(bbl->start_pc, ptr);
}

VOID BBL_InsertIfCall (BBL bbl, IPOINT action, AFUNPTR funptr,...)
{
}

VOID BBL_InsertThenCall (BBL bbl, IPOINT action, AFUNPTR funptr,...)
{
}

BOOL BBL_HasFallThrough (BBL bbl)
{
}


VOID BBL_AddInstrumentFunction(BBL_INSTRUMENT_CALLBACK func, VOID *val)
{
	pemu_hook_funcs.bbl_hook = func;
}


