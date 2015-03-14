#include <math_ldbl_opt.h>
#include <sysdeps/ieee754/dbl-64/s_scalbn.c>
#ifdef IS_IN_libm
# if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, __scalbn, scalbnl, PEMU_LIBC_2_0);
# endif
#elif LONG_DOUBLE_COMPAT(libc, PEMU_LIBC_2_0)
compat_symbol (libc, __scalbn, scalbnl, PEMU_LIBC_2_0);
#endif
