#include <math_ldbl_opt.h>
#include <math/w_lgamma.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, __lgamma, lgammal, PEMU_LIBC_2_0);
compat_symbol (libm, __gamma, gammal, PEMU_LIBC_2_0);
#endif
