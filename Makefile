# Copyright (c) 2018 David Dahlberg <dyn+code@dahlberg.cologne>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

PREFIX   = /usr/local
BINDIR   = $(PREFIX)/bin
SHAREDIR = $(PREFIX)/share
MANDIR   = $(PREFIX)/man

all:

install:
	install -D -m 755 dropbear-copy-id $(BINDIR)
	install -D -m 644 dropbear-copy-id.1 $(MANDIR)/man1
	install -D -m 755 ssh2cisco $(BINDIR)
	install -D -m 644 ssh2cisco.1 $(MANDIR)/man1

uninstall:
	rm -f $(BINDIR)/dropbear-copy-id $(MANDIR)/man1/dropbear-copy-id.1
	rm -f $(BINDIR)/ssh2cisco $(MANDIR)/man1/ssh2cisco

test:
	mandoc -Wall,stop -Tlint dropbear-copy-id.1
	mandoc -Wall,stop -Tlint ssh2cisco.1
	@echo success 
