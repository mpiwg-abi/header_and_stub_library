# -*- mode: makefile-gmake -*-
.PHONY: default
default: install

VERSION = 0

SCRIPT_C = mpicc mpicxx
HEADER_H = mpi.h
SOURCE_C = mpistubs.c
LIBNAME  = mpi_abi

SCRIPT_F   = mpifort
SOURCE_F   = mpi_f08.F90
MODF08NAME = mpi_f08
LIBF08NAME = mpif08_abi

PREFIX = .
BINDIR = bin
INCDIR = include
LIBDIR = lib

BUILD = build

LN = ln -f
LN_S = $(LN) -s
MKDIR = mkdir -p
RANLIB = ranlib

FC = gfortran ifx
FC := $(firstword $(foreach fc,$(FC), \
	$(if $(shell command -v $(fc) 2>/dev/null),$(fc))))

ifndef CFLAGS
ifeq ($(findstring gcc,$(CC)),gcc)
CFLAGS =  -Wall -Wextra -pedantic -std=c99
CFLAGS += -Wno-unused-parameter
endif
ifeq ($(findstring icx,$(CC)),icx)
CFLAGS =  -Wall -Wextra -pedantic -std=c99
CFLAGS += -Wno-unused-parameter
endif
endif

ifndef FFLAGS
ifeq ($(findstring gfortran,$(FC)),gfortran)
FFLAGS =  -Wall -Wextra -pedantic -std=f2018
FFLAGS += -Wno-c-binding-type
FFLAGS += -Wno-return-type
FFLAGS += -Wno-unused-dummy-argument
endif
ifeq ($(findstring ifx,$(FC)),ifx)
FFLAGS =  -warn all
FFLAGS += -diag-disable 6178
FFLAGS += -diag-disable 6843
FFLAGS += -diag-disable 7712
endif
endif

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
  SED_I = sed -i
  libfilename = lib$1.so.$2
  soname = -Wl,-soname,$1
endif
ifeq ($(UNAME_S),Darwin)
  SED_I = sed -i''
  libfilename = lib$1.$2.dylib
  soname = -Wl,-install_name,@rpath/$1
endif

LIBFILE = $(call libfilename,$(LIBNAME),$(VERSION))
LIBLINK = $(subst .$(VERSION),,$(LIBFILE))

MODF08FILE = $(MODF08NAME).mod
LIBF08FILE = $(call libfilename,$(LIBF08NAME),$(VERSION))
LIBF08LINK = $(subst .$(VERSION),,$(LIBF08FILE))

.SECONDEXPANSION: # to expand $$(@D)/.DIR

$(BUILD)/mpicc:   CC  := CC
$(BUILD)/mpicc:   cc  := cc
$(BUILD)/mpicc:   op  := cc
$(BUILD)/mpicc:   lib := $(LIBNAME)
$(BUILD)/mpicxx:  CC  := CXX
$(BUILD)/mpicxx:  cc  := c++
$(BUILD)/mpicxx:  op  := cxx
$(BUILD)/mpicxx:  lib := $(LIBNAME)
$(BUILD)/mpifort: CC  := FC
$(BUILD)/mpifort: cc  := $(FC)
$(BUILD)/mpifort: op  := fc
$(BUILD)/mpifort: lib := $(LIBF08NAME)
$(BUILD)/mpicc $(BUILD)/mpicxx $(BUILD)/mpifort : mpicc.in | $$(@D)/.DIR
	cp $< $@
	$(SED_I) -e 's:@includedir@:$(abspath $(PREFIX))/$(INCDIR):' $@
	$(SED_I) -e 's:@libdir@:$(abspath $(PREFIX))/$(LIBDIR):' $@
	$(SED_I) -e 's/@CC@/$(CC)/g' $@
	$(SED_I) -e 's/@cc@/$(cc)/g' $@
	$(SED_I) -e 's/@op@/$(op)/g' $@
	$(SED_I) -e 's/mpi_abi/$(lib)/g' $@ || true

