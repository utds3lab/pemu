/*BEGIN_LEGAL 
Intel Open Source License 

Copyright (c) 2002-2008 Intel Corporation 
All rights reserved. 
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.  Redistributions
in binary form must reproduce the above copyright notice, this list of
conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.  Neither the name of
the Intel Corporation nor the names of its contributors may be used to
endorse or promote products derived from this software without
specific prior written permission.
 
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE INTEL OR
ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
END_LEGAL */

#ifndef _XED_ENCODER_HL_H_
# define _XED_ENCODER_HL_H_
#include "xed-types.h"
#include "xed-reg-enum.h"
#include "xed-state.h"
#include "xed-iclass-enum.h"
#include "xed-portability.h"
#include "xed-encode.h"


typedef struct {
    xed_uint64_t   displacement; 
    xed_uint32_t   displacement_width;
} xed_enc_displacement_t; /* fixme bad name */

/// @name Memory Displacement
//@{
/// @ingroup ENCHL
/// a memory displacement (not for branches)
XED_INLINE static  xed_enc_displacement_t xdisp(xed_uint64_t   displacement,
                                                xed_uint32_t   displacement_width   ) {
    xed_enc_displacement_t x;
    x.displacement = displacement;
    x.displacement_width = displacement_width;
    return x;
}
//@}

typedef struct {
    xed_reg_enum_t seg;
    xed_reg_enum_t base;
    xed_reg_enum_t index;
    xed_uint32_t   scale;
    xed_enc_displacement_t disp;
} xed_memop_t;


typedef enum {
    XED_ENCODER_OPERAND_TYPE_INVALID,
    XED_ENCODER_OPERAND_TYPE_BRDISP,
    XED_ENCODER_OPERAND_TYPE_REG,
    XED_ENCODER_OPERAND_TYPE_IMM0,
    XED_ENCODER_OPERAND_TYPE_SIMM0,
    XED_ENCODER_OPERAND_TYPE_IMM1,
    XED_ENCODER_OPERAND_TYPE_MEM,
    XED_ENCODER_OPERAND_TYPE_PTR,
    XED_ENCODER_OPERAND_TYPE_SEG0,  /* special for things with suppressed implicit memops */
    XED_ENCODER_OPERAND_TYPE_SEG1,  /* special for things with suppressed implicit memops */
    XED_ENCODER_OPERAND_TYPE_OTHER  /* specific operand storage fields -- must supply a name */
} xed_encoder_operand_type_t;

typedef struct {
    xed_encoder_operand_type_t  type;
    union {
        xed_reg_enum_t reg;
        xed_int32_t brdisp;
        xed_uint64_t imm0;
        xed_uint8_t imm1;
        struct {
            xed_operand_enum_t operand_name;
            xed_uint32_t       value;
        } s;
        xed_memop_t mem;
    } u;
    xed_uint32_t width;
} xed_encoder_operand_t;

/// @name Branch Displacement
//@{
/// @ingroup ENCHL
/// a relative branch displacement operand
XED_INLINE static  xed_encoder_operand_t xrelbr(xed_int32_t brdisp, xed_uint_t width) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_BRDISP;
    o.u.brdisp = brdisp;
    o.width = width;
    return o;
}
//@}

/// @name Pointer Displacement
//@{
/// @ingroup ENCHL
/// a relative displacement for a PTR operand  -- the subsequent imm0 holds the 16b selector
XED_INLINE static  xed_encoder_operand_t xptr(xed_int32_t brdisp, xed_uint_t width) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_PTR;
    o.u.brdisp = brdisp;
    o.width = width;
    return o;
}
//@}

/// @name Register and Immmediate Operands
//@{
/// @ingroup ENCHL
/// a register operand
XED_INLINE static  xed_encoder_operand_t xreg(xed_reg_enum_t reg) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_REG;
    o.u.reg = reg;
    o.width = 0;
    return o;
}

/// @ingroup ENCHL
/// a first immediate operand (known as IMM0)
XED_INLINE static  xed_encoder_operand_t imm0(xed_uint64_t v, xed_uint_t width) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_IMM0;
    o.u.imm0 = v;
    o.width = width;
    return o;
}
/// @ingroup ENCHL
/// an 32b signed immediate operand
XED_INLINE static  xed_encoder_operand_t simm0(xed_int32_t v, xed_uint_t width) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_SIMM0;
    /* sign conversion: we store the int32 in an uint64. It gets sign
    extended.  Later we convert it to the right width for the
    instruction. The maximum width of a signed immediate is currently
    32b. */
    o.u.imm0 = v;
    o.width = width;
    return o;
}

