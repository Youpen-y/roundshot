# Makefile for roundshot
# Yang Yupeng 2025/08/12
# Usage:
#	sudo make or sudo make install

PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin

SCRIPT ?= roundshot.sh
TARGET ?= roundshot

SRCPATH := $(abspath $(CURDIR)/$(SCRIPT))
SYMLINK := $(BINDIR)/$(TARGET)

.PHONY: all install uninstall help

all: install

install:
	@echo "Installing roundshot symlink to $(SYMLINK)..."
	@if [ ! -f "$(SRCPATH)" ]; then \
		echo "\033[31mError\033[0m: script '$(SRCPATH)' not found."; \
		exit 1; \
	fi
	@mkdir -p $(dir $(SYMLINK))
	@chmod +x "$(SRCPATH)"
	@ln -sf "$(SRCPATH)" "$(SYMLINK)"
	@echo "\033[32mInstalled\033[0m: $(SYMLINK) -> $(SRCPATH)"

uninstall:
	@echo "Uninstalling $(SYMLINK) if it points to this repository..."
	@if [ -L "$(SYMLINK)" ]; then \
		# try to resolve absolute target (use readlink -f if available) \
		TARGET_PATH=$$(readlink -f "$(SYMLINK)" 2>/dev/null || readlink "$(SYMLINK)"); \
		if [ "$$TARGET_PATH" = "$(SRCPATH)" ]; then \
			rm -f "$(SYMLINK)"; \
			echo "Removed $(SYMLINK)"; \
		else \
			echo "Found symlink at $(SYMLINK) but it points to: $$TARGET_PATH"; \
			echo "Not removing to avoid deleting someone else's link."; \
			exit 1; \
		fi \
	else \
		echo "No symlink found at $(SYMLINK). Nothing to do."; \
	fi

help:
	@echo "Makefile targets:"
	@echo "  sudo make / make install      Create symlink $(SYMLINK) -> $(SRCPATH)"
	@echo "  sudo make uninstall           Remove the symlink if it points to this script"
	@echo "Variables you can override:"
	@echo "  PREFIX=/usr or /usr/local"
	@echo "  BINDIR=$(PREFIX)/bin"
	@echo "  SCRIPT=$(SCRIPT)    (script name in repo)"
	@echo "Examples:"
	@echo "  sudo make install"
	@echo "  sudo make PREFIX=/usr/local install"
	@echo "  sudo make uninstall"
