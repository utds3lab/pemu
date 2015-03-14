#include<unistd.h>
//extern int introspect_enter_PEMU(int sysnum, int arg1, int arg2, int arg3,int arg4, int arg5, int arg6);

int printpid(void)
{
	return getpid();
}

int pemusysenter(int sysnum, int arg1, int arg2, int arg3,int arg4, int arg5, int arg6)
{
	//if(sysnum == 0x40) {
		//exit(11);
		//assert(0);
		//printf("100\n");
	//	return 0x100;
	//}else {
	//	syscallori(sysnum, arg1, arg2, arg3, arg4, arg5, arg6);
	//}
	return introspect_enter_PEMU(sysnum, arg1, arg2, arg3, arg4, arg5, arg6);
}
