CURRENT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

export DESTDIR ?= $(HOME)/.local

.PHONY: install
install:
	@ln -svf $(CURRENT_DIR)/bin/keymap $(DESTDIR)/bin
	@ln -svf $(CURRENT_DIR)/bin/dvorak $(DESTDIR)/bin
	@ln -svf $(CURRENT_DIR)/bin/swedish $(DESTDIR)/bin
	@ln -svf $(CURRENT_DIR)/bin/english $(DESTDIR)/bin
