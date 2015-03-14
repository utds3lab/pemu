#include <math_ldbl_opt.h>
#include <sysdeps/powerpc/fpu/s_fma.S>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_1)
compat_symbol (libm, __fma, fmal, PEMU_LIBC_2_1)
#endif
