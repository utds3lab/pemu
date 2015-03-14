/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#ifndef PIN_OBJS_H
#define PIN_OBJS_H
#include <xed-interface.h>

struct Ins;
struct Bbl;
struct Sym;
struct Rtn;
struct Sec;
struct Img;

//typedef xed_decoded_inst_t* INS;
typedef struct Ins* INS;
typedef struct Bbl* BBL;
typedef struct Sym* SYM;
typedef struct Rtn* RTN;
typedef struct Sec* SEC;
typedef struct Img* IMG;
typedef struct Trace * TRACE;

struct Ins{
	unsigned long pc;
	INS  next;
};

struct Bbl{
	unsigned long start_pc;
	uint32_t inst_count;
	uint32_t size;
	INS head;
	BBL next;
};

struct Trace{
	unsigned long trace_start;
	BBL  head;
};

struct Sym{
};

struct Rtn{
	char name[50];
	SEC sec;
};

struct Sec{
};

struct Img{
	int empty;
};

BBL  get_BBL(unsigned long pc);
TRACE  get_TRACE(unsigned long pc);
INS  get_INS(unsigned long  pc);

#endif
