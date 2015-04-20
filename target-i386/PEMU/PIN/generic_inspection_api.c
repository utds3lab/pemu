/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#include "pin.h"
#include "../pemu.h"
#include "../DISAS/disas.h"
#include "generic_inspection_api.h"
#include "../parse_operand.h"


static void inst_update(unsigned int pc)
{
	PEMU_read_mem(pc, 15, pemu_inst.PEMU_inst_buf);
	xed_decoded_inst_zero_set_mode(&pemu_inst.PEMU_xedd_g, &pemu_inst.PEMU_dstate);
	xed_error_enum_t xed_error = xed_decode(&pemu_inst.PEMU_xedd_g,
			XED_STATIC_CAST(const xed_uint8_t *,  pemu_inst.PEMU_inst_buf), 15);
	if (xed_error == XED_ERROR_NONE) 
	{
	   //xed_decoded_inst_dump_intel_format(&pemu_inst.PEMU_xedd_g, pemu_inst.PEMU_inst_str, 
	   //	   sizeof(pemu_inst.PEMU_inst_str), 0);	
	   //pemu_xed.PEMU_g_xi = xed_decoded_inst_inst(&pemu_xed.PEMU_xedd_g);
   	   //pemu_xed.PEMU_op = xed_inst_operand(pemu_xed.PEMU_g_xi, 0);
   	   //pemu_xed.PEMU_op_name = xed_operand_name(pemu_xed.PEMU_op);
	   //pemu_xed.PEMU_opcode = xed_decoded_inst_get_iclass(&pemu_xed.PEMU_xedd_g);
	}
}

void inst_print(INS ins)
{
	inst_update(ins->pc);
	xed_decoded_inst_dump_intel_format(&pemu_inst.PEMU_xedd_g, pemu_inst.PEMU_inst_str, 
			sizeof(pemu_inst.PEMU_inst_str), 0);	
	printf("%s\n", pemu_inst.PEMU_inst_str);
}


INT32 INS_Category (const INS ins)
{
	inst_update(ins->pc);
	return xed_iform_to_category(xed_iform_first_per_iclass(xed_decoded_inst_get_iclass(&pemu_inst.PEMU_xedd_g)));
}

INT32 INS_Extension (const INS ins)
{
	inst_update(ins->pc);
	return xed_iform_to_extension(xed_iform_first_per_iclass(xed_decoded_inst_get_iclass(&pemu_inst.PEMU_xedd_g)));
}

UINT32 INS_EffectiveAddressWidth (INS ins)
{
}

USIZE INS_MemoryWriteSize (INS ins)
{
	inst_update(ins->pc);
	if(xed_decoded_inst_mem_written(&pemu_inst.PEMU_xedd_g, 0)) {
		return xed_decoded_inst_get_memory_operand_length(&pemu_inst.PEMU_xedd_g, 0);
	} else if(xed_decoded_inst_mem_written(&pemu_inst.PEMU_xedd_g, 1)) {
		return xed_decoded_inst_get_memory_operand_length(&pemu_inst.PEMU_xedd_g, 1);
	}
	return 0;
}

USIZE INS_MemoryWriteSizeWithoutPrefix (INS ins)
{
}

USIZE INS_MemoryReadSize (INS ins)
{
	inst_update(ins->pc);
	if(xed_decoded_inst_mem_read(&pemu_inst.PEMU_xedd_g, 0)) {
		return xed_decoded_inst_get_memory_operand_length(&pemu_inst.PEMU_xedd_g, 0);
	} else if(xed_decoded_inst_mem_read(&pemu_inst.PEMU_xedd_g, 1)) {
		return xed_decoded_inst_get_memory_operand_length(&pemu_inst.PEMU_xedd_g, 1);
	}
	return 0;
}

USIZE INS_MemoryReadSizeWithoutPrefix (INS ins)
{
}

