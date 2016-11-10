#
# makefile for nerd
#
# usage:
#  make         --> nerd.hex / use keymap.h for user customized keymap
#  make factory --> nerd.hex / use keymap_factory.h for factory setup
#  make iic     --> nerd.iic / convert from hex for writing to eeprom

TARG = nerd.hex

CC = sdcc
AS = asx8051

CFLAGS = -I..
ASFLAGS = -losg
LDFLAGS = --code-loc 0x0000 --xram-loc 0x1C00

ifeq ($(MAKECMDGOALS),factory)
KEYMAP = keymap_factory.h
CFLAGS += -DKEYMAP_FACTORY
else
KEYMAP = keymap.h
endif

TIME = $(shell date +"%Y.%m.%d %H:%M:%S")

# target
.PHONY: all
all: nerd.hex

.PHONY: factory
factory: nerd.hex

.PHONY: iic
iic: nerd.iic


# rules
sdcc:
	mkdir $@

timestamp.h: initializer.asm usb_core.c nerd.c serial-test.c \
             nerd.h common.h ezusb_reg.h $(KEYMAP) serial-test.h
	@echo $(TIME) | nerd_timestamp -o $@

sdcc/initializer.rel: initializer.asm
	cd sdcc; cp -p ../$< .; \
	$(AS) $(ASFLAGS) $<; \
	rm $<

sdcc/usb_core.rel: usb_core.c timestamp.h common.h
	cd sdcc; cp -p ../$< .; \
	$(CC) $(CFLAGS) -c $<; \
	rm $<

sdcc/nerd.rel: nerd.c nerd.h common.h ezusb_reg.h $(KEYMAP)
	@echo "keymap: $(KEYMAP)"
	cd sdcc; cp -p ../$< .; \
	$(CC) $(CFLAGS) -c $<; \
	rm $<

sdcc/serial-test.rel: serial-test.c serial-test.h common.h ezusb_reg.h
	cd sdcc; cp -p ../$< .; \
	$(CC) $(CFLAGS) -c $<; \
	rm $<

sdcc/nerd.ihx: sdcc/nerd.rel sdcc/usb_core.rel sdcc/initializer.rel \
               sdcc/serial-test.rel
	cd sdcc; \
	$(CC) $(LDFLAGS) nerd.rel usb_core.rel initializer.rel serial-test.rel

nerd.hex: sdcc/nerd.ihx
	packihx < $< > $@

nerd.iic: nerd.hex
	Hex2bix -I $<

.PHONY: clean
clean:
	rm -f *~ *.hex *.iic TAGS
	cd sdcc; rm -rf *

