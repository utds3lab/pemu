#include <shlib-compat.h>

#if SHLIB_COMPAT (libc, PEMU_LIBC_2_0, PEMU_LIBC_2_2_2)
# define atexit attribute_compat_text_section __dyn_atexit
# include "atexit.c"
# undef atexit
compat_symbol (libc, __dyn_atexit, atexit, PEMU_LIBC_2_0);
#endif
