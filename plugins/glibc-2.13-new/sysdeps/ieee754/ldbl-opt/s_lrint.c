#include <math_ldbl_opt.h>
#include <sysdeps/ieee754/dbl-64/s_lrint.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_1)
compat_symbol (libm, __lrint, lrintl, PEMU_LIBC_2_1);
#endif