/// @ingroup ENCHL
/// an second immediate operand (known as IMM1)
XED_INLINE static  xed_encoder_operand_t imm1(xed_uint8_t v) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_IMM1;
    o.u.imm1 = v; 
    o.width = 8;
    return o;
}


/// @ingroup ENCHL
/// an operand storage field name and value
XED_INLINE static  xed_encoder_operand_t xother(xed_operand_enum_t operand_name,
                                                xed_int32_t value) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_OTHER;
    o.u.s.operand_name = operand_name;
    o.u.s.value = value;
    o.width = 0;
    return o;
}
//@}


//@}

/// @name Memory and Segment-releated Operands
//@{

/// @ingroup ENCHL
/// seg reg override for implicit suppressed memory ops
XED_INLINE static  xed_encoder_operand_t xseg0(xed_reg_enum_t seg0) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_SEG0;
    o.u.reg = seg0;
    return o;
}

/// @ingroup ENCHL
/// seg reg override for implicit suppressed memory ops
XED_INLINE static  xed_encoder_operand_t xseg1(xed_reg_enum_t seg1) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_SEG1;
    o.u.reg = seg1;
    return o;
}

/// @ingroup ENCHL
/// memory operand - base only 
XED_INLINE static  xed_encoder_operand_t xmem_b(xed_reg_enum_t base, xed_uint_t width) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_MEM;
    o.u.mem.base = base;
    o.u.mem.seg = XED_REG_INVALID;
    o.u.mem.index= XED_REG_INVALID;
    o.u.mem.scale = 0;
    o.u.mem.disp.displacement = 0;
    o.u.mem.disp.displacement_width = 0;
    o.width = width;
    return o;
}

/// @ingroup ENCHL
/// memory operand - base and displacement only 
XED_INLINE static  xed_encoder_operand_t xmem_bd(xed_reg_enum_t base, 
                              xed_enc_displacement_t disp,
                              xed_uint_t width) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_MEM;
    o.u.mem.base = base;
    o.u.mem.seg = XED_REG_INVALID;
    o.u.mem.index= XED_REG_INVALID;
    o.u.mem.scale = 0;
    o.u.mem.disp =disp;
    o.width = width;
    return o;
}

/// @ingroup ENCHL
/// memory operand - base, index, scale, displacement
XED_INLINE static  xed_encoder_operand_t xmem_bisd(xed_reg_enum_t base, 
                                xed_reg_enum_t index, 
                                xed_uint_t scale,
                                xed_enc_displacement_t disp,
                                xed_uint_t width) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_MEM;
    o.u.mem.base = base;
    o.u.mem.seg = XED_REG_INVALID;
    o.u.mem.index= index;
    o.u.mem.scale = scale;
    o.u.mem.disp = disp;
    o.width = width;
    return o;
}


/// @ingroup ENCHL
/// memory operand - segment and base only
XED_INLINE static  xed_encoder_operand_t xmem_gb(xed_reg_enum_t seg, xed_reg_enum_t base, xed_uint_t width) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_MEM;
    o.u.mem.base = base;
    o.u.mem.seg = seg;
    o.u.mem.index= XED_REG_INVALID;
    o.u.mem.scale = 0;
    o.u.mem.disp.displacement = 0;
    o.u.mem.disp.displacement_width = 0;
    o.width = width;
    return o;
}

/// @ingroup ENCHL
/// memory operand - segment, base and displacement only
XED_INLINE static  xed_encoder_operand_t xmem_gbd(xed_reg_enum_t seg, xed_reg_enum_t base, 
                               xed_enc_displacement_t disp,
                               xed_uint_t width) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_MEM;
    o.u.mem.base = base;
    o.u.mem.seg = seg;
    o.u.mem.index= XED_REG_INVALID;
    o.u.mem.scale = 0;
    o.u.mem.disp = disp;
    o.width = width;
    return o;
}

/// @ingroup ENCHL
/// memory operand - segment and displacement only
XED_INLINE static  xed_encoder_operand_t xmem_gd(xed_reg_enum_t seg,
                               xed_enc_displacement_t disp,
                               xed_uint_t width) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_MEM;
    o.u.mem.base = XED_REG_INVALID;
    o.u.mem.seg = seg;
    o.u.mem.index= XED_REG_INVALID;
    o.u.mem.scale = 0;
    o.u.mem.disp = disp;
    o.width = width;
    return o;
}

