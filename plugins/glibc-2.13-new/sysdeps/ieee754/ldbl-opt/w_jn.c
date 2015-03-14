#include <math_ldbl_opt.h>
#include <math/w_jn.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, jn, jnl, PEMU_LIBC_2_0);
compat_symbol (libm, yn, ynl, PEMU_LIBC_2_0);
#endif
