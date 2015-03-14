#include <math_ldbl_opt.h>
#include <math/w_sinh.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, __sinh, sinhl, PEMU_LIBC_2_0);
#endif
