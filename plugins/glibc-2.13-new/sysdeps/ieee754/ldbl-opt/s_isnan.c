#include <math_ldbl_opt.h>
#include <sysdeps/ieee754/dbl-64/s_isnan.c>
#ifndef IS_IN_libm
# if LONG_DOUBLE_COMPAT(libc, PEMU_LIBC_2_0)
compat_symbol (libc, __isnan, __isnanl, PEMU_LIBC_2_0);
compat_symbol (libc, isnan, isnanl, PEMU_LIBC_2_0);
# endif
#endif