BOOL INS_IsMemoryRead (INS ins)
{
	inst_update(ins->pc);
	return xed_decoded_inst_mem_read(&pemu_inst.PEMU_xedd_g, 0) || xed_decoded_inst_mem_read(&pemu_inst.PEMU_xedd_g, 1);
}

BOOL INS_IsMemoryWrite (INS ins)
{
	inst_update(ins->pc);
	return xed_decoded_inst_mem_written(&pemu_inst.PEMU_xedd_g, 0) || xed_decoded_inst_mem_written(&pemu_inst.PEMU_xedd_g, 1);
}

BOOL INS_HasMemoryRead2 (INS ins)
{
	inst_update(ins->pc);
	return xed_decoded_inst_mem_written(&pemu_inst.PEMU_xedd_g, 0) && xed_decoded_inst_mem_written(&pemu_inst.PEMU_xedd_g, 1);

}

BOOL INS_HasFallThrough (INS ins)
{
	inst_update(ins->pc);
	switch(xed_iform_to_category(xed_iform_first_per_iclass(xed_decoded_inst_get_iclass(&pemu_inst.PEMU_xedd_g)))) {
		case XED_CATEGORY_CALL:
		case XED_CATEGORY_RET:
		case XED_CATEGORY_UNCOND_BR:
		case XED_CATEGORY_SYSCALL:
		case XED_CATEGORY_SYSRET:
		case XED_CATEGORY_INTERRUPT:
			return 0;
		default:
			return 1;
	}
}

BOOL INS_IsSysenter (INS ins)
{
	inst_update(ins->pc);
	return xed_decoded_inst_get_iclass(&pemu_inst.PEMU_xedd_g) == XED_ICLASS_SYSENTER;
}

BOOL INS_IsNop (INS ins)
{
	inst_update(ins->pc);	
	return xed_decoded_inst_get_iclass(&pemu_inst.PEMU_xedd_g) == XED_ICLASS_NOP;
}

#if 0
string OPCODE_StringShort (UINT32 opcode)
{
}

string INS_Mnemonic (INS ins)
{
}
#endif

BOOL INS_IsBranch (INS ins)
{
	inst_update(ins->pc);
	switch(xed_iform_to_category(xed_iform_first_per_iclass(xed_decoded_inst_get_iclass(&pemu_inst.PEMU_xedd_g)))) {
		case XED_CATEGORY_COND_BR:
		case XED_CATEGORY_UNCOND_BR:
			return 1;
		default:
			return 0;
	}
}

BOOL INS_IsBranchOrCall (INS ins)
{
	inst_update(ins->pc);
	switch(xed_iform_to_category(xed_iform_first_per_iclass(xed_decoded_inst_get_iclass(&pemu_inst.PEMU_xedd_g)))) {
		case XED_CATEGORY_COND_BR:
		case XED_CATEGORY_UNCOND_BR:
		case XED_CATEGORY_CALL:
			return 1;
		default:
			return 0;
	}
}

BOOL INS_IsPcMaterialization (INS ins)
{
	inst_update(ins->pc);
	const xed_inst_t *xi = xed_decoded_inst_inst(&pemu_inst.PEMU_xedd_g);
	const xed_operand_t *op = xed_inst_operand(xi, 0);
	xed_operand_enum_t op_name = xed_operand_name(op);

	unsigned int dest, buf;
	xed_reg_enum_t reg_id;
	if (operand_is_mem(op_name, &dest, 0)) {
		int mem_idx = op_name == XED_OPERAND_MEM1 ? 1 : 0;
		xed_reg_enum_t base_regid =
		    xed_decoded_inst_get_base_reg(&pemu_inst.PEMU_xedd_g, mem_idx);
		PEMU_read_mem(dest, 4, &buf);
		dest = buf;
	} else if (operand_is_reg(op_name, &reg_id)) {
		dest = PEMU_get_reg(reg_id);
	} else if (operand_is_relbr(op_name, &dest)) {
		dest += (ins->pc + xed_decoded_inst_get_length(&pemu_inst.PEMU_xedd_g));
	}
	return dest == xed_decoded_inst_get_length(&pemu_inst.PEMU_xedd_g) + ins->pc;
}

