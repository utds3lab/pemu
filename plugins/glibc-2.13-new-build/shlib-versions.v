mips.*-.*-linux.* libpthread=0 PEMU_LIBC_2.0 PEMU_LIBC_2.2
sparc64.*-.*-linux.* libpthread=0 PEMU_LIBC_2.2
sh.*-.*-linux.* libpthread=0 PEMU_LIBC_2.2
ia64.*-.*-linux.* libpthread=0 PEMU_LIBC_2.2
hppa.*-.*-linux.* libpthread=0 PEMU_LIBC_2.2
s390x-.*-linux.* libpthread=0 PEMU_LIBC_2.2
cris-.*-linux.* libpthread=0 PEMU_LIBC_2.2
x86_64-.*-linux.* libpthread=0 PEMU_LIBC_2.2.5
powerpc64-.*-linux.* libpthread=0 PEMU_LIBC_2.3
.*-.*-linux.* libpthread=0
.*-.*-.* libcidn=1
.*-.*-linux.* libthread_db=1
s390x-.*-linux.* DEFAULT PEMU_LIBC_2.2
cris-.*-linux.* DEFAULT PEMU_LIBC_2.2
x86_64-.*-linux.* DEFAULT PEMU_LIBC_2.2.5
powerpc64-.*-linux.* DEFAULT PEMU_LIBC_2.3
.*-.*-gnu-gnu.* DEFAULT PEMU_LIBC_2.2.6
x86_64-.*-.* WORDSIZE32 i686-@VENDOR@-@OS@
i.86-.*-.* WORDSIZE64 x86_64-@VENDOR@-@OS@
s390x-.*-.* WORDSIZE32 s390-@VENDOR@-@OS@
s390-.*-.* WORDSIZE64 s390x-@VENDOR@-@OS@
powerpc64-.*-.* WORDSIZE32 powerpc-@VENDOR@-@OS@
powerpc.*-.*-.* WORDSIZE64 powerpc64-@VENDOR@-@OS@
sparc64.*-.*-.* WORDSIZE32 sparc-@VENDOR@-@OS@
sparc.*-.*-.* WORDSIZE64 sparc64-@VENDOR@-@OS@
sparc64.*-.*-.* ABI sparc64-@OS@
sparc.*-.*-.* ABI sparc-@OS@
sparc64.*-.*-linux.* libm=6 PEMU_LIBC_2.2
alpha.*-.*-linux.* libm=6.1
ia64-.*-linux.* libm=6.1 PEMU_LIBC_2.2
sh.*-.*-linux.* libm=6 PEMU_LIBC_2.2
.*-.*-linux.* libm=6
.*-.*-gnu-gnu.* libm=6
alpha.*-.*-linux.* libc=6.1
ia64-.*-linux.* libc=6.1 PEMU_LIBC_2.2
sh.*-.*-linux.* libc=6 PEMU_LIBC_2.2
sparc64.*-.*-linux.* libc=6 PEMU_LIBC_2.2
.*-.*-linux.* libc=6
.*-.*-gnu-gnu.* libmachuser=1
.*-.*-gnu-gnu.* libhurduser=0.3
.*-.*-gnu-gnu.* libc=0.3
i.86-.*-linux.* ld=ld-linux.so.2
sparc64.*-.*-linux.* ld=ld-linux.so.2 PEMU_LIBC_2.2
sparc.*-.*-linux.* ld=ld-linux.so.2
alpha.*-.*-linux.* ld=ld-linux.so.2
sh.*-.*-linux.* ld=ld-linux.so.2 PEMU_LIBC_2.2
ia64-.*-linux.* ld=ld-linux-ia64.so.2 PEMU_LIBC_2.2
s390x-.*-linux.* ld=ld64.so.1 PEMU_LIBC_2.2
powerpc64.*-.*-linux.* ld=ld64.so.1 PEMU_LIBC_2.3
cris-.*-linux.* ld=ld.so.1 PEMU_LIBC_2.2
x86_64-.*-linux.* ld=ld-linux-x86-64.so.2 PEMU_LIBC_2.2.5
.*-.*-.* ld=ld.so.1
alpha.*-.*-linux.* libdl=2.1
.*-.*-.* libdl=2
alpha.*-.*-linux.* libutil=1.1
.*-.*-.* libutil=1
alpha.*-.*-linux.* libresolv=2.1
.*-.*-.* libresolv=2
.*-.*-.* libnss_files=2
.*-.*-.* libnss_dns=2
.*-.*-.* libnss_compat=2
.*-.*-.* libnss_nis=2
.*-.*-.* libnss_nisplus=2
.*-.*-.* libnss_ldap=2
.*-.*-.* libnss_hesiod=2
.*-.*-.* libnss_test1=2
alpha.*-.*-linux.* libnsl=1.1
.*-.*-.* libnsl=1
alpha.*-.*-linux.* libcrypt=1.1
.*-.*-.* libcrypt=1
alpha.*-.*-linux.* libBrokenLocale=1.1
ia64-.*-.* libBrokenLocale=1 PEMU_LIBC_2.2
sh.*-.*-.* libBrokenLocale=1 PEMU_LIBC_2.2
sparc64.*-.*-.* libBrokenLocale=1 PEMU_LIBC_2.2
.*-.*-.* libBrokenLocale=1
.*-.*-.* librt=1
.*-.*-.* libanl=1
