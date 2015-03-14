/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#include "controlling_and_initializing.h"
#include "../pemu.h"
#include "../INTROSPECT/sse.h"

VOID PIN_InitSymbols ()
{
}

//BOOL PIN_InitSymbolsAlt (SYMBOL_INFO_MODE mode)
//{
//}

//VOID PIN_AddFollowChildProcessFunction (FOLLOW_CHILD_PROCESS_CALLBACK fun, VOID *val)
//{
//}

BOOL PIN_IsProbeMode ()
{
}

VOID PIN_LockClient ()
{
}

VOID PIN_UnlockClient ()
{
}

//VOID PIN_CallApplicationFunction (CONTEXT *ctxt, THREADID threadId, CALLINGSTD_TYPE cstype, AFUNPTR origFunPtr,...)
//{
//}

VOID PIN_AddFiniFunction (FINI_CALLBACK fun, VOID *val)
{
	//fprintf(stderr, "ADD_PIN_FINI\n");
	pemu_hook_funcs.fini_hook = fun;
}

//VOID PIN_AddFetchFunction (FETCH_CALLBACK fun, VOID *val)
//{
//}

//VOID PIN_AddOutOfMemoryFunction (OUT_OF_MEMORY_CALLBACK fun, VOID *val)
//{
//}

//VOID PIN_AddDetachFunction (DETACH_CALLBACK fun, VOID *val)
//{
//}

//VOID PIN_AddThreadStartFunction (THREAD_START_CALLBACK fun, VOID *val)
//{
//}

//VOID PIN_AddThreadAttachProbedFunction (THREAD_ATTACH_PROBED_CALLBACK fun, VOID *val)
//{
//}

//VOID PIN_AddApplicationStartFunction (APPLICATION_START_CALLBACK fun, VOID *val)
//{
//}

//VOID PIN_AddThreadFiniFunction (THREAD_FINI_CALLBACK fun, VOID *val)
//{
//}

//VOID PIN_AddContextChangeFunction (CONTEXT_CHANGE_CALLBACK fun, VOID *val)
//{
//}

//VOID PIN_AddSyscallEntryFunction (SYSCALL_ENTRY_CALLBACK fun, VOID *val)
//{
//}

//VOID PIN_AddSyscallExitFunction (SYSCALL_EXIT_CALLBACK fun, VOID *val)
//{
//}

//BOOL PIN_AddSignalInterceptFunction (INT32 sig, SIGNAL_INTERCEPT_CALLBACK fun, VOID *val)
//{
//}

//VOID PIN_AddProbesInsertedFunction (PROBES_INSERTED_CALLBACK fun, VOID *val)
//{
//}

//BOOL PIN_AddForkFunction (FPOINT point, FORK_CALLBACK fun, VOID *val)
//{
//}


VOID PIN_RemoveInstrumentation ()
{
}

VOID PIN_RemoveFiniFunctions ()
{
}

VOID PIN_Detach ()
{
}

VOID PIN_StartProgram()
{
	//pemu_exec_stats.PEMU_start = 1;
	pemu_exec_stats.PEMU_introspect = 0;
	//sig_finish(0);
	post_sem_1();
}

BOOL PIN_Init (INT32 argc, CHAR **argv)
{
}

CHAR * PIN_VmFullPath ()
{
}

size_t PIN_SafeCopy (VOID *dst, const VOID *src, size_t size)
{
}
