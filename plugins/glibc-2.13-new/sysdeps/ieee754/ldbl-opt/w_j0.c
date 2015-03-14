#include <math_ldbl_opt.h>
#include <math/w_j0.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, j0, j0l, PEMU_LIBC_2_0);
compat_symbol (libm, y0, y0l, PEMU_LIBC_2_0);
#endif
