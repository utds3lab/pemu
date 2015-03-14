#include <math_ldbl_opt.h>
#include <sysdeps/ieee754/dbl-64/s_isinf.c>
#ifndef IS_IN_libm
# if LONG_DOUBLE_COMPAT(libc, PEMU_LIBC_2_0)
compat_symbol (libc, __isinf, __isinfl, PEMU_LIBC_2_0);
compat_symbol (libc, isinf, isinfl, PEMU_LIBC_2_0);
# endif
#endif
