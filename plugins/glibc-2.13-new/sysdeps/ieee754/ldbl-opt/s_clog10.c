#include <complex.h>
#include <math_ldbl_opt.h>
#include <math/s_clog10.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_1)
compat_symbol (libm, __clog10, __clog10l, PEMU_LIBC_2_1);
compat_symbol (libm, clog10, clog10l, PEMU_LIBC_2_1);
#endif
