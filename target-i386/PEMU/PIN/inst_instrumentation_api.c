#include "inst_instrumentation_api.h"
//#include "pin.h"
#include "../pemu.h"

#include <stdarg.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <inttypes.h>
#include <signal.h>

#include "../hashTable.h"
#include "qemu/host-utils.h"
#include "cpu.h"
#include "disas/disas.h"
#include "tcg-op.h"

#include "helper.h"
#define GEN_HELPER 1
#include "helper.h"

#include "instrumentation_level.h"

extern struct PEMU_INST pemu_inst;

VOID INS_AddInstrumentFunction(INS_INSTRUMENT_CALLBACK func, VOID *val)
{
	//fprintf(stderr, "INS_AddInstrumentFunction\n");

	pemu_hook_funcs.inst_hook = func;
}



static long func_args[20];
VOID INS_InsertCall(INS ins, IPOINT action, AFUNPTR funptr, ...)
{
	long ptr;
	int num = 0;
	va_list vl;
	long val = -2;
	uint32_t i;
	
	va_start(vl, funptr);

	ptr = get_cache_current();
	set_cache_value(INS_LEVEL);
	set_cache_value(funptr);
	while(1)
	{
		val = va_arg(vl, long);
		switch(val)//TODO: convert enum to 64-pointer
		{
			case 0xffffffff:
				goto OUT;
			case IARG_PTR:
				val = va_arg(vl, long);
				func_args[num] = val;
				num++;
				break;
			case IARG_INST_PTR:
				func_args[num] = ins->pc;
				num++;
				break;
			default://memory address?
				//printf("%llx\n", val);
				break;
		}
	}
OUT:
	va_end(vl);
	
	set_cache_value(num);
	for(i = 0;i < num;i++) {
		set_cache_value(func_args[i]);
	}

	set_hashTable(pemu_inst.PEMU_inst_pc, ptr);
}

