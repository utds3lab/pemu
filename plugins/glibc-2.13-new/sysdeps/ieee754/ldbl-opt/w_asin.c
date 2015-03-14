#include <math_ldbl_opt.h>
#include <math/w_asin.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, __asin, asinl, PEMU_LIBC_2_0);
#endif
