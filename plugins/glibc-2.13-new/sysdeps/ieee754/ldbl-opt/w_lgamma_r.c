#include <math_ldbl_opt.h>
#include <math/w_lgamma_r.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, __lgamma_r, lgammal_r, PEMU_LIBC_2_0);
#endif
