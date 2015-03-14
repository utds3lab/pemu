#include<stdio.h>
extern FILE * PEMU_stderr;
int init_main()
{
	PEMU_fprintf(PEMU_stderr, "getpid %d \n", getppid());
	return 0;
}
