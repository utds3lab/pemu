#include <math_ldbl_opt.h>
#include <math/w_log10.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, __log10, log10l, PEMU_LIBC_2_0);
#endif
