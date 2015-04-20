/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#include "parse_operand.h"
#include "qemu-common.h"

uint32_t s_base, s_index, s_scale, s_dis;
xed_reg_enum_t s_base_regid, s_index_regid;

int operand_is_reg(const xed_operand_enum_t op_name, xed_reg_enum_t * reg_id) 
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
			*reg_id = xed_decoded_inst_get_reg(&pemu_inst.PEMU_xedd_g, op_name);
			return 1;
		} default:return 0;
	}
}


int operand_is_relbr(const xed_operand_enum_t op_name, uint32_t * branch) 
{
	switch (op_name) {
		/* Jumps */
	case XED_OPERAND_PTR:	// pointer (always in conjunction with a IMM0)
	case XED_OPERAND_RELBR:{
				// branch displacements

			xed_uint_t disp =
			    xed_decoded_inst_get_branch_displacement(&pemu_inst.PEMU_xedd_g);
			*branch = disp;
			 return 1;

		} default:return 0;
	}


}


int operand_is_mem(const xed_operand_enum_t op_name, uint32_t* mem_addr, 
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
			s_base = s_index = s_scale = s_dis = 0;


			segbase = 0;
			// Get Base register
			xed_reg_enum_t base_regid =
			    xed_decoded_inst_get_base_reg(&pemu_inst.PEMU_xedd_g, mem_idx);
			
//			basereg = base_regid;
			
			if (base_regid != XED_REG_INVALID) {
//				int basereg  = 
//					xed_regmapping[base_regid][0];
				s_base_regid = base_regid;
//				base = cpu_single_env->regs[basereg];
				base = PEMU_get_reg(base_regid);
			}
			// Get Index register and Scale
			xed_reg_enum_t index_regid =
			    xed_decoded_inst_get_index_reg(&pemu_inst.PEMU_xedd_g, mem_idx);
			if (mem_idx == 0 && index_regid != XED_REG_INVALID) {
//				int indexreg = xed_regmapping[index_regid][0];
				s_index_regid = index_regid;
//				index = cpu_single_env->regs[indexreg];
				index = PEMU_get_reg(index_regid);

				if (xed_decoded_inst_get_scale
				    (&pemu_inst.PEMU_xedd_g, operand_i) != 0) {
					scale =
					    (unsigned long)
					    xed_decoded_inst_get_scale(&pemu_inst.PEMU_xedd_g,
								       mem_idx);
				}
			}
			displacement =
			    (unsigned long)
			    xed_decoded_inst_get_memory_displacement(&pemu_inst.PEMU_xedd_g,
								     mem_idx);
			*mem_addr =
			    segbase + base + index * scale + displacement;

			s_base = base;
			s_index = index;
			s_scale = scale;
			s_dis = displacement;
#if 0
			if(s_index > 100){
				fprintf(stderr, "%s\n", PEMU_inst_str);
				fprintf(stderr, "EAX = %x\tEBX = %x\tECX = %x\tEDX = %x\n", 
						PEMU_get_reg(XED_REG_EAX),
						PEMU_get_reg(XED_REG_EBX), 
						PEMU_get_reg(XED_REG_ECX),
						PEMU_get_reg(XED_REG_EDX));
				fprintf(stderr, "Base = %x\tIndex = %x\tScale = %x\tDis = %x\n",
						s_base, s_index, s_scale, s_dis);
			}
#endif
			return 1;
		}

	default:
		return 0;
	}

}

int operand_is_imm(const xed_operand_enum_t op_name, uint32_t *value) {
	switch (op_name) {
		/* Immediate */
	case XED_OPERAND_IMM0:{
			if (xed_decoded_inst_get_immediate_is_signed(&pemu_inst.PEMU_xedd_g)) {
				xed_int32_t signed_imm_val =
				    xed_decoded_inst_get_signed_immediate
				    (&pemu_inst.PEMU_xedd_g);
				*value = (uint32_t) signed_imm_val;
			} else {
				xed_uint64_t unsigned_imm_val =
				    xed_decoded_inst_get_unsigned_immediate
				    (&pemu_inst.PEMU_xedd_g);
				*value = (uint32_t) unsigned_imm_val;
			}
			return 1;
		}
		/* Special immediate only used in ENTER instruction */
	case XED_OPERAND_IMM1:{
			xed_uint8_t unsigned_imm_val =
			    xed_decoded_inst_get_second_immediate(&pemu_inst.PEMU_xedd_g);
			*value = (uint32_t) unsigned_imm_val;
			return 1;
		}

	default:
		return 0;
	}

}


int get_mem_operand_size(const xed_operand_enum_t op_name, uint32_t operand_i){
	switch (op_name) {
		/* Memory */
	case XED_OPERAND_AGEN:
	case XED_OPERAND_MEM0:
	case XED_OPERAND_MEM1:
		return xed_decoded_inst_operand_length(&pemu_inst.PEMU_xedd_g, operand_i);
	default:
		return 0;

	}
}


