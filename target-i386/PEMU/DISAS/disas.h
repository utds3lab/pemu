/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#ifndef DISAS_H
#define DISAS_H

#include <xed-interface.h>
#include "../pemu.h"
#include "../qemu-pemu.h"
#include "../PIN/pin.h"

#include "qemu-common.h"

void init_disas(void);
//xed_error_enum_t disas_one_inst(target_ulong pc);
xed_error_enum_t disas_one_inst_ex(target_ulong pc, struct PEMU_INST *inst);
int disas_basic_block_ex(target_ulong pc_start, struct PEMU_BBL *bbl);
void end_basic_block(BBL bbl);

void PEMU_add_trace(unsigned long pc);
int PEMU_trace_need_disas(unsigned long pc);
void PEMU_set_trace(unsigned long pc);
int PEMU_disas_trace(target_ulong pc);
int PEMU_disas_handle_branch(target_ulong pc);

#endif