$(BUILD)/$(LIBFILE): $(SOURCE_C) $(HEADER_H) | $$(@D)/.DIR
	$(LINK.c) -shared $(call soname,$(notdir $@)) -o $@ $<

$(BUILD)/$(MODF08FILE): $(BUILD)/$(LIBF08FILE);
$(BUILD)/$(LIBF08FILE): $(SOURCE_F) | $$(@D)/.DIR
	$(LINK.f) -shared $(call soname,$(notdir $@)) -J$(dir $@) -o $@ $<

%/.DIR :
	$(MKDIR) $(@D)
	touch $@

$(DESTDIR)$(PREFIX)/%/.:
	$(MKDIR) $@

.PHONY: build

ifdef CC
build: $(foreach f,$(SCRIPT_C),$(BUILD)/$(f))
build: $(BUILD)/$(LIBFILE)
endif

ifdef FC
build: $(foreach f,$(SCRIPT_F),$(BUILD)/$(f))
build: $(BUILD)/$(LIBF08FILE)
endif

DESTBINDIR = $(DESTDIR)$(PREFIX)/$(BINDIR)
DESTINCDIR = $(DESTDIR)$(PREFIX)/$(INCDIR)
DESTLIBDIR = $(DESTDIR)$(PREFIX)/$(LIBDIR)

ifdef CC
INSTALL_TARGETS_C = install-scripts-c install-include-c install-library-c
endif

ifdef FC
INSTALL_TARGETS_F = install-scripts-f install-include-f install-library-f
endif

.PHONY: install
install: $(INSTALL_TARGETS_C)
install: $(INSTALL_TARGETS_F)

.PHONY: install-scripts-c install-include-c install-library-c
install-scripts-c: $(foreach f,$(SCRIPT_C),$(BUILD)/$(f)) | $(DESTBINDIR)/.
	install -c -m 755 $^ $(DESTBINDIR)
install-include-c: $(HEADER_H) | $(DESTINCDIR)/.
	install -c -m 644 $^ $(DESTINCDIR)
install-library-c: $(BUILD)/$(LIBFILE) | $(DESTLIBDIR)/.
	install -c $^ $(DESTLIBDIR)
	cd $(DESTLIBDIR) && $(LN_S) $(LIBFILE) $(LIBLINK)

.PHONY: install-scripts-f install-include-f install-library-f
install-scripts-f: $(foreach f,$(SCRIPT_F),$(BUILD)/$(f)) | $(DESTBINDIR)/.
	install -c -m 755 $^ $(DESTBINDIR)
install-include-f: $(BUILD)/$(MODF08FILE) | $(DESTINCDIR)/.
	install -c -m 644 $^ $(DESTINCDIR)
install-library-f: $(BUILD)/$(LIBF08FILE) | $(DESTLIBDIR)/.
	install -c $^ $(DESTLIBDIR)
	cd $(DESTLIBDIR) && $(LN_S) $(LIBFILE) $(LIBLINK)

.PHONY: uninstall
uninstall: uninstall-scripts uninstall-include uninstall-library

.PHONY: uninstall-scripts uninstall-include uninstall-library
uninstall-scripts:
	-$(RM) $(foreach f,$(SCRIPT_C),$(DESTBINDIR)/$(f))
	-$(RM) $(foreach f,$(SCRIPT_F),$(DESTBINDIR)/$(f))
uninstall-include:
	-$(RM) $(foreach f,$(HEADER_H),$(DESTINCDIR)/$(f))
	-$(RM) $(foreach f,$(MODF08FILE),$(DESTINCDIR)/$(f))
uninstall-library:
	-$(RM) $(DESTLIBDIR)/$(LIBFILE)
	-$(RM) $(DESTLIBDIR)/$(LIBLINK)
	-$(RM) $(DESTLIBDIR)/$(LIBF08FILE)
	-$(RM) $(DESTLIBDIR)/$(LIBF08LINK)

.PHONY: clean
clean:
	-$(RM) -r build install bin include lib lib64
