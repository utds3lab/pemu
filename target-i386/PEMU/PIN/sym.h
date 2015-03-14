/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#ifndef SYM_H
#define SYM_H

#include "basic_types.h"
#include "pin_objs.h"

typedef enum {
	UNDECORATION_COMPLETE,
	UNDECORATION_NAME_ONLY 
} UNDECORATION;


SYM SYM_Next (SYM x);
SYM SYM_Prev (SYM x);
VOID SYM_Name (SYM x, CHAR *name);
SYM SYM_Invalid (VOID);
BOOL SYM_Valid (SYM x);
BOOL SYM_Dynamic (SYM x);
BOOL SYM_OriginatedFromIFunc (SYM x);
BOOL SYM_IFunc (SYM x);
ADDRINT SYM_Value (SYM x);
UINT32 SYM_Index (SYM x);
ADDRINT SYM_Address (SYM x);
//string PIN_UndecorateSymbolName (const string &symbolName, UNDECORATION style)


#endif
