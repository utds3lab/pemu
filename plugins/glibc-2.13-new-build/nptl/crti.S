	.file	"pt-initfini.c"
#APP
	
#include "defs.h"
	
/*@HEADER_ENDS*/
/*@_init_PROLOG_BEGINS*/
	.section .init
#NO_APP
	.section	.init,"ax",@progbits
	.p2align 4,,15
	.globl	_init
	.type	_init, @function
_init:
	call	__pthread_initialize_minimal_internal
#APP
# 82 "../nptl/sysdeps/pthread/pt-initfini.c" 1
	ALIGN
# 0 "" 2
# 83 "../nptl/sysdeps/pthread/pt-initfini.c" 1
	END_INIT
# 0 "" 2
# 85 "../nptl/sysdeps/pthread/pt-initfini.c" 1
	
/*@_init_PROLOG_ENDS*/
/*@_fini_PROLOG_BEGINS*/
	.section .fini
#NO_APP
	.section	.fini,"ax",@progbits
	.p2align 4,,15
	.globl	_fini
	.type	_fini, @function
_fini:
	pushl	%ebx
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
#APP
# 102 "../nptl/sysdeps/pthread/pt-initfini.c" 1
	ALIGN
# 0 "" 2
# 103 "../nptl/sysdeps/pthread/pt-initfini.c" 1
	END_FINI
# 0 "" 2
# 104 "../nptl/sysdeps/pthread/pt-initfini.c" 1
	
/*@_fini_PROLOG_ENDS*/
/*@TRAILER_BEGINS*/
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
	.globl	__i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
#NO_APP
	.hidden	__pthread_initialize_minimal_internal
	.ident	"GCC: (Ubuntu/Linaro 4.6.1-9ubuntu3) 4.6.1"
	.section	.note.GNU-stack,"",@progbits
