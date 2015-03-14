/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#include"trace.h"
#include "../pemu.h"
#include "pin.h"
VOID TRACE_AddInstrumentFunction(TRACE_INSTRUMENT_CALLBACK func, VOID *val)
{
	pemu_hook_funcs.trace_hook = func;
}

BBL TRACE_BblHead(TRACE trace)
{
	return trace->head;
}
