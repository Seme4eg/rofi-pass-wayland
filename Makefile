DESTDIR :=
PKGNAME := rofi-pass
PREFIX := /usr/local

.PHONY: install
install:
	install -Dm755 ${PKGNAME} $(DESTDIR)$(PREFIX)/bin/${PKGNAME}
	install -Dm644 config.example $(DESTDIR)$(PREFIX)/share/${PKGNAME}/config.example
	install -Dm644 README.org $(DESTDIR)$(PREFIX)/share/doc/${PKGNAME}/README.org

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/${PKGNAME}
	rm -f $(DESTDIR)$(PREFIX)/share/${PKGNAME}/config.example
	rm -f $(DESTDIR)$(PREFIX)/share/doc/${PKGNAME}/README.org