BOOL INS_IsCall (INS ins)
{
	inst_update(ins->pc);
	return xed_decoded_inst_get_iclass(&pemu_inst.PEMU_xedd_g) == XED_ICLASS_CALL_NEAR;
}

BOOL INS_IsFarCall (INS ins)
{
	inst_update(ins->pc);
	return xed_decoded_inst_get_iclass(&pemu_inst.PEMU_xedd_g) == XED_ICLASS_CALL_FAR;
}

BOOL INS_IsFarJump (INS ins)
{
	inst_update(ins->pc);
	return xed_decoded_inst_get_iclass(&pemu_inst.PEMU_xedd_g) == XED_ICLASS_JMP_FAR;
}

BOOL INS_IsDirectFarJump (INS ins)
{
}

#if 0
VOID INS_GetFarPointer (INS ins, UINT16 &segment_selector, UINT32 &displacement)
{
}
#endif
BOOL INS_IsProcedureCall (INS ins)
{
}

BOOL INS_IsInterrupt (INS ins)
{
	return INS_Category(ins) == XED_CATEGORY_INTERRUPT;
}

BOOL INS_IsRet (INS ins)
{
	inst_update(ins->pc);
	return xed_decoded_inst_get_iclass(&pemu_inst.PEMU_xedd_g) == XED_ICLASS_RET_NEAR;
}

BOOL INS_IsFarRet (INS ins)
{
	inst_update(ins->pc);
	return xed_decoded_inst_get_iclass(&pemu_inst.PEMU_xedd_g) == XED_ICLASS_RET_FAR;
}

BOOL INS_IsPrefetch (INS ins)
{
	inst_update(ins->pc);
	return xed_decoded_inst_is_prefetch(&pemu_inst.PEMU_xedd_g);
}

BOOL INS_IsAtomicUpdate (const INS ins)
{
	inst_update(ins->pc);
	return xed_operand_values_get_atomic(xed_decoded_inst_operands(&pemu_inst.PEMU_xedd_g));
}

BOOL INS_IsIndirectBranchOrCall (INS ins)
{
}

BOOL INS_IsDirectBranchOrCall (INS ins)
{
	inst_update(ins->pc);
	switch(xed_iform_to_category(xed_iform_first_per_iclass(xed_decoded_inst_get_iclass(&pemu_inst.PEMU_xedd_g)))) {
		case XED_CATEGORY_COND_BR:
		case XED_CATEGORY_UNCOND_BR:
		case XED_CATEGORY_CALL:
			break;
		default:
			return 0;
	}
	unsigned int dest;
	const xed_inst_t *xi = xed_decoded_inst_inst(&pemu_inst.PEMU_xedd_g);
	xed_operand_enum_t op_name = xed_operand_name(xed_inst_operand(xi, 0));
	return operand_is_relbr(op_name, &dest) || operand_is_imm(op_name, &dest);
}
#if 0
BOOL INS_IsRewritableMemOpBase (INS ins, MEMORY_TYPE mtype, REG &base)
{
}
#endif

REG INS_RegR (INS x, UINT32 k)
{
#if 0
	inst_print(ip);
	const xed_inst_t *xi = xed_decoded_inst_inst(&pemu_inst.PEMU_xedd_g);
	int num = xed_inst_noperands(xi);
	const xed_operand_t *op;
	xed_operand_enum_t op_name;
	for(int i = 0;i < num;i++) {
		op = xed_inst_operand(xi, i);
		op_name = xed_operand_name(op);
		if(xed_operand_is_register(op_name) && xed_operand_read(op))
			cout<<xed_reg_enum_t2str(xed_decoded_inst_get_reg(&pemu_inst.PEMU_xedd_g, op_name))<<" ";
			//cout<<xed_operand_enum_t2str(op_name)<<" ";
	}
	cout<<endl;
#endif
}

REG INS_RegW (INS x, UINT32 k)
{
}

