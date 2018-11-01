PREFIX = /usr/local

.PHONY: install
install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	for file in $(shell find $(CURDIR)/scripts -type f); do \
		f=$$(basename $$file); \
		cp $$file $(DESTDIR)$(PREFIX)/bin/$$f; \
	done

.PHONY: uninstall
uninstall:
	for file in $(shell find $(CURDIR)/scripts -type f); do \
		f=$$(basename $$file); \
		rm $(DESTDIR)$(PREFIX)/bin/$$f; \
	done

