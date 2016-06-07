all: snappyd www/public

.PHONY: deps
deps:
	go get launchpad.net/godeps
	godeps -u dependencies.tsv
	npm install

snappyd: deps
	go build ./cmd/snappyd

www/public: deps
	gulp

install:
	install snappyd $(DESTDIR)/
	mkdir $(DESTDIR)/www
	cp -r www/public www/templates $(DESTDIR)/www
