make asm-CPPFLAGS="-D __i686=__i686" CFLAGS="-O2 -U_FORTIFY_SOURCE -fno-stack-protector"
if [ "$?" -ne "0" ]; then
    echo "=== build script: failed to make glibc ==="
    exit 1
fi
make asm-CPPFLAGS="-D __i686=__i686" install_root=$PREFIX install
if [ "$?" -ne "0" ]; then
    echo "=== build script: failed to install glibc ==="
    exit 1
fi
