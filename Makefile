.PHONY: all

submake_files = $(shell find . -mindepth 1 -type f -name Makefile)

all: $(submake_files)

%/Makefile: FORCE
	$(MAKE) -C $*

FORCE:
