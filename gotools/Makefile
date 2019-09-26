TOOLS = $(wildcard bin/*)
PREFIX ?= $$HOME/.local
SUDO ?=

INSTALLED_TOOLS := $(patsubst %,$(PREFIX)/%,$(TOOLS))

install: $(INSTALLED_TOOLS) 

$(PREFIX)/bin/%: bin/% | $(PREFIX)
	$(SUDO) cp -a $< $@

build:
	./tools.bash

verify:
	@echo TOOLS=$(TOOLS)
	@echo INSTALLED_TOOLS=$(INSTALLED_TOOLS)

$(PREFIX):
	@mkdir -p $@
