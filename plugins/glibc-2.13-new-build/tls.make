# Generated from tls.make.c by Makerules.
use-thread = yes
common-generated += tls.make
$(common-objpfx)tls.make: $(..)tls.make.c $(..)include/libc-symbols.h \
 $(common-objpfx)config.h \
 $(..)sysdeps/wordsize-32/symbol-hacks.h $(..)include/tls.h \
 $(..)nptl/sysdeps/i386/i686/tls.h $(..)nptl/sysdeps/i386/i686/../tls.h \
 $(..)nptl/sysdeps/unix/sysv/linux/i386/i686/dl-sysdep.h \
 /usr/lib/gcc/i686-linux-gnu/4.6.1/include/stdbool.h \
 /usr/lib/gcc/i686-linux-gnu/4.6.1/include/stddef.h \
 $(..)sysdeps/generic/stdint.h $(..)include/features.h $(..)include/sys/cdefs.h \
 $(..)misc/sys/cdefs.h $(..)sysdeps/wordsize-32/bits/wordsize.h $(..)include/gnu/stubs.h \
 $(..)sysdeps/unix/sysv/linux/i386/bits/wchar.h $(..)include/stdlib.h \
 $(..)stdlib/stdlib.h $(..)sysdeps/unix/sysv/linux/bits/waitflags.h \
 $(..)bits/waitstatus.h $(..)include/endian.h $(..)string/endian.h \
 $(..)sysdeps/i386/bits/endian.h $(..)sysdeps/i386/bits/byteswap.h \
 $(..)include/xlocale.h $(..)locale/xlocale.h $(..)include/sys/types.h $(..)posix/sys/types.h \
 $(..)bits/types.h $(..)bits/typesizes.h $(..)include/time.h $(..)time/time.h \
 $(..)include/sys/select.h $(..)misc/sys/select.h $(..)sysdeps/i386/bits/select.h \
 $(..)sysdeps/unix/sysv/linux/bits/sigset.h $(..)bits/time.h \
 $(..)sysdeps/unix/sysv/linux/sys/sysmacros.h \
 $(..)nptl/sysdeps/unix/sysv/linux/i386/bits/pthreadtypes.h $(..)include/alloca.h \
 $(..)stdlib/alloca.h $(..)sysdeps/i386/stackinfo.h $(..)include/elf.h $(..)elf/elf.h \
 $(..)sysdeps/generic/dl-dtprocnum.h $(..)nptl/sysdeps/pthread/allocalim.h \
 $(..)include/limits.h \
 /usr/lib/gcc/i686-linux-gnu/4.6.1/include-fixed/limits.h \
 $(..)include/bits/posix1_lim.h $(..)posix/bits/posix1_lim.h \
 $(..)nptl/sysdeps/unix/sysv/linux/bits/local_lim.h \
 /usr/include/linux/limits.h $(..)include/bits/posix2_lim.h \
 $(..)posix/bits/posix2_lim.h $(..)include/bits/xopen_lim.h \
 $(common-objpfx)bits/stdio_lim.h \
 $(..)include/sys/stat.h $(..)io/sys/stat.h $(..)sysdeps/unix/sysv/linux/bits/stat.h \
 $(..)nptl/sysdeps/pthread/list.h $(..)sysdeps/unix/sysv/linux/i386/sysdep.h \
 $(..)sysdeps/unix/i386/sysdep.h $(..)sysdeps/unix/sysdep.h \
 $(..)sysdeps/generic/sysdep.h $(..)sysdeps/unix/sysv/linux/sys/syscall.h \
 /usr/include/i386-linux-gnu/asm/unistd.h \
 /usr/include/i386-linux-gnu/asm/unistd_32.h $(..)sysdeps/i386/sysdep.h \
 $(..)sysdeps/generic/bp-sym.h $(..)sysdeps/i386/bp-asm.h \
 $(..)sysdeps/unix/sysv/linux/kernel-features.h $(..)nptl/descr.h $(..)include/sched.h \
 $(..)posix/sched.h $(..)sysdeps/unix/sysv/linux/bits/sched.h $(..)include/setjmp.h \
 $(..)setjmp/setjmp.h $(..)sysdeps/i386/bits/setjmp.h $(..)sysdeps/i386/i686/hp-timing.h \
 $(..)include/string.h $(..)string/string.h $(..)sysdeps/i386/i486/bits/string.h \
 $(..)include/bits/string2.h $(..)string/bits/string2.h \
 $(..)sysdeps/unix/sysv/linux/sys/param.h /usr/include/linux/param.h \
 /usr/include/i386-linux-gnu/asm/param.h /usr/include/asm-generic/param.h \
 $(..)stdio-common/_itoa.h $(..)nptl/sysdeps/unix/sysv/linux/i386/lowlevellock.h \
 $(common-objpfx)tcb-offsets.h \
 $(..)nptl/sysdeps/i386/pthreaddef.h $(..)nptl/../nptl_db/thread_db.h \
 $(..)include/pthread.h $(..)nptl/sysdeps/pthread/pthread.h \
 $(..)sysdeps/unix/sysv/linux/i386/sys/procfs.h $(..)include/sys/time.h \
 $(..)time/sys/time.h $(..)sysdeps/unix/sysv/linux/i386/sys/user.h \
 $(..)sysdeps/generic/unwind.h $(..)include/resolv.h $(..)resolv/resolv.h \
 $(..)include/netinet/in.h $(..)inet/netinet/in.h $(..)include/sys/socket.h \
 $(..)socket/sys/socket.h $(..)include/sys/uio.h $(..)misc/sys/uio.h \
 $(..)sysdeps/unix/sysv/linux/bits/uio.h $(..)sysdeps/unix/sysv/linux/bits/socket.h \
 $(..)bits/sockaddr.h /usr/include/i386-linux-gnu/asm/socket.h \
 /usr/include/asm-generic/socket.h \
 /usr/include/i386-linux-gnu/asm/sockios.h \
 /usr/include/asm-generic/sockios.h $(..)sysdeps/unix/sysv/linux/bits/in.h

