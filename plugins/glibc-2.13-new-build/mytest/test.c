#include<stdio.h>
#include<dlfcn.h>
void * handle;
int introspect_enter_PEMU()
{
	return 192;
}

int main(int argc, char *argv[])
{
	handle = dlopen("./plugin.so",RTLD_NOW);
	if(handle==NULL)
	   printf("error:%s\n", dlerror());
	int (*fn)() = dlsym(handle, "init_main");
	if(fn!=NULL)
		printf("getpid is %d\n", fn());
	else
		printf("error function:%s\n", dlerror());

	return 0;
}
