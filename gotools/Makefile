TOOLS = $(wildcard bin/*)
PREFIX ?= /usr/local
SUDO ?=

INSTALLED_TOOLS := $(patsubst %,$(PREFIX)/%,$(TOOLS))

install all: $(INSTALLED_TOOLS)

$(PREFIX)/bin/% : bin/%
	$(SUDO) cp -a $< $@

verify:
	@echo TOOLS=$(TOOLS)
	@echo INSTALLED_TOOLS=$(INSTALLED_TOOLS)
