#include <math_ldbl_opt.h>
#include <math/w_acos.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, __acos, acosl, PEMU_LIBC_2_0);
#endif
