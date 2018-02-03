TOOLS = $(wildcard bin/*)
PREFIX ?= /usr/local
SUDO ?=

INSTALLED_TOOLS := $(patsubst %,$(PREFIX)/%,$(TOOLS))

install: $(INSTALLED_TOOLS) $(PREFIX)/bin/sga-guard

$(PREFIX/)bin/sga-guard : ./src/github.com/StanfordSNR/guardian-agent/scripts/sga-guard
	$(SUDO) cp -a $< $@

$(PREFIX)/bin/% : bin/%
	$(SUDO) cp -a $< $@

build:
	./tools.bash

verify:
	@echo TOOLS=$(TOOLS)
	@echo INSTALLED_TOOLS=$(INSTALLED_TOOLS)