OPCODE INS_Opcode (INS ins)
{
	return xed_decoded_inst_get_iclass(ins);
}
#if 0
string CATEGORY_StringShort (UINT32 num)
{
}

string EXTENSION_StringShort (UINT32 num)
{
}
#endif
UINT32 INS_MaxNumRRegs (INS x)
{
}

UINT32 INS_MaxNumWRegs (INS x)
{
}

BOOL INS_RegRContain (const INS ins, const REG reg)
{
}

BOOL INS_RegWContain (const INS ins, const REG reg)
{
}

BOOL INS_FullRegRContain (const INS ins, const REG reg)
{
}

BOOL INS_FullRegWContain (const INS ins, const REG reg)
{
}

BOOL INS_IsStackRead (const INS ins)
{
}

BOOL INS_IsStackWrite (const INS ins)
{
}

BOOL INS_IsIpRelRead (const INS ins)
{
}

BOOL INS_IsIpRelWrite (const INS ins)
{
}
#if 0
PREDICATE INS_GetPredicate (INS ins)
{
}
#endif
BOOL INS_IsPredicated (INS ins)
{
}

BOOL INS_IsOriginal (INS ins)
{
}
#if 0
string INS_Disassemble (INS ins)
{
}
#endif
UINT32 INS_OperandCount (INS ins)
{
	inst_update(ins->pc);
	const xed_inst_t * xi = xed_decoded_inst_inst(&pemu_inst.PEMU_xedd_g);
	return xed_inst_noperands(xi);
}

BOOL INS_OperandIsMemory (INS ins, UINT32 n) //TOTEST
{
	inst_update(ins->pc);
	const xed_inst_t * xi = xed_decoded_inst_inst(&pemu_inst.PEMU_xedd_g);
	
	switch (xed_operand_name(xed_inst_operand(xi, n))) {
		case XED_OPERAND_AGEN:
		case XED_OPERAND_MEM0:
		case XED_OPERAND_MEM1:
			return 1;
		default:
			return 0;
	}						  
}

REG INS_OperandMemoryBaseReg (INS ins, UINT32 n)
{
	inst_update(ins->pc);
	const xed_inst_t *xi = xed_decoded_inst_inst(&pemu_inst.PEMU_xedd_g);
	const xed_operand_t *op = xed_inst_operand(xi, n);
	xed_operand_enum_t op_name = xed_operand_name(op);

	unsigned int dest;
	if (operand_is_mem(op_name, &dest, 0)) {
		return s_base_regid;
	}
}

REG INS_OperandMemoryIndexReg (INS ins, UINT32 n)
{
	inst_update(ins->pc);
	const xed_inst_t *xi = xed_decoded_inst_inst(&pemu_inst.PEMU_xedd_g);
	const xed_operand_t *op = xed_inst_operand(xi, n);
	xed_operand_enum_t op_name = xed_operand_name(op);

	unsigned int dest;
	if (operand_is_mem(op_name, &dest, 0)) {
		return s_index_regid;
	}
}

REG INS_OperandMemorySegmentReg (INS ins, UINT32 n)
{
}

UINT32 INS_OperandMemoryScale (INS ins, UINT32 n)
{
	inst_update(ins->pc);
	const xed_inst_t *xi = xed_decoded_inst_inst(&pemu_inst.PEMU_xedd_g);
	const xed_operand_t *op = xed_inst_operand(xi, n);
	xed_operand_enum_t op_name = xed_operand_name(op);

	unsigned int dest;
	if (operand_is_mem(op_name, &dest, 0)) {
		return s_scale;
	}
}

INT64 INS_OperandMemoryDisplacement (INS ins, UINT32 n)
{
	inst_update(ins->pc);
	const xed_inst_t *xi = xed_decoded_inst_inst(&pemu_inst.PEMU_xedd_g);
	const xed_operand_t *op = xed_inst_operand(xi, n);
	xed_operand_enum_t op_name = xed_operand_name(op);

	unsigned int dest;
	if (operand_is_mem(op_name, &dest, 0)) {
		return s_dis;
	}
}

