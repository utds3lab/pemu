#include "pin_qemu.h"

//#include <stdarg.h>
//#include <stdlib.h>
//#include <stdio.h>
//#include <string.h>
//#include "qemu-pemu.h"
#include <inttypes.h>
#include "cpu.h"
#include "reg32.h"
#include "context_manipulation_api.h"

static unsigned long * pin_regmapping[REG_LAST]; //pin to qemu

void init_pin_regmapping(void *env)
{
	CPUX86State *cpu_single_env = (CPUX86State*)env;
	pin_regmapping[REG_EAX_] = &cpu_single_env->regs[R_EAX];
	pin_regmapping[REG_ECX_] = &cpu_single_env->regs[R_ECX];
	pin_regmapping[REG_EDX_] = &cpu_single_env->regs[R_EDX];
	pin_regmapping[REG_EBX_] = &cpu_single_env->regs[R_EBX];
	pin_regmapping[REG_ESP_] = &cpu_single_env->regs[R_ESP];
	pin_regmapping[REG_EBP_] = &cpu_single_env->regs[R_EBP];
	pin_regmapping[REG_ESI_] = &cpu_single_env->regs[R_ESI];
	pin_regmapping[REG_EDI_] = &cpu_single_env->regs[R_EDI];
	
	pin_regmapping[REG_EIP_] = &cpu_single_env->eip;
	pin_regmapping[REG_EFLAGS_] = &cpu_single_env->eflags;

	//TODO: Add more mapping
	
	pin_context = pin_regmapping;
}
