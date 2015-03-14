#include <math_ldbl_opt.h>
#include <sysdeps/ieee754/dbl-64/s_scalbln.c>
#ifdef IS_IN_libm
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_1)
compat_symbol (libm, __scalbln, scalblnl, PEMU_LIBC_2_1);
#endif
#elif LONG_DOUBLE_COMPAT(libc, PEMU_LIBC_2_1)
compat_symbol (libc, __scalbln, scalblnl, PEMU_LIBC_2_1);
#endif
