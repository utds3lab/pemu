path=/home/yufei/qemu-1.5.3_new/plugins/glibc-2.13-new-build

all: plugin.so
plugin.o: plugin.c
	gcc -Wall -fPIC -c $<
plugin.so: plugin.o
	gcc -shared -Wl,--rpath=$(path) $(path)/libc.so -nostdinc plugin.o -o plugin.so
clean:
	rm -f *.o *.so

