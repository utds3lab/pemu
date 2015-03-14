#include <math_ldbl_opt.h>
#include <math/w_j1.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, j1, j1l, PEMU_LIBC_2_0);
compat_symbol (libm, y1, y1l, PEMU_LIBC_2_0);
#endif
