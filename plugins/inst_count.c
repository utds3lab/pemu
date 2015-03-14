#include "pin.h"
#include "stdio.h"

VOID INS_InsertCall(INS ins, IPOINT action, AFUNPTR funptr, ...);

static unsigned long long  icount = 0;

VOID docount2(UINT32 c, uint32_t ip) { 
	icount += c;
}
    
VOID Trace(TRACE trace, VOID *v)
{
	BBL bbl;
    for (bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
    {
        BBL_InsertCall(bbl, IPOINT_BEFORE, (AFUNPTR)docount2, IARG_UINT32, BBL_NumIns(bbl),IARG_INST_PTR, IARG_END);
    }
}


VOID Fini(INT32 code, VOID *v)
{
	fprintf(stderr, "Inst count :%lld \n", icount);
}

void main(int argc, char * argv[])
{
    TRACE_AddInstrumentFunction(Trace, 0);

	PIN_AddFiniFunction(Fini, 0);
    
    PIN_StartProgram();
	
	return;	
}
