/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#ifndef PIN_TRACE_H
#define PIN_TRACE_H
#include"pin_objs.h"
#include "basic_types.h"
#include "instrumentation_arguments.h"
BBL TRACE_BblHead(TRACE trace);
typedef VOID(*TRACE_INSTRUMENT_CALLBACK)(TRACE trace, VOID *v);
VOID TRACE_AddInstrumentFunction(TRACE_INSTRUMENT_CALLBACK fun, VOID *val);
#if 0
	VOID 	TRACE_InsertIfCall (TRACE trace, IPOINT action, AFUNPTR funptr,...);
	VOID 	TRACE_InsertThenCall (TRACE trace, IPOINT action, AFUNPTR funptr,...);
	BBL 	TRACE_BblHead (TRACE trace);
	BBL 	TRACE_BblTail (TRACE trace);
	BOOL 	TRACE_Original (TRACE trace);
	ADDRINT  TRACE_Address (TRACE trace);
	USIZE 	TRACE_Size (TRACE trace);
	RTN 	TRACE_Rtn (TRACE trace);
	BOOL 	TRACE_HasFallThrough (TRACE trace);
	UINT32 	TRACE_NumBbl (TRACE trace);
	UINT32 	TRACE_NumIns (TRACE trace);
	USIZE 	TRACE_StubSize (TRACE trace);
#endif
#endif
