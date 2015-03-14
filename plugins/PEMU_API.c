#include<unistd.h>
#include<stdio.h>

#include <sys/resource.h> 
#include <sys/time.h> 


#define _wrap(fun)	\
{	\
	int(*ptr)(void) = &fun;	\
	__asm__ __volatile__ (	\
			"leave\n\t"	\
			"jmp *%0\n\t"	\
			:	\
			:"r"(ptr));  \
	return 0;	\
}	

#define wrap(fun)	int PEMU_##fun (void)	\
	_wrap(fun)

wrap(getpid)
wrap(getppid)
wrap(getrlimit)

#if 0
int PEMU_getpid(void)
{
	int(*ptr)(void) = &getppid;
//	printf("%x\n", getppid());
//	printf("%p\n", ptr);
//#if 0
	__asm__ __volatile__ (
	 "leave\n\t"
	 "jmp *%0\n\t" 
	 :
	 :"r"(ptr)) ;
	return 0;
//#endif
}
#endif
