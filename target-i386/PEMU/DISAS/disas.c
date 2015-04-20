/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#include "disas.h"
#include "../hashTable.h"

static xed_state_t dstate;
static xed_decoded_inst_t xedd_g;

extern struct PEMU_BBL pemu_bbl;
extern struct PEMU_INST pemu_inst;
static char inst_str[500];
unsigned long pemu_retaddr = -1;
unsigned long pemu_page_addr = -1;


void init_disas(void)
{	
	xed_tables_init();
	xed_state_zero(&dstate);
	xed_state_init(&dstate,
			XED_MACHINE_MODE_LEGACY_32,
			XED_ADDRESS_WIDTH_32b, XED_ADDRESS_WIDTH_32b);
}


xed_error_enum_t disas_one_inst_ex(target_ulong pc, struct PEMU_INST *inst)
{
	char buf[15];
	PEMU_read_mem(pc, 15, buf);
	xed_decoded_inst_zero_set_mode(&inst->PEMU_xedd_g, &inst->PEMU_dstate);
	xed_error_enum_t xed_error = xed_decode(&inst->PEMU_xedd_g,
			XED_STATIC_CAST(const xed_uint8_t *,  buf), 15);
	return xed_error;	
}



static xed_error_enum_t disas_one_inst(target_ulong pc)
{
	char buf[15];
	if(PEMU_read_mem(pc, 15, buf)!=0)
		tlb_fill(cpu_single_env, pc+14, 0, 0, 0);
	xed_decoded_inst_zero_set_mode(&xedd_g, &dstate);
	xed_error_enum_t xed_error = xed_decode(&xedd_g,
			XED_STATIC_CAST(const xed_uint8_t *,  buf), 15);
	return xed_error;	
}


/*for userspace now*/
int disas_basic_block_ex(target_ulong pc_start, struct PEMU_BBL *bbl)
{
	target_ulong pc;

	//if(pc_start > 0xc0000000) {
	//	return -1;
	//}

	bbl->PEMU_bbl_pc = bbl->bbl->start_pc = pc_start;
	bbl->bbl->size = 0;
	bbl->bbl->inst_count = 0;
	pc = pc_start;

	while(1){
		xed_error_enum_t xed_error = disas_one_inst(pc);

		if(xed_error != XED_ERROR_NONE){
			return -1;
		}
		//xed_decoded_inst_dump_intel_format(&xedd_g, inst_str, 
		//	   sizeof(inst_str), 0);	

		xed_iclass_enum_t opcode = xed_decoded_inst_get_iclass(&xedd_g);
		int len = xed_decoded_inst_get_length(&xedd_g);
		switch(opcode){
			//case XED_ICLASS_CALL_FAR:
			case XED_ICLASS_CALL_NEAR:
			//case XED_ICLASS_SYSCALL:
			//case XED_ICLASS_INT:
			//case XED_ICLASS_INT1:
			//case XED_ICLASS_INT3:
			case XED_ICLASS_RET_FAR:
			case XED_ICLASS_RET_NEAR:
			//case XED_ICLASS_IRET:
			//case XED_ICLASS_IRETD:
			//case XED_ICLASS_IRETQ:
			case XED_ICLASS_JB:
			case XED_ICLASS_JBE:
			case XED_ICLASS_JL:
			case XED_ICLASS_JLE:
			case XED_ICLASS_JMP:
			case XED_ICLASS_JMP_FAR:
			case XED_ICLASS_JNB:
			case XED_ICLASS_JNBE:
			case XED_ICLASS_JNL: 
			case XED_ICLASS_JNLE:
			case XED_ICLASS_JNO:
			case XED_ICLASS_JNP:
			case XED_ICLASS_JNS:
			case XED_ICLASS_JNZ:
			case XED_ICLASS_JO:
			case XED_ICLASS_JP:
			case XED_ICLASS_JRCXZ:
			case XED_ICLASS_JS:
			case XED_ICLASS_JZ:
				return pc + len;
			default:
				//TODO:
				return;
				//set_code_cache(pc, TAINTED);
				//printf("pc=%lu\tlen=%x\n", pc, len);

		}
		pc += len;
		bbl->bbl->size += len;
		bbl->bbl->inst_count++;
	}
	return 0;
}