/// @ingroup ENCHL
/// memory operand - segment, base, index, scale, and displacement
XED_INLINE static  xed_encoder_operand_t xmem_gbisd(xed_reg_enum_t seg, 
                                 xed_reg_enum_t base, 
                                 xed_reg_enum_t index, 
                                 xed_uint_t scale,
                                 xed_enc_displacement_t disp, 
                                 xed_uint_t width) {
    xed_encoder_operand_t o;
    o.type = XED_ENCODER_OPERAND_TYPE_MEM;
    o.u.mem.base = base;
    o.u.mem.seg = seg;
    o.u.mem.index= index;
    o.u.mem.scale = scale;
    o.u.mem.disp = disp;
    o.width = width;
    return o;
}
//@}

typedef union {
    struct {
        xed_uint32_t rep               :1;
        xed_uint32_t repne             :1;
        xed_uint32_t lock              :1;
        xed_uint32_t br_hint_taken     :1;
        xed_uint32_t br_hint_not_taken :1;
    } s;
    xed_uint32_t i;
}  xed_encoder_prefixes_t;

#define XED_ENCODER_OPERANDS_MAX 5 /* FIXME */
typedef struct {
    xed_state_t mode;
    xed_iclass_enum_t iclass; /*FIXME: use iform instead? or allow either */
    xed_uint32_t effective_operand_width;

    /* the effective_address_width is only requires to be set for
     *  instructions * with implicit suppressed memops or memops with no
     *  base or index regs.  When base or index regs are present, XED pick
     *  this up automatically from the register names.

     * FIXME: make effective_address_width required by all encodes for
     * unifority. Add to xed_inst[0123]() APIs??? */
    xed_uint32_t effective_address_width; 

    xed_encoder_prefixes_t prefixes;
    xed_uint32_t noperands;
    xed_encoder_operand_t operands[XED_ENCODER_OPERANDS_MAX];
} xed_encoder_instruction_t;

/// @name Instruction Properties and prefixes
//@{
/// @ingroup ENCHL
/// This is to specify effective address size different than the
/// default. For things with base or index regs, XED picks it up from the
/// registers. But for things that have implicit memops, or no base or index
/// reg, we must allow the user to set the address width directly.
XED_INLINE static void xaddr(xed_encoder_instruction_t* x, 
                             xed_uint_t width) {
    x->effective_address_width = width;
}


/// @ingroup ENCHL
XED_INLINE static  void xrep(xed_encoder_instruction_t* x) { 
    x->prefixes.s.rep=1;
}

/// @ingroup ENCHL
XED_INLINE static  void xrepne(xed_encoder_instruction_t* x) { 
    x->prefixes.s.repne=1;
}

/// @ingroup ENCHL
XED_INLINE static  void xlock(xed_encoder_instruction_t* x) { 
    x->prefixes.s.lock=1;
}




/// @ingroup ENCHL
/// convert a #xed_encoder_instruction_t to a #xed_encoder_request_t for encoding
xed_bool_t xed_convert_to_encoder_request(xed_encoder_request_t* out,
                                          xed_encoder_instruction_t* in);

//@}

////////////////////////////////////////////////////////////////////////////
/* FIXME: rather than return the xed_encoder_instruction_t I can make
 * another version that returns a xed_encoder_request_t. Saves silly
 * copying. Although the xed_encoder_instruction_t might be handy for
 * having code templates that get customized & passed to encoder later. */
////////////////////////////////////////////////////////////////////////////
/// @name Creating instructions from operands
//@{

/// @ingroup ENCHL
/// instruction with no operands
XED_INLINE static  void xed_inst0(
    xed_encoder_instruction_t* inst,
    xed_state_t mode,
    xed_iclass_enum_t iclass,
    xed_uint_t effective_operand_width) {

    inst->mode=mode;
    inst->iclass = iclass;
    inst->effective_operand_width = effective_operand_width;
    inst->effective_address_width = 0;
    inst->prefixes.i = 0;
    inst->noperands = 0;
}

/// @ingroup ENCHL
/// instruction with one operand
XED_INLINE static  void xed_inst1(
    xed_encoder_instruction_t* inst,
    xed_state_t mode,
    xed_iclass_enum_t iclass,
    xed_uint_t effective_operand_width,
    xed_encoder_operand_t op0) {
    
    inst->mode=mode;
    inst->iclass = iclass;
    inst->effective_operand_width = effective_operand_width;
    inst->effective_address_width = 0;
    inst->prefixes.i = 0;
    inst->operands[0] = op0;
    inst->noperands = 1;
}

