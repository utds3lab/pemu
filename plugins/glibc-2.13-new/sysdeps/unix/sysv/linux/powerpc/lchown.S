/* lchown system call.
   Copyright (C) 1998, 2002 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, write to the Free
   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
   02111-1307 USA.  */

/* Some old kernel headers call lchown() 'chown'.  The number is
   the same.  */

#include <sysdep.h>

#ifdef __NR_lchown
	PSEUDO (__lchown, lchown, 3)
#else
	PSEUDO (__lchown, chown, 3)
#endif
	ret
	PSEUDO_END(__lchown)
	weak_alias (__lchown, lchown)

#ifdef SHARED
#include <shlib-compat.h>
# if SHLIB_COMPAT (libc, PEMU_LIBC_2_0, PEMU_LIBC_2_1)
compat_symbol (libc, __lchown, chown, PEMU_LIBC_2_0)
# endif
#endif