static int operand_is_reg(const xed_operand_enum_t op_name, xed_reg_enum_t * reg_id) 
{
	switch (op_name) {
		/* Register */
	case XED_OPERAND_REG0:
	case XED_OPERAND_REG1:
	case XED_OPERAND_REG2:
	case XED_OPERAND_REG3:
	case XED_OPERAND_REG4:
	case XED_OPERAND_REG5:
	case XED_OPERAND_REG6:
	case XED_OPERAND_REG7:
	case XED_OPERAND_REG8:
	case XED_OPERAND_REG9:
	case XED_OPERAND_REG10:
	case XED_OPERAND_REG11:
	case XED_OPERAND_REG12:
	case XED_OPERAND_REG13:
	case XED_OPERAND_REG14:
	case XED_OPERAND_REG15:{
			*reg_id = xed_decoded_inst_get_reg(&xedd_g, op_name);
			return 1;
		} default:return 0;
	}
}

static int operand_is_mem(const xed_operand_enum_t op_name, uint32_t* mem_addr, 
		   int operand_i)
{

//	xed_reg_enum_t basereg;	

	switch (op_name) {
		/* Memory */
	case XED_OPERAND_AGEN:
	case XED_OPERAND_MEM0:
	case XED_OPERAND_MEM1:{
			unsigned long base = 0;
			unsigned long index = 0;
			unsigned long scale = 1;
			unsigned long segbase = 0;
			unsigned short segsel = 0;
			unsigned long displacement = 0;
//			size_t remaining = 0;

			/* Set memory index */
			int mem_idx = 0;
			if (op_name == XED_OPERAND_MEM1)
				mem_idx = 1;

//			unsigned int memlen =
//			    xed_decoded_inst_operand_length(&PEMU_xedd_g, operand_i);

			/* Initialization */
			base = 0;
			index = 0;
			scale = 0;
			segbase = 0;
			segsel = 0;
			displacement = 0;

			xed_reg_enum_t seg_regid =
			    xed_decoded_inst_get_seg_reg(&xedd_g, mem_idx);

			if (seg_regid != XED_REG_INVALID)
				segbase =PEMU_get_seg(seg_regid);

			// Get Base register
			xed_reg_enum_t base_regid =
			    xed_decoded_inst_get_base_reg(&xedd_g, mem_idx);
			
			if (base_regid != XED_REG_INVALID) {
				base = PEMU_get_reg(base_regid);
			}
			// Get Index register and Scale
			xed_reg_enum_t index_regid =
			    xed_decoded_inst_get_index_reg(&xedd_g, mem_idx);
			if (mem_idx == 0 && index_regid != XED_REG_INVALID) {
				index = PEMU_get_reg(index_regid);

				if (xed_decoded_inst_get_scale
				    (&xedd_g, operand_i) != 0) {
					scale =
					    (unsigned long)
					    xed_decoded_inst_get_scale(&xedd_g,
								       mem_idx);
				}
			}
			displacement =
			    (unsigned long)
			    xed_decoded_inst_get_memory_displacement(&xedd_g,
								     mem_idx);
			*mem_addr =
			    segbase + base + index * scale + displacement;

			return 1;
		}

	default:
		return 0;
	}

}

static int operand_is_relbr(const xed_operand_enum_t op_name, uint32_t * branch) 
{
	switch (op_name) {
		/* Jumps */
	case XED_OPERAND_PTR:	// pointer (always in conjunction with a IMM0)
	case XED_OPERAND_RELBR:{
				// branch displacements

			xed_uint_t disp =
			    xed_decoded_inst_get_branch_displacement(&xedd_g);
			*branch = disp;
			 return 1;

		} default:return 0;
	}
}



static target_ulong Instrument_RET(const xed_inst_t * ins) {
	target_ulong esp = PEMU_get_reg(XED_REG_ESP);
	target_ulong target;
	PEMU_read_mem(esp, sizeof(target), &target);
	return target;
}

