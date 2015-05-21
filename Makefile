PREFIX ?= /usr/local

install:
	cp search.sh $(PREFIX)/bin/search

uninstall:
	rm -f $(PREFIX)/bin/search
