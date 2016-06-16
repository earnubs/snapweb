all: snappyd

.PHONY: deps
deps:
	go get launchpad.net/godeps
	godeps -u dependencies.tsv

snappyd: deps
	go build ./cmd/snappyd

install:
	install snappyd $(DESTDIR)/
