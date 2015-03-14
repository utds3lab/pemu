#include <math_ldbl_opt.h>
#include <sysdeps/ieee754/dbl-64/s_copysign.c>
#ifdef IS_IN_libm
# if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, __copysign, copysignl, PEMU_LIBC_2_0);
# endif
#elif LONG_DOUBLE_COMPAT(libc, PEMU_LIBC_2_0)
compat_symbol (libc, __copysign, copysignl, PEMU_LIBC_2_0);
#endif
