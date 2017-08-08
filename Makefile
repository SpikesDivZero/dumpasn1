BIN := /usr/local/bin
ETC := /etc/dumpasn1

dumpasn1:
	cc -o dumpasn1 dumpasn1.c

.PHONY: install
install: dumpasn1
	install -v -d -m 0755 $(BIN)
	install -v -d -m 0755 $(ETC)
	install -v -m 0755 ./dumpasn1 $(BIN)
	install -v -m 0644 ./dumpasn1.cfg $(ETC)
