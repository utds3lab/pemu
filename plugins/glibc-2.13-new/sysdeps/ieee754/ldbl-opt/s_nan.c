#include <math_ldbl_opt.h>
#include <math/s_nan.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_1)
compat_symbol (libm, __nan, nanl, PEMU_LIBC_2_1);
#endif