$(..)include/libc-symbols.h:

$(common-objpfx)config.h:

$(..)sysdeps/wordsize-32/symbol-hacks.h:

$(..)include/tls.h:

$(..)nptl/sysdeps/i386/i686/tls.h:

$(..)nptl/sysdeps/i386/i686/../tls.h:

$(..)nptl/sysdeps/unix/sysv/linux/i386/i686/dl-sysdep.h:

/usr/lib/gcc/i686-linux-gnu/4.6.1/include/stdbool.h:

/usr/lib/gcc/i686-linux-gnu/4.6.1/include/stddef.h:

$(..)sysdeps/generic/stdint.h:

$(..)include/features.h:

$(..)include/sys/cdefs.h:

$(..)misc/sys/cdefs.h:

$(..)sysdeps/wordsize-32/bits/wordsize.h:

$(..)include/gnu/stubs.h:

$(..)sysdeps/unix/sysv/linux/i386/bits/wchar.h:

$(..)include/stdlib.h:

$(..)stdlib/stdlib.h:

$(..)sysdeps/unix/sysv/linux/bits/waitflags.h:

$(..)bits/waitstatus.h:

$(..)include/endian.h:

$(..)string/endian.h:

$(..)sysdeps/i386/bits/endian.h:

$(..)sysdeps/i386/bits/byteswap.h:

$(..)include/xlocale.h:

$(..)locale/xlocale.h:

$(..)include/sys/types.h:

$(..)posix/sys/types.h:

$(..)bits/types.h:

$(..)bits/typesizes.h:

$(..)include/time.h:

$(..)time/time.h:

$(..)include/sys/select.h:

$(..)misc/sys/select.h:

$(..)sysdeps/i386/bits/select.h:

$(..)sysdeps/unix/sysv/linux/bits/sigset.h:

$(..)bits/time.h:

$(..)sysdeps/unix/sysv/linux/sys/sysmacros.h:

$(..)nptl/sysdeps/unix/sysv/linux/i386/bits/pthreadtypes.h:

