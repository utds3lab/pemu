#include <complex.h>
#include <math_ldbl_opt.h>
#include <math/s_cproj.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_1)
compat_symbol (libm, __cproj, cprojl, PEMU_LIBC_2_1);
#endif
