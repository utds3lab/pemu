/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#ifndef CONTEXT_MANIPULATION_API_H
#define CONTEXT_MANIPULATION_API_H

#include "basic_types.h"
#include "reg32.h"
#include "pin_qemu.h"

typedef enum { 
	PROCESSOR_STATE_X87,
	PROCESSOR_STATE_XMM,
	PROCESSOR_STATE_YMM,
	PROCESSOR_STATE_ZMM 
} PROCESSOR_STATE;

#define CONTEXT unsigned long *

extern CONTEXT * pin_context;


//BOOL PIN_SupportsProcessorState (PROCESSOR_STATE state);
//BOOL PIN_ContextContainsState (CONTEXT *ctxt, PROCESSOR_STATE state);
VOID PIN_SetContextRegval (CONTEXT *ctxt, REG reg, const UINT8 *val);
VOID PIN_GetContextRegval (const CONTEXT *ctxt, REG reg, UINT8 *val);
VOID PIN_SetContextReg (CONTEXT *ctxt, REG reg, ADDRINT val);
ADDRINT PIN_GetContextReg (const CONTEXT *ctxt, REG reg);
//VOID PIN_SetContextFPState (CONTEXT *ctxt, const FPSTATE *fpstate);
//VOID PIN_GetContextFPState (const CONTEXT *ctxt, FPSTATE *fpstate);
//VOID PIN_SaveContext (const CONTEXT *ctxtFrom, CONTEXT *ctxtTo);
//VOID PIN_ExecuteAt (const CONTEXT *ctxt);

#endif
