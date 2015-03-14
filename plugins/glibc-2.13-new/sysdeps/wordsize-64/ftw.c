#define ftw64 __rename_ftw64
#define nftw64 __rename_nftw64

#include "../../io/ftw.c"

#undef ftw64
#undef nftw64

weak_alias (ftw, ftw64)
strong_alias (__new_nftw, __new_nftw64)
versioned_symbol (libc, __new_nftw64, nftw64, PEMU_LIBC_2_3_3);

#if SHLIB_COMPAT(libc, PEMU_LIBC_2_1, PEMU_LIBC_2_3_3)
strong_alias (__old_nftw, __old_nftw64)
compat_symbol (libc, __old_nftw64, nftw64, PEMU_LIBC_2_1);
#endif
