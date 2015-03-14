#include <math_ldbl_opt.h>
#include <sysdeps/ieee754/dbl-64/s_rint.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, __rint, rintl, PEMU_LIBC_2_0);
#endif
