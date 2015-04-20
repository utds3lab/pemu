#include "pin.h"
#include "stdio.h"


int icount = 0;

VOID docount(void) { 
	icount++;
}

VOID Fini(INT32 code, VOID *v)
{
	printf("total:%d\n", icount);
}


VOID Instruction(INS ins, VOID *v)
{
	inst_print(ins);
	if(INS_IsDirectBranchOrCall(ins)) {
	printf("INS_Category: %s\n	\
			INS_Extension: %s\n	\
			INS_Size: %d\n	\
			INS_IsMemoryRead: %d\n	\
			INS_MemoryReadSize: %d\n	\
			INS_IsMemoryWrite: %d\n	\
			INS_MemoryWriteSize: %d\n	\
			INS_HasFallThrough: %d\n	\
			INS_DirectBranchOrCallTargetAddress: %x\n", 
			xed_category_enum_t2str(INS_Category(ins)),
			xed_extension_enum_t2str(INS_Extension(ins)),
			INS_Size(ins),
			INS_IsMemoryRead(ins),
			INS_MemoryReadSize(ins),
			INS_IsMemoryWrite(ins),
			INS_MemoryWriteSize(ins),
			INS_HasFallThrough(ins),
			INS_DirectBranchOrCallTargetAddress(ins));
	}
	//if(INS_IsBranch(ins)) {
	//	INS_InsertCall(ins, IPOINT_BEFORE, 
	//			(AFUNPTR)docount, IARG_END);
	//}
	//INS_InsertCall(ins, IPOINT_BEFORE, 
	//			(AFUNPTR)docount, IARG_END);
}

int main(int argc, char * argv[])
{
	PIN_Init(argc, argv);

    INS_AddInstrumentFunction(Instruction, 0);

    PIN_StartProgram();

	PIN_AddFiniFunction(Fini, 0);	

    return 0;
}
