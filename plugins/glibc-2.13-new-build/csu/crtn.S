	.file	"initfini.c"
#APP
	
#include "defs.h"
	
/*@HEADER_ENDS*/
/*@_init_EPILOG_BEGINS*/
# 0 "" 2
# 101 "../sysdeps/generic/initfini.c" 1
	.section .init
# 0 "" 2
#NO_APP
	addl	$8, %esp
	popl	%ebx
	ret
#APP
	END_INIT
	
/*@_init_EPILOG_ENDS*/
/*@_fini_EPILOG_BEGINS*/
# 0 "" 2
# 130 "../sysdeps/generic/initfini.c" 1
	.section .fini
# 0 "" 2
#NO_APP
	addl	$8, %esp
	popl	%ebx
	ret
#APP
	END_FINI
	
/*@_fini_EPILOG_ENDS*/
/*@TRAILER_BEGINS*/
	.weak	__gmon_start__
	.ident	"GCC: (Ubuntu/Linaro 4.6.1-9ubuntu3) 4.6.1"
	.section	.note.GNU-stack,"",@progbits
