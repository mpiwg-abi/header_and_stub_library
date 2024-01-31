# -*- mode: makefile-gmake -*-
.PHONY: default
default: install

SCRIPTS  = mpicc mpicxx
SOURCE_H = mpi.h
SOURCE_C = mpistubs.c
LIBNAME  = mpi_abi
VERSION  = 0

PREFIX = .
BINDIR = bin
INCDIR = include
LIBDIR = lib

BUILD = build

LN = ln -f
LN_S = $(LN) -s
MKDIR = mkdir -p
RANLIB = ranlib

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
  SED_I = sed -i
  LIBFILE = lib$(LIBNAME).so.$(VERSION)
  soname = -Wl,-soname,$1
endif
ifeq ($(UNAME_S),Darwin)
  SED_I = sed -i''
  LIBFILE = lib$(LIBNAME).$(VERSION).dylib
  soname = -Wl,-install_name,@rpath/$1
endif
LIBLINK = $(subst .$(VERSION),,$(LIBFILE))

ifndef CFLAGS
CFLAGS = -Wall -Wextra -pedantic -Wno-unused-parameter
endif

.SECONDEXPANSION: # to expand $$(@D)/.DIR

$(BUILD)/mpicc:  CC := CC
$(BUILD)/mpicc:  cc := cc
$(BUILD)/mpicc:  op := cc
$(BUILD)/mpicxx: CC := CXX
$(BUILD)/mpicxx: cc := c++
$(BUILD)/mpicxx: op := cxx
$(BUILD)/mpic%: mpicc.in | $$(@D)/.DIR
	cp $< $@
	$(SED_I) -e 's:@includedir@:$(abspath $(PREFIX))/$(INCDIR):' $@
	$(SED_I) -e 's:@libdir@:$(abspath $(PREFIX))/$(LIBDIR):' $@
	$(SED_I) -e 's/@CC@/$(CC)/g' $@
	$(SED_I) -e 's/@cc@/$(cc)/g' $@
	$(SED_I) -e 's/@op@/$(op)/g' $@

$(BUILD)/$(LIBFILE): $(SOURCE_C) $(SOURCE_H) | $$(@D)/.DIR
	$(LINK.c) -shared $(call soname,$(notdir $@)) -o $@ $<

%/.DIR :
	$(MKDIR) $(@D)
	touch $@

$(DESTDIR)$(PREFIX)/%/.:
	$(MKDIR) $@

.PHONY: build
build: $(foreach f,$(SCRIPTS),$(BUILD)/$(f))
build: $(BUILD)/$(LIBFILE)

DESTBINDIR = $(DESTDIR)$(PREFIX)/$(BINDIR)
DESTINCDIR = $(DESTDIR)$(PREFIX)/$(INCDIR)
DESTLIBDIR = $(DESTDIR)$(PREFIX)/$(LIBDIR)

.PHONY: install install-scripts install-headers install-library
install: install-scripts install-headers install-library
install-scripts: $(foreach f,$(SCRIPTS),$(BUILD)/$(f)) | $(DESTBINDIR)/.
	install -c -m 755 $^ $(DESTBINDIR)
install-headers: $(SOURCE_H) | $(DESTINCDIR)/.
	install -c -m 644 $^ $(DESTINCDIR)
install-library: $(BUILD)/$(LIBFILE) | $(DESTLIBDIR)/.
	install -c $^ $(DESTLIBDIR)
	cd $(DESTLIBDIR) && $(LN_S) $(LIBFILE) $(LIBLINK)

.PHONY: uninstall uninstall-scripts uninstall-headers uninstall-library
uninstall: uninstall-scripts uninstall-headers uninstall-library
uninstall-scripts:
	-$(RM) -r $(foreach f,$(SCRIPTS),$(DESTBINDIR)/$(f))
uninstall-headers:
	-$(RM) -r $(foreach f,$(SOURCE_H),$(DESTINCDIR)/$(f))
uninstall-library:
	-$(RM) $(DESTLIBDIR)/$(LIBFILE)
	-$(RM) $(DESTLIBDIR)/$(LIBLINK)

.PHONY: clean
clean:
	-$(RM) -r build install bin include lib lib64
