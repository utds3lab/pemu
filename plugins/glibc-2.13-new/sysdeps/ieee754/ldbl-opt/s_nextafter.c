#include <math_ldbl_opt.h>
#include <math/s_nextafter.c>
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_0)
compat_symbol (libm, __nextafter, nextafterl, PEMU_LIBC_2_0);
#endif
#if LONG_DOUBLE_COMPAT(libm, PEMU_LIBC_2_1)
strong_alias (__nextafter, __nexttowardd)
strong_alias (__nextafter, __nexttowardld)
#undef nexttoward
compat_symbol (libm, __nexttowardd, nexttoward, PEMU_LIBC_2_1);
compat_symbol (libm, __nexttowardld, nexttowardl, PEMU_LIBC_2_1);
#endif
