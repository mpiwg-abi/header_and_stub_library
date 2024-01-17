CFLAGS = -Wall -Wextra -Wno-unused-parameter -pedantic
CPPFLAGS = -I../include

LN = ln -f
LN_S = $(LN) -s
RANLIB = ranlib

all: libmpi_abi.a libmpi_abi.so

libmpi_abi.a: mpistubs.o
	$(AR) -r $@ $^
	$(RANLIB) $@

libmpi_abi.so.0: mpistubs.o
	$(LINK.c) -shared -Wl,-soname=$@ $^ -o $@

libmpi_abi.so: libmpi_abi.so.0
	$(LN_S) $< $@

clean:
	-$(RM) libmpi_abi.a libmpi_abi.so.0 libmpi_abi.so mpistubs.o
