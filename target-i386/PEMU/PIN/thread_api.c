#include "thread_api.h"
#include "../pemu.h"

OS_THREAD_ID PIN_GetTid (void)
{
	return pemu_exec_stats.PEMU_pid;
}

THREADID PIN_ThreadId (void)
{
	return pemu_exec_stats.PEMU_pid;//we consider it's the same as pid in guest os	
}

PIN_THREAD_UID PIN_ThreadUid (void)
{
	return pemu_exec_stats.PEMU_pid;//we consider it's the same as pid in guest os	
}

VOID PIN_Sleep (UINT32 milliseconds)
{
}

VOID PIN_ExitThread (INT32 exitCode)
{
}