$(..)include/alloca.h:

$(..)stdlib/alloca.h:

$(..)sysdeps/i386/stackinfo.h:

$(..)include/elf.h:

$(..)elf/elf.h:

$(..)sysdeps/generic/dl-dtprocnum.h:

$(..)nptl/sysdeps/pthread/allocalim.h:

$(..)include/limits.h:

/usr/lib/gcc/i686-linux-gnu/4.6.1/include-fixed/limits.h:

$(..)include/bits/posix1_lim.h:

$(..)posix/bits/posix1_lim.h:

$(..)nptl/sysdeps/unix/sysv/linux/bits/local_lim.h:

/usr/include/linux/limits.h:

$(..)include/bits/posix2_lim.h:

$(..)posix/bits/posix2_lim.h:

$(..)include/bits/xopen_lim.h:

$(common-objpfx)bits/stdio_lim.h:

$(..)include/sys/stat.h:

$(..)io/sys/stat.h:

$(..)sysdeps/unix/sysv/linux/bits/stat.h:

$(..)nptl/sysdeps/pthread/list.h:

$(..)sysdeps/unix/sysv/linux/i386/sysdep.h:

$(..)sysdeps/unix/i386/sysdep.h:

$(..)sysdeps/unix/sysdep.h:

$(..)sysdeps/generic/sysdep.h:

$(..)sysdeps/unix/sysv/linux/sys/syscall.h:

/usr/include/i386-linux-gnu/asm/unistd.h:

/usr/include/i386-linux-gnu/asm/unistd_32.h:

$(..)sysdeps/i386/sysdep.h:

$(..)sysdeps/generic/bp-sym.h:

$(..)sysdeps/i386/bp-asm.h:

$(..)sysdeps/unix/sysv/linux/kernel-features.h:

$(..)nptl/descr.h:

$(..)include/sched.h:

$(..)posix/sched.h:

$(..)sysdeps/unix/sysv/linux/bits/sched.h:

$(..)include/setjmp.h:

$(..)setjmp/setjmp.h:

$(..)sysdeps/i386/bits/setjmp.h:

$(..)sysdeps/i386/i686/hp-timing.h:

$(..)include/string.h:

$(..)string/string.h:

$(..)sysdeps/i386/i486/bits/string.h:

$(..)include/bits/string2.h:

$(..)string/bits/string2.h:

$(..)sysdeps/unix/sysv/linux/sys/param.h:

/usr/include/linux/param.h:

/usr/include/i386-linux-gnu/asm/param.h:

/usr/include/asm-generic/param.h:

$(..)stdio-common/_itoa.h:

$(..)nptl/sysdeps/unix/sysv/linux/i386/lowlevellock.h:

$(common-objpfx)tcb-offsets.h:

$(..)nptl/sysdeps/i386/pthreaddef.h:

$(..)nptl/../nptl_db/thread_db.h:

$(..)include/pthread.h:

$(..)nptl/sysdeps/pthread/pthread.h:

$(..)sysdeps/unix/sysv/linux/i386/sys/procfs.h:

$(..)include/sys/time.h:

$(..)time/sys/time.h:

$(..)sysdeps/unix/sysv/linux/i386/sys/user.h:

$(..)sysdeps/generic/unwind.h:

$(..)include/resolv.h:

$(..)resolv/resolv.h:

$(..)include/netinet/in.h:

$(..)inet/netinet/in.h:

$(..)include/sys/socket.h:

$(..)socket/sys/socket.h:

$(..)include/sys/uio.h:

$(..)misc/sys/uio.h:

$(..)sysdeps/unix/sysv/linux/bits/uio.h:

$(..)sysdeps/unix/sysv/linux/bits/socket.h:

$(..)bits/sockaddr.h:

/usr/include/i386-linux-gnu/asm/socket.h:

/usr/include/asm-generic/socket.h:

/usr/include/i386-linux-gnu/asm/sockios.h:

/usr/include/asm-generic/sockios.h:

$(..)sysdeps/unix/sysv/linux/bits/in.h:
