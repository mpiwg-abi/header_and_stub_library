CC = cc
CPPFLAGS = -I../include
CFLAGS = -Wall $(CPPFLAGS)

all: libmpiabi.a libmpiabi.so

libmpiabi.a: libmpiabi_stubs.o
	ar -r $@ $^

libmpiabi.so: libmpiabi_stubs.o
	$(CC) -shared $^ -o $@

libmpiabi_stubs.o: libmpiabi_stubs.c
	$(CC) $(CFLAGS) -c $^ -o $@

clean:
	-rm -f libmpiabi.a libmpiabi.so libmpiabi_stubs.o

