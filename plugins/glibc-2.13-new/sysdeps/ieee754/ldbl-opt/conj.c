#include <complex.h>
#include <math_ldbl_opt.h>
#include <math/conj.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_1)
compat_symbol (libm, __conj, conjl, PEMU_LIBC_2_1);
#endif
