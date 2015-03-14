/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#ifndef SEC_H
#define SEC_H

#include "basic_types.h"
#include "pin_objs.h"
//#include "rtn.h"
//#include "img.h"

typedef enum {
	SEC_TYPE_INVALID,
	SEC_TYPE_UNUSED,
	SEC_TYPE_REGREL,
	SEC_TYPE_DYNREL,
	SEC_TYPE_EXEC,
	SEC_TYPE_DATA,
	SEC_TYPE_DYNAMIC,
	SEC_TYPE_OPD,
	SEC_TYPE_GOT,
	SEC_TYPE_STACK,
	SEC_TYPE_PLTOFF,
	SEC_TYPE_HASH,
	SEC_TYPE_LSDA,
	SEC_TYPE_UNWIND,
	SEC_TYPE_UNWINDINFO,
	SEC_TYPE_REGSYM,
	SEC_TYPE_DYNSYM,
	SEC_TYPE_DEBUG,
	SEC_TYPE_BSS,
	SEC_TYPE_SYMSTR,
	SEC_TYPE_DYNSTR,
	SEC_TYPE_SECSTR,
	SEC_TYPE_COMMENT,
	SEC_TYPE_LOOS,
	SEC_TYPE_USER,
	SEC_TYPE_LAST 
} SEC_TYPE;

IMG SEC_Img (SEC sec);
SEC SEC_Next (SEC sec);
SEC SEC_Prev (SEC sec);
SEC SEC_Invalid (VOID);
BOOL SEC_Valid (SEC x);
RTN SEC_RtnHead (SEC sec);
RTN SEC_RtnTail (SEC sec);
void SEC_Name (SEC sec); //const string & 	LEVEL_PINCLIENT::SEC_Name (SEC sec)
SEC_TYPE SEC_Type (SEC sec);
BOOL SEC_Mapped (SEC sec);
const VOID * SEC_Data (SEC sec);
ADDRINT SEC_Address (SEC sec);
BOOL SEC_IsReadable (SEC sec);
BOOL SEC_IsWriteable (SEC sec);
BOOL SEC_IsExecutable (SEC sec);
USIZE SEC_Size (SEC sec);


#endif
