#include <math_ldbl_opt.h>
#include <math/w_remainder.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, __remainder, remainderl, PEMU_LIBC_2_0);
#endif
