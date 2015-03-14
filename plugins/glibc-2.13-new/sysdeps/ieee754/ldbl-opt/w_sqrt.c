#include <math_ldbl_opt.h>
#include <math/w_sqrt.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, __sqrt, sqrtl, PEMU_LIBC_2_0);
#endif
