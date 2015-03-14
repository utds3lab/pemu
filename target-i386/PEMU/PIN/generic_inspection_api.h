/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#ifndef GENERIC_INSPECTION_API_H
#define GENERIC_INSPECTION_API_H

#include <xed-interface.h>


typedef enum {
	MEMORY_TYPE_READ,
	MEMORY_TYPE_WRITE,
	MEMORY_TYPE_READ2 
} MEMORY_TYPE;

typedef enum { 
	SYSCALL_STANDARD_INVALID,
	SYSCALL_STANDARD_IA32_LINUX, 
	SYSCALL_STANDARD_IA32E_LINUX,
	SYSCALL_STANDARD_IA32_MAC,
	SYSCALL_STANDARD_IA32E_MAC,
	SYSCALL_STANDARD_IA32_WINDOWS_FAST, 
	SYSCALL_STANDARD_IA32E_WINDOWS_FAST,
	SYSCALL_STANDARD_IA32_WINDOWS_ALT,
	SYSCALL_STANDARD_WOW64,
	SYSCALL_STANDARD_WINDOWS_INT 
} SYSCALL_STANDARD;


/**
*	true if the instruction is a SysEnter
*/	
INT32 INS_Category (const INS ins);
INT32 INS_Extension (const INS ins);
UINT32 INS_EffectiveAddressWidth (INS ins);
USIZE INS_MemoryWriteSize (INS ins);
USIZE INS_MemoryWriteSizeWithoutPrefix (INS ins);
USIZE INS_MemoryReadSize (INS ins);
USIZE INS_MemoryReadSizeWithoutPrefix (INS ins);
BOOL INS_IsMemoryRead (INS ins);
BOOL INS_IsMemoryWrite (INS ins);
BOOL INS_HasMemoryRead2 (INS ins);
BOOL INS_HasFallThrough (INS ins);
BOOL INS_IsSysenter (INS ins);
BOOL INS_IsNop (INS ins);
//string OPCODE_StringShort (UINT32 opcode);
//string INS_Mnemonic (INS ins);
BOOL INS_IsBranch (INS ins);
BOOL INS_IsBranchOrCall (INS ins);
BOOL INS_IsPcMaterialization (INS ins);
BOOL INS_IsCall (INS ins);
BOOL INS_IsFarCall (INS ins);
BOOL INS_IsFarJump (INS ins);
BOOL INS_IsDirectFarJump (INS ins);
//VOID INS_GetFarPointer (INS ins, UINT16 &segment_selector, UINT32 &displacement);
BOOL INS_IsProcedureCall (INS ins);
BOOL INS_IsInterrupt (INS ins);
BOOL INS_IsRet (INS ins);
BOOL INS_IsFarRet (INS ins);
BOOL INS_IsPrefetch (INS ins);
BOOL INS_IsAtomicUpdate (const INS ins);
BOOL INS_IsIndirectBranchOrCall (INS ins);
BOOL INS_IsDirectBranchOrCall (INS ins);
//BOOL INS_IsRewritableMemOpBase (INS ins, MEMORY_TYPE mtype, REG &base);
REG INS_RegR (INS x, UINT32 k);
REG INS_RegW (INS x, UINT32 k);
OPCODE INS_Opcode (INS ins);
//string CATEGORY_StringShort (UINT32 num);
//string EXTENSION_StringShort (UINT32 num);
UINT32 INS_MaxNumRRegs (INS x);
UINT32 INS_MaxNumWRegs (INS x);
BOOL INS_RegRContain (const INS ins, const REG reg);
BOOL INS_RegWContain (const INS ins, const REG reg);
BOOL INS_FullRegRContain (const INS ins, const REG reg);
BOOL INS_FullRegWContain (const INS ins, const REG reg);
BOOL INS_IsStackRead (const INS ins);
BOOL INS_IsStackWrite (const INS ins);
BOOL INS_IsIpRelRead (const INS ins);
BOOL INS_IsIpRelWrite (const INS ins);
//PREDICATE INS_GetPredicate (INS ins);
BOOL INS_IsPredicated (INS ins);
BOOL INS_IsOriginal (INS ins);
//string INS_Disassemble (INS ins);
UINT32 INS_OperandCount (INS ins);
BOOL INS_OperandIsMemory (INS ins, UINT32 n);
REG INS_OperandMemoryBaseReg (INS ins, UINT32 n);
REG INS_OperandMemoryIndexReg (INS ins, UINT32 n);
REG INS_OperandMemorySegmentReg (INS ins, UINT32 n);
UINT32 INS_OperandMemoryScale (INS ins, UINT32 n);
INT64 INS_OperandMemoryDisplacement (INS ins, UINT32 n);
BOOL INS_OperandIsFixedMemop (INS ins, UINT32 n);
BOOL INS_OperandIsAddressGenerator (INS ins, UINT32 n);
BOOL INS_OperandIsBranchDisplacement (INS ins, UINT32 n);
BOOL INS_OperandIsReg (INS ins, UINT32 n);
REG INS_OperandReg (INS ins, UINT32 n);
BOOL INS_OperandIsImmediate (INS ins, UINT32 n);
UINT64 INS_OperandImmediate (INS ins, UINT32 n);
BOOL INS_OperandIsImplicit (INS ins, UINT32 n);
UINT32 INS_OperandWidth (INS ins, UINT32 n);
BOOL INS_IsSyscall (INS ins);
//SYSCALL_STANDARD INS_SyscallStd (INS ins);
//RTN INS_Rtn (INS x);
INS INS_Next (INS x);
INS INS_Prev (INS x);
INS INS_Invalid (void);
BOOL INS_Valid (INS x);
ADDRINT INS_Address (INS ins);
USIZE INS_Size (INS ins);
ADDRINT INS_DirectBranchOrCallTargetAddress (INS ins);
ADDRINT INS_NextAddress (INS ins);


#endif
