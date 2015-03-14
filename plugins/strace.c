#include <stdio.h>
#include "pin.h"

VOID SysBefore(ADDRINT ip, ADDRINT num) {
	fprintf(stdout,"0x%lx: %ld\n",
		(unsigned long)ip, (long)num);
}

VOID SyscallEntry(THREADID threadIndex,
			CONTEXT*ctxt, SYSCALL_STANDARD std, VOID*v) {
	SysBefore(PIN_GetSyscallReturn(ctxt, std),
			PIN_GetSyscallNumber(ctxt, std));
}

VOID Fini(INT32 code, VOID*v) {
	printf("program exit\n");
}

INT32 Usage(VOID){
	return 0;
}

int main(int argc, char*argv[]) {
	PIN_AddSyscallEntryFunction(SyscallEntry, 0);
	PIN_AddFiniFunction(Fini, 0);
	PIN_StartProgram();
	return 0;
}