static target_ulong Instrument_JMP(const xed_inst_t * ins, target_ulong pc)
{
	uint32_t mem_addr = 0;
	xed_reg_enum_t  reg_id;
	target_ulong target;

	const xed_operand_t *op = xed_inst_operand(ins, 0);
	xed_operand_enum_t op_name = xed_operand_name(op);
	
	if (operand_is_mem(op_name, &mem_addr, 0)) {
		PEMU_read_mem(mem_addr,sizeof(target) , &target);
	}
	else if (operand_is_reg(op_name, &reg_id)){
		target = PEMU_get_reg(reg_id);
	}
	else{
		int len = xed_decoded_inst_get_length(&xedd_g);
		target = xed_decoded_inst_get_branch_displacement(&xedd_g) + pc + len;
	}

	return target;
}
static target_ulong Instrument_CALL_NEAR( const xed_inst_t * ins, target_ulong pc)
{
	uint32_t mem_addr;
	xed_reg_enum_t  reg_id;
	target_ulong target;

	const xed_operand_t *op = xed_inst_operand(ins, 0);
	xed_operand_enum_t op_name = xed_operand_name(op);
	
	if (operand_is_mem(op_name, &mem_addr, 0)) {
		PEMU_read_mem(mem_addr,sizeof(target) , &target);
	}
	else if (operand_is_reg(op_name, &reg_id)){
		target = PEMU_get_reg(reg_id);
	}
	else{
		int len = xed_decoded_inst_get_length(&xedd_g);
		target = xed_decoded_inst_get_branch_displacement(&xedd_g) + pc + len;
	}
	return target;
}

int helper_pemu_trace(target_ulong pc)
{
		
		target_ulong target;
		xed_error_enum_t xed_error = disas_one_inst(pc);

		if(xed_error != XED_ERROR_NONE){
			return -1;
		}

		const xed_inst_t * xi = xed_decoded_inst_inst(&xedd_g);
		xed_iclass_enum_t opcode = xed_decoded_inst_get_iclass(&xedd_g);

	//	char inst_str[512];
	//	xed_decoded_inst_dump_intel_format(&xedd_g, inst_str, 
	//		   sizeof(inst_str), 0);	
		switch(opcode){
			case XED_ICLASS_JMP:
				target = Instrument_JMP(xi, pc);
				break;
			case XED_ICLASS_CALL_NEAR:
				target = Instrument_CALL_NEAR(xi,pc);
				break;
			case XED_ICLASS_RET_NEAR:
				target = Instrument_RET(xi);
				break;
			default:
				break;
		}
		PEMU_add_trace(target);
		return 0;
}
				
