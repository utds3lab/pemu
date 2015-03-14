/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#ifndef PEMU_H
#define PEMU_H

#include <xed-interface.h>
#include "PIN/pin.h"
#include "qemu-pemu.h"
#include "qemu-common.h"
#include "cpu.h"
#include "DISAS/disas.h"
#include "PIN/pin_objs.h"
#include "PEMU/PIN/instrumentation_arguments.h"
//#include "hashTable.h"


struct PEMU_EXEC_STATS;
struct PEMU_HOOK_FUNCS;
extern struct PEMU_EXEC_STATS pemu_exec_stats;
extern struct PEMU_HOOK_FUNCS pemu_hook_funcs;
extern struct PEMU_BBL pemu_bbl;
extern struct PEMU_INST pemu_inst;


struct PIN_EXEC_STATS {
	uint32_t pin_args[IARG_LAST];
};

struct PEMU_EXEC_STATS {
	char PEMU_binary_name[100];
	char PEMU_plugin_name[100];
	//yang
	uint32_t PEMU_disas_start;
	uint32_t PEMU_start;
	uint32_t PEMU_already_flush;
	uint32_t PEMU_introspect;
	uint32_t PEMU_cr3;
	target_ulong PEMU_task_addr;
	target_ulong PEMU_exec_pc;
	target_ulong PEMU_dis_pc;
	uint32_t PEMU_pid;
	
	target_ulong PEMU_main_start;
	target_ulong PEMU_img_start;
	target_ulong PEMU_img_end;
	target_ulong PEMU_libc_start;
	target_ulong PEMU_libc_end;
	//uint32_t PEMU_hook_sys_call;
	
	int PEMU_int_level;
	int PEMU_start_trace_syscall;
	struct PIN_EXEC_STATS pin_exec_stats;
};


struct PEMU_INST {
	target_ulong PEMU_inst_pc;
	xed_state_t PEMU_dstate;
	xed_decoded_inst_t PEMU_xedd_g;
	char PEMU_inst_buf[15];
	char PEMU_inst_str[128];
};

struct PEMU_BBL {
	target_ulong PEMU_bbl_pc;
	//xed_decoded_inst_t PEMU_xedd_g;
	BBL bbl;
};

struct PEMU_TRACE {
	target_ulong PEMU_trace_pc;
	//xed_decoded_inst_t PEMU_xedd_g;
	BBL bbl;
};

struct PEMU_HOOK_FUNCS {
	//TODO
    INS_INSTRUMENT_CALLBACK inst_hook;
	BBL_INSTRUMENT_CALLBACK bbl_hook;
	TRACE_INSTRUMENT_CALLBACK trace_hook;
	SYSCALL_ENTRY_CALLBACK enter_syscall_hook;
	SYSCALL_EXIT_CALLBACK exit_syscall_hook;
	FINI_CALLBACK fini_hook;
};

//xed_error_enum_t disas_one_inst_ex(target_ulong pc, PEMU_INST *inst);
//int disas_basic_block(target_ulong pc_start, PEMU_BBL *bbl);

int PEMU_init(void*);
int PEMU_exit(void);
#endif
