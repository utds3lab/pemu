/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#ifndef CONTROLLING_AND_INITIALIZING
#define CONTROLLING_AND_INITIALIZING
#include "stdio.h"
#include "pin.h"

typedef VOID(* FINI_CALLBACK)(INT32 code, VOID *v);
//typedef VOID(* SYSCALL_ENTRY_CALLBACK)(THREADID threadIndex, CONTEXT *ctxt, SYSCALL_STANDARD std, VOID *v);
//typedef VOID(* SYSCALL_EXIT_CALLBACK)(THREADID threadIndex, CONTEXT *ctxt, SYSCALL_STANDARD std, VOID *v)



VOID PIN_InitSymbols (void);
//BOOL PIN_InitSymbolsAlt (SYMBOL_INFO_MODE mode);
//VOID PIN_AddFollowChildProcessFunction (FOLLOW_CHILD_PROCESS_CALLBACK fun, VOID *val);
BOOL PIN_IsProbeMode (void);
VOID PIN_LockClient (void);
VOID PIN_UnlockClient (void);
//VOID PIN_CallApplicationFunction (CONTEXT *ctxt, THREADID threadId, CALLINGSTD_TYPE cstype, AFUNPTR origFunPtr,...);
VOID PIN_AddFiniFunction (FINI_CALLBACK fun, VOID *val);
//VOID PIN_AddFetchFunction (FETCH_CALLBACK fun, VOID *val);
//VOID PIN_AddOutOfMemoryFunction (OUT_OF_MEMORY_CALLBACK fun, VOID *val);
//VOID PIN_AddDetachFunction (DETACH_CALLBACK fun, VOID *val);
//VOID PIN_AddThreadStartFunction (THREAD_START_CALLBACK fun, VOID *val);
//VOID PIN_AddThreadAttachProbedFunction (THREAD_ATTACH_PROBED_CALLBACK fun, VOID *val);
//VOID PIN_AddApplicationStartFunction (APPLICATION_START_CALLBACK fun, VOID *val);
//VOID PIN_AddThreadFiniFunction (THREAD_FINI_CALLBACK fun, VOID *val);
//VOID PIN_AddContextChangeFunction (CONTEXT_CHANGE_CALLBACK fun, VOID *val);
//VOID PIN_AddSyscallEntryFunction (SYSCALL_ENTRY_CALLBACK fun, VOID *val);
//VOID PIN_AddSyscallExitFunction (SYSCALL_EXIT_CALLBACK fun, VOID *val);
//BOOL PIN_AddSignalInterceptFunction (INT32 sig, SIGNAL_INTERCEPT_CALLBACK fun, VOID *val);
//VOID PIN_AddProbesInsertedFunction (PROBES_INSERTED_CALLBACK fun, VOID *val);
//BOOL PIN_AddForkFunction (FPOINT point, FORK_CALLBACK fun, VOID *val);
VOID PIN_RemoveInstrumentation (void);
VOID PIN_RemoveFiniFunctions (void);
VOID PIN_Detach (void);
VOID PIN_StartProgram (void);
VOID PIN_StartProgramProbed (void);
BOOL PIN_Init (INT32 argc, CHAR **argv);
CHAR * PIN_VmFullPath (void);
size_t PIN_SafeCopy (VOID *dst, const VOID *src, size_t size);


#endif
