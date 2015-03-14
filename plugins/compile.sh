gcc -fPIC -Wall PEMU_API.c -c -o PEMU_API.o
gcc -shared -Wl,--rpath=/home/yufei/qemu-1.5.3_new/plugins/glibc-2.13-new-build/ /home/yufei/qemu-1.5.3_new/plugins/glibc-2.13-new-build/libc.so -nostdinc PEMU_API.o -o PEMU_API.so
gcc -shared test.c ./PEMU_API.so -o test.so