BOOL INS_OperandIsFixedMemop (INS ins, UINT32 n)
{
}

BOOL INS_OperandIsAddressGenerator (INS ins, UINT32 n)
{
}

BOOL INS_OperandIsBranchDisplacement (INS ins, UINT32 n)
{
}

BOOL INS_OperandIsReg (INS ins, UINT32 n)
{
	inst_print(ins->pc);
	const xed_inst_t *xi = xed_decoded_inst_inst(&pemu_inst.PEMU_xedd_g);
	const xed_operand_t *op = xed_inst_operand(xi, n);
	xed_operand_enum_t op_name  = xed_operand_name(op);
	return xed_operand_is_register(op_name);

}

REG INS_OperandReg (INS ins, UINT32 n)
{
	inst_print(ins->pc);
	const xed_inst_t *xi = xed_decoded_inst_inst(&pemu_inst.PEMU_xedd_g);
	const xed_operand_t *op = xed_inst_operand(xi, n);
	return xed_decoded_inst_get_reg(&pemu_inst.PEMU_xedd_g, xed_operand_name(op));
}

BOOL INS_OperandIsImmediate (INS ins, UINT32 n)
{
	inst_print(ins->pc);
	const xed_inst_t *xi = xed_decoded_inst_inst(&pemu_inst.PEMU_xedd_g);
	const xed_operand_t *op = xed_inst_operand(xi, n);
	int value;
	return operand_is_imm(xed_operand_name(op), &value);
}

UINT64 INS_OperandImmediate (INS ins, UINT32 n)
{
	inst_print(ins->pc);
	const xed_inst_t *xi = xed_decoded_inst_inst(&pemu_inst.PEMU_xedd_g);
	const xed_operand_t *op = xed_inst_operand(xi, n);
	int value;
	operand_is_imm(xed_operand_name(op), &value);
	return value;
}

BOOL INS_OperandIsImplicit (INS ins, UINT32 n)
{
}

UINT32 INS_OperandWidth (INS ins, UINT32 n)
{
}

BOOL INS_IsSyscall (INS ins)
{
    //return xed_decoded_inst_get_iclass(ins) == XED_ICLASS_SYSENTER;
}

#if 0
SYSCALL_STANDARD INS_SyscallStd (INS ins)
{
}
RTN INS_Rtn (INS x)
{
}
#endif

INS INS_Next (INS x)
{
	x->next;
}

INS INS_Prev (INS x)
{
}

INS INS_Invalid ()
{
}

BOOL INS_Valid (INS ins)
{
	PEMU_read_mem(ins->pc, 15, pemu_inst.PEMU_inst_buf);
	xed_decoded_inst_zero_set_mode(&pemu_inst.PEMU_xedd_g, &pemu_inst.PEMU_dstate);
	xed_error_enum_t xed_error = xed_decode(&pemu_inst.PEMU_xedd_g,
			XED_STATIC_CAST(const xed_uint8_t *,  pemu_inst.PEMU_inst_buf), 15);
	return xed_error == XED_ERROR_NONE;
}

ADDRINT INS_Address (INS ins)
{
	return ins->pc;
}

USIZE INS_Size (INS ins)
{
	inst_update(ins->pc);
	return xed_decoded_inst_get_length(&pemu_inst.PEMU_xedd_g);
}

ADDRINT INS_DirectBranchOrCallTargetAddress (INS ins)
{
	inst_update(ins->pc);
	unsigned int dest = 0;
	const xed_inst_t *xi = xed_decoded_inst_inst(&pemu_inst.PEMU_xedd_g);
	xed_operand_enum_t op_name = xed_operand_name(xed_inst_operand(xi, 0));
	if(operand_is_relbr(op_name, &dest))
		;
	else(operand_is_imm(op_name, &dest))
		;
	return dest;
}

ADDRINT INS_NextAddress (INS ins)
{
}
