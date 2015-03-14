include ../build/config-host.mak

DEFINES = -I. -I.. -I$(SRC_PATH) -I$(SRC_PATH)/i386-softmmu -I$(SRC_PATH)/target-i386 -I$(SRC_PATH)/fpu -I$(SRC_PATH)/target-i386/PEMU/PIN -D_GNU_SOURCE
XED_PATH = ../xed2/xed2-ia32
OBJ_PATH = ../build/i386-softmmu

CFLAGS = -Wall -g -fPIC -I$(XED_PATH)/include -w -MMD
LDFLAGS = -g -Wl,-E -shared -ldl -Wall
XED += -L$(XED_PATH)/lib -lxed -lm
#LIBC += -Wall -shared -Wl,--rpath=/home/XXX/pemu-master/plugins/glibc-2.13-new-build/  /home/XXX/pemu-master/plugins/glibc-2.13-new-build/libc.so -nostdinc
PEMUAPI = -L./PEMU_API.so

PLUGIN = strace.so inst_count.so

all: $(PLUGIN)
	
%.o: %.c 
	gcc $(CFLAGS) $(DEFINES) -c -o $@ $<

strace.so: strace.o
	gcc $(LDFLAGS) ./strace.o -o $@ $(XED)

inst_count.so: inst_count.o
	gcc $(LDFLAGS) ./inst_count.o -o $@ $(XED)

clean:
	rm -f *.o *.so *.d