int disas_trace_ex(target_ulong pc_start, TRACE trace)
{

//#define PEMU_DEBUG
#ifdef PEMU_DEBUG
	printf("New trace %x\n", pc_start);
#endif 
	target_ulong pc;
	char inst_str[256];
	int newtrace = 0;

	pc = pc_start;
	trace->trace_start = pc_start;
	BBL bbl= get_BBL(pc);
	trace->head = bbl;
	INS ins = NULL;
#ifdef PEMU_DEBUG
	printf("New BBL %x\n", pc_start);
#endif

	while(!newtrace){
		xed_error_enum_t xed_error = disas_one_inst(pc);

		if(xed_error != XED_ERROR_NONE){
			return -1;
		}
		xed_decoded_inst_dump_intel_format(&xedd_g, inst_str, 
			   sizeof(inst_str), 0);	

		xed_iclass_enum_t opcode = xed_decoded_inst_get_iclass(&xedd_g);
		int len = xed_decoded_inst_get_length(&xedd_g);
#ifdef PEMU_DEBUG
		printf("New INS %x %s\n", pc, inst_str);
#endif
		if(!ins){
			ins  = get_INS(pc);
			bbl->head = ins;
		}else{
			ins->next = get_INS(pc);
			ins = ins->next;
		}
		if(pemu_hook_funcs.inst_hook != 0) {
			pemu_inst.PEMU_inst_pc = pc;
			pemu_hook_funcs.inst_hook(ins, 0);
		 }

		bbl->inst_count ++;
		bbl-> size += len;
		switch(opcode){
			//case XED_ICLASS_CALL_FAR:
			case XED_ICLASS_CALL_NEAR:
			case XED_ICLASS_SYSENTER:
			case XED_ICLASS_INT:
			case XED_ICLASS_INT1:
			case XED_ICLASS_INT3:
			case XED_ICLASS_HLT:
			case XED_ICLASS_RET_FAR:
			case XED_ICLASS_RET_NEAR:
			case XED_ICLASS_JMP:
			case XED_ICLASS_JMP_FAR:
				newtrace = 1;
				break;
			//case XED_ICLASS_IRET:
			//case XED_ICLASS_IRETD:
			//case XED_ICLASS_IRETQ:
			case XED_ICLASS_JB:
			case XED_ICLASS_JBE:
			case XED_ICLASS_JL:
			case XED_ICLASS_JLE:
			case XED_ICLASS_JNB:
			case XED_ICLASS_JNBE:
			case XED_ICLASS_JNL: 
			case XED_ICLASS_JNLE:
			case XED_ICLASS_JNO:
			case XED_ICLASS_JNP:
			case XED_ICLASS_JNS:
			case XED_ICLASS_JNZ:
			case XED_ICLASS_JO:
			case XED_ICLASS_JP:
			case XED_ICLASS_JRCXZ:
			case XED_ICLASS_JS:
			case XED_ICLASS_JZ:
				{
				//add new trace target
				const xed_inst_t * xi = xed_decoded_inst_inst(&xedd_g);
				const xed_operand_t *op = xed_inst_operand(xi,0);
				xed_operand_enum_t opname = xed_operand_name(op);
				target_ulong rel;
				target_ulong target;
				rel = xed_decoded_inst_get_branch_displacement(&xedd_g);
				target  = pc + rel + len;
				PEMU_add_trace(target);
#ifdef PEMU_DEBUG
				printf("New target %x %d\n", target, bbl->inst_count);
#endif

				bbl->next = get_BBL(pc+len);
				bbl = bbl->next;
				ins = NULL;

#ifdef PEMU_DEBUG
				printf("New BBL %x\n", pc + len);
#endif
				break;
				}
			default:
				//TODO:
				break;
				//set_code_cache(pc, TAINTED);
				//printf("pc=%lu\tlen=%x\n", pc, len);

		}
		pc = pc + len;
	}
	
	if(pemu_hook_funcs.trace_hook != 0) 
		pemu_hook_funcs.trace_hook(trace, 0);
	
	BBL bblnext = trace->head;
    do{
	    bbl = bblnext;
		bblnext = bbl->next;

		INS ins;
		INS insnext = bbl->head;
		do{
			ins = insnext;
			insnext = ins->next;
			free(ins);
		}while(insnext!=NULL);
		free(bbl);
	}while(bblnext!=NULL);
	free(trace);
}

int PEMU_disas_trace(target_ulong pc)
{
	TRACE * trace = get_TRACE(pc);
	disas_trace_ex(pc, trace);

}
int PEMU_disas_handle_branch(target_ulong pc)
{
		
		xed_error_enum_t xed_error = disas_one_inst(pc);

		if(xed_error != XED_ERROR_NONE){
			return 0;
		}

		xed_iclass_enum_t opcode = xed_decoded_inst_get_iclass(&xedd_g);

		switch(opcode){
			case XED_ICLASS_JMP:
			case XED_ICLASS_CALL_NEAR:
				{
					const xed_inst_t * ins = xed_decoded_inst_inst(&xedd_g);
					const xed_operand_t *op = xed_inst_operand(ins, 0);
					xed_operand_enum_t op_name = xed_operand_name(op);
					int len = xed_decoded_inst_get_length(&xedd_g);
					unsigned int rel;
					if(operand_is_relbr(op_name, &rel))
					{	
						unsigned long target = pc + len + rel;
						PEMU_add_trace(target);
						return 0;
					}
					return 1;
				}

				break;
			case XED_ICLASS_RET_NEAR:
				return 1;
			default:
				break;
		}
		return 0;
}

void end_basic_block(BBL bbl)
{
	set_hashTable_bysize(bbl->start_pc, UNTAINTED, bbl->size);
}
