PREFIX = $(HOME)/.local

install:
	mkdir -p $(PREFIX)/bin
	cp -f dmenuwifi $(PREFIX)/bin/dmenuwifi
	chmod 755 $(PREFIX)/bin/dmenuwifi

uninstall:
	rm -f $(PREFIX)/bin/dmenuwifi

.PHONY: install uninstall
