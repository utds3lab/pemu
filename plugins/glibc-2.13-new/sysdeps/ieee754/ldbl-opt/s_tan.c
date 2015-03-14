#include <math_ldbl_opt.h>
#include <sysdeps/ieee754/dbl-64/s_tan.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, tan, tanl, PEMU_LIBC_2_0);
#endif
