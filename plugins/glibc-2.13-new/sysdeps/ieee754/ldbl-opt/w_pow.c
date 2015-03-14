#include <math_ldbl_opt.h>
#include <math/w_pow.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, __pow, powl, PEMU_LIBC_2_0);
#endif
