/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#ifndef THREAD_API_H
#define THREAD_API_H

#include "basic_types.h"
typedef INT32 TLS_KEY;
typedef UINT32 THREADID;
typedef UINT64 PIN_THREAD_UID;
typedef UINT32 OS_THREAD_ID;
typedef VOID ROOT_THREAD_FUNC (VOID *arg);
typedef UINT32 OS_PROCESS_ID;


OS_THREAD_ID PIN_GetTid (void);
THREADID PIN_ThreadId (void);
PIN_THREAD_UID PIN_ThreadUid (void);
//OS_THREAD_ID PIN_GetParentTid ()
VOID PIN_Sleep (UINT32 milliseconds);
//VOID PIN_Yield ()
//THREADID PIN_SpawnInternalThread (ROOT_THREAD_FUNC *pThreadFunc, VOID *arg, size_t stackSize, PIN_THREAD_UID *pThreadUid)
VOID PIN_ExitThread (INT32 exitCode);
//BOOL PIN_IsApplicationThread ()
//BOOL PIN_WaitForThreadTermination (const PIN_THREAD_UID &threadUid, UINT32 milliseconds, INT32 *pExitCode)
//TLS_KEY PIN_CreateThreadDataKey (DESTRUCTFUN destruct_func)
//BOOL PIN_DeleteThreadDataKey (TLS_KEY key)
//BOOL PIN_SetThreadData (TLS_KEY key, const VOID *data, THREADID threadId)
//VOID * PIN_GetThreadData (TLS_KEY key, THREADID threadId)


#endif
