	.file	"pt-initfini.c"
#APP
	
#include "defs.h"
	
/*@HEADER_ENDS*/
/*@_init_EPILOG_BEGINS*/
# 0 "" 2
# 87 "../nptl/sysdeps/pthread/pt-initfini.c" 1
	.section .init
# 0 "" 2
#NO_APP
	ret
#APP
	END_INIT
	
/*@_init_EPILOG_ENDS*/
/*@_fini_EPILOG_BEGINS*/
# 0 "" 2
# 116 "../nptl/sysdeps/pthread/pt-initfini.c" 1
	.section .fini
# 0 "" 2
#NO_APP
	popl	%ebx
	ret
#APP
	END_FINI
	
/*@_fini_EPILOG_ENDS*/
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
