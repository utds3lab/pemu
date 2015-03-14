#include <math_ldbl_opt.h>
#include <math/s_significand.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, __significand, significandl, PEMU_LIBC_2_0);
#endif
