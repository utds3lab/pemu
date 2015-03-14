//#include <iostream>
//#include <fstream>
#include "pin.h"
#include<stdio.h>
#include<unistd.h>

VOID INS_InsertCall(INS ins, IPOINT action, AFUNPTR funptr, ...);


// The running count of instructions is kept here
// make it static to help the compiler optimize docount
static UINT64 icount = 0x80000000;

// This function is called before every instruction is executed
VOID docount(UINT64 *icount) 
{ 
	fprintf(stderr, "%llx\n", (*icount)++);
}
    
// Pin calls this function every time a new instruction is encountered
VOID Instruction(INS ins, VOID *v)
{
    // Insert a call to docount before every instruction, no arguments are passed
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)docount, &icount, IARG_END);
}

// This function is called when the application exits
VOID Fini(INT32 code, VOID *v)
{
	fprintf(stderr, "program exit()\n");
}

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 Usage()
{
	return 0;
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */
/*   argc, argv are the entire command line: pin -t <toolname> -- ...    */
/* ===================================================================== */

void init_main(int argc, char * argv[])
{
    // Initialize pin
    if (PIN_Init(argc, argv)) return Usage();

    // Register Instruction to be called to instrument instructions
    //INS_AddInstrumentFunction(Instruction, 0);

    // Register Fini to be called when the application exits

	//PIN_AddFiniFunction(Fini, 0);
    
	// Start the program, never returns
    //PIN_StartProgram();
	
	//introspect_enter_pemu();
	fprintf(stdout, "getppid %d\n", __getppid());
	fprintf(stdout, "Hello\n");
	return 0;	
}