/// @ingroup ENCHL
/// instruction with two operands
XED_INLINE static  void xed_inst2(
    xed_encoder_instruction_t* inst,
    xed_state_t mode,
    xed_iclass_enum_t iclass,
    xed_uint_t effective_operand_width,
    xed_encoder_operand_t op0,
    xed_encoder_operand_t op1) {

    inst->mode=mode;
    inst->iclass = iclass;
    inst->effective_operand_width = effective_operand_width;
    inst->effective_address_width = 0;
    inst->prefixes.i = 0;
    inst->operands[0] = op0;
    inst->operands[1] = op1;
    inst->noperands = 2;
}

/// @ingroup ENCHL
/// instruction with three operands
XED_INLINE static  void xed_inst3(
    xed_encoder_instruction_t* inst,
    xed_state_t mode,
    xed_iclass_enum_t iclass,
    xed_uint_t effective_operand_width,
    xed_encoder_operand_t op0,
    xed_encoder_operand_t op1,
    xed_encoder_operand_t op2) {

    inst->mode=mode;
    inst->iclass = iclass;
    inst->effective_operand_width = effective_operand_width;
    inst->effective_address_width = 0;
    inst->prefixes.i = 0;
    inst->operands[0] = op0;
    inst->operands[1] = op1;
    inst->operands[2] = op2;
    inst->noperands = 3;
}


/// @ingroup ENCHL
/// instruction with four operands
XED_INLINE static  void xed_inst4(
    xed_encoder_instruction_t* inst,
    xed_state_t mode,
    xed_iclass_enum_t iclass,
    xed_uint_t effective_operand_width,
    xed_encoder_operand_t op0,
    xed_encoder_operand_t op1,
    xed_encoder_operand_t op2,
    xed_encoder_operand_t op3) {

    inst->mode=mode;
    inst->iclass = iclass;
    inst->effective_operand_width = effective_operand_width;
    inst->effective_address_width = 0;
    inst->prefixes.i = 0;
    inst->operands[0] = op0;
    inst->operands[1] = op1;
    inst->operands[2] = op2;
    inst->operands[3] = op3;
    inst->noperands = 4;
}

/// @ingroup ENCHL
/// instruction with five operands
XED_INLINE static  void xed_inst5(
    xed_encoder_instruction_t* inst,
    xed_state_t mode,
    xed_iclass_enum_t iclass,
    xed_uint_t effective_operand_width,
    xed_encoder_operand_t op0,
    xed_encoder_operand_t op1,
    xed_encoder_operand_t op2,
    xed_encoder_operand_t op3,
    xed_encoder_operand_t op4) {

    inst->mode=mode;
    inst->iclass = iclass;
    inst->effective_operand_width = effective_operand_width;
    inst->effective_address_width = 0;
    inst->prefixes.i = 0;
    inst->operands[0] = op0;
    inst->operands[1] = op1;
    inst->operands[2] = op2;
    inst->operands[3] = op3;
    inst->operands[4] = op4;
    inst->noperands = 5;
}


/// @ingroup ENCHL
/// instruction with an array of operands. The maximum number is
/// XED_ENCODER_OPERANDS_MAX. The array's contents are copied.
XED_INLINE static  void xed_inst(
    xed_encoder_instruction_t* inst,
    xed_state_t mode,
    xed_iclass_enum_t iclass,
    xed_uint_t effective_operand_width,
    xed_uint_t number_of_operands,
    const xed_encoder_operand_t* operand_array) {

    xed_uint_t i;
    inst->mode=mode;
    inst->iclass = iclass;
    inst->effective_operand_width = effective_operand_width;
    inst->effective_address_width = 0;
    inst->prefixes.i = 0;
    xed_assert(number_of_operands < XED_ENCODER_OPERANDS_MAX);
    for(i=0;i<number_of_operands;i++) {
        inst->operands[i] = operand_array[i];
    }
    inst->noperands = number_of_operands;
}

//@}

/*
 xed_encoder_instruction_t x,y;

 xed_inst2(&x, state, XED_ICLASS_ADD, 32, 
           xreg(XED_REG_EAX), 
           xmem_bd(XED_REG_EDX, xdisp(0x11223344, 32), 32));
  
 xed_inst2(&y, state, XED_ICLASS_ADD, 32, 
           xreg(XED_REG_EAX), 
           xmem_gbisd(XED_REG_FS, XED_REG_EAX, XED_REG_ESI,4, xdisp(0x11223344, 32), 32));

 */

#endif
