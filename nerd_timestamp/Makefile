#
# makefile for nerd_timestamp
#

TARG = nerd_timestamp.exe

CC = gcc
# CFLAGS = -nostdinc -I/usr/include/mingw
# CFLAGS = -I/usr/include/ -I/usr/local/include
CFLAGS = -I/usr/lib/gcc/i686-pc-cygwin3.4.4/include
# CFLAGS = -print-search-dirs

# target
.PHONY: all
all: $(TARG)

$(TARG): $(TARG:.exe=.c)
	$(CC) $(CFLAGS) -o $@ $<

.PHONY: clean
clean:
	rm -fr *.exe *.o

