/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#ifndef INST_INSTRUMENTATION_API_H
#define INST_INSTRUMENTATION_API_H

#include "basic_types.h"
#include "reg32.h"
#include <stdio.h>
#include "instrumentation_arguments.h"

typedef VOID(*INS_INSTRUMENT_CALLBACK)(INS ins, VOID *v);
VOID INS_AddInstrumentFunction(INS_INSTRUMENT_CALLBACK fun, VOID *val);
VOID INS_InsertCall(INS ins, IPOINT action, AFUNPTR funptr, ...);


#endif
