# *****************************************************************************
# * Copyright (c) 2011 IBM Corporation
# * All rights reserved.
# * This program and the accompanying materials
# * are made available under the terms of the BSD License
# * which accompanies this distribution, and is available at
# * http://www.opensource.org/licenses/bsd-license.php
# *
# * Contributors:
# *     IBM Corporation - initial implementation
# ****************************************************************************/

ifndef TOP
  TOP = $(shell while ! test -e make.rules; do cd ..  ; done; pwd)
  export TOP
endif
include $(TOP)/make.rules

CPPFLAGS = -I./ -I$(TOP)/clients/net-snk/include/ -I$(TOP)/lib/libc/include/ \
	   -I$(TOP)/lib/libhvcall  -I$(TOP)/lib/libvirtio -I$(INCLCMNDIR) \
	   -I$(INCLCMNDIR)/$(CPUARCH)

LIBS   = $(TOP)/lib/libc.a $(TOP)/lib/libhvcall.a $(TOP)/lib/libvirtio.a

SRCS   = module_entry.c virtio-net.c vn-pci.c

OBJS   = $(SRCS:%.c=%.o)

all: net_virtio.elf

net_virtio.elf: $(OBJS) $(LIBS)
	$(LD) $(LDFLAGS) $^ -o $@ -T virtio-net.lds -N -q
	$(STRIP) --strip-unneeded $@

clean:
	$(RM) -f *.o *.a *.i *.elf

distclean : clean
	rm -f Makefile.dep


# Rules for creating the dependency file:
depend:
	$(RM) Makefile.dep
	$(MAKE) Makefile.dep

Makefile.dep:
	$(CC) -M $(CFLAGS) $(CPPFLAGS) $(SRCS) > Makefile.dep

# Include dependency file if available:
-include Makefile.dep
