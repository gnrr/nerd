;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.5.0 #1020 (May  8 2005)
; This file generated Mon Aug 22 21:21:56 2005
;--------------------------------------------------------
	.module amikbd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl __sdcc_external_startup
	.globl _core_apply_reset_values
	.globl _SMOD1
	.globl _ET2
	.globl _TF2
	.globl _TR2
	.globl _TI_1
	.globl _RI_1
	.globl _TI_0
	.globl _RI_0
	.globl _ES1
	.globl _ES0
	.globl _EUSB
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _DPH1
	.globl _DPL1
	.globl _DPH0
	.globl _DPL0
	.globl _EICON
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _CKCON
	.globl _SBUF1
	.globl _SBUF0
	.globl _SCON1
	.globl _SCON0
	.globl _EIE
	.globl _MPAGE
	.globl _EXIF
	.globl _DPS
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _AUTODATA
	.globl _AUTOPTRL
	.globl _AUTOPTRH
	.globl _FASTXFR
	.globl _OUT07VAL
	.globl _IN07VAL
	.globl _I2DAT
	.globl _I2CS
	.globl _SETUPDAT
	.globl _SUDPTRL
	.globl _SUDPTRH
	.globl _TOGCTL
	.globl _USBCS
	.globl _USBBAV
	.globl _USBPAIR
	.globl _USBIEN
	.globl _USBIRQ
	.globl _OUT07IEN
	.globl _IN07IEN
	.globl _OUT07IRQ
	.globl _IN07IRQ
	.globl _ISOCTL
	.globl _PORTCCFG
	.globl _PORTBCFG
	.globl _PORTACFG
	.globl _PINSC
	.globl _OUTC
	.globl _OEC
	.globl _PINSB
	.globl _OUTB
	.globl _OEB
	.globl _PINSA
	.globl _OUTA
	.globl _OEA
	.globl _OUT4BC
	.globl _IN4BC
	.globl _OUT4CS
	.globl _IN4CS
	.globl _OUT4BUF
	.globl _IN4BUF
	.globl _OUT3BC
	.globl _OUT3CS
	.globl _IN3BC
	.globl _IN3CS
	.globl _OUT3BUF
	.globl _IN3BUF
	.globl _OUT2BUF
	.globl _OUT2CS
	.globl _OUT2BC
	.globl _IN2CS
	.globl _IN2BC
	.globl _IN2BUF
	.globl _OUT1BC
	.globl _OUT1CS
	.globl _OUT1BUF
	.globl _IN1BC
	.globl _IN1BUF
	.globl _IN1CS
	.globl _OUT0BC
	.globl _OUT0BUF
	.globl _IN0BC
	.globl _IN0BUF
	.globl _EP0CS
	.globl _kbd_idle_mode
	.globl _kbd_new_keys
	.globl _kbd_idle_counter
	.globl _kbd_idle_duration
	.globl _key_buffer
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_DPS	=	0x0086
_EXIF	=	0x0091
_MPAGE	=	0x0092
_EIE	=	0x00e8
_SCON0	=	0x0098
_SCON1	=	0x00c0
_SBUF0	=	0x0099
_SBUF1	=	0x00c1
_CKCON	=	0x008e
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_EICON	=	0x00d8
_DPL0	=	0x0082
_DPH0	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
;--------------------------------------------------------
; special function bits 
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_EUSB	=	0x00e8
_ES0	=	0x00ac
_ES1	=	0x00ae
_RI_0	=	0x0098
_TI_0	=	0x0099
_RI_1	=	0x00c0
_TI_1	=	0x00c1
_TR2	=	0x00ca
_TF2	=	0x00cf
_ET2	=	0x00ad
_SMOD1	=	0x00df
;--------------------------------------------------------
; overlayable register banks 
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_2	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_key_buffer::
	.ds 8
_kbd_idle_duration::
	.ds 1
_kbd_idle_counter::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_kbd_new_keys::
	.ds 1
_kbd_idle_mode::
	.ds 1
_caps_operated:
	.ds 1
_caps_send_release:
	.ds 1
_amikbd_comm_parse_keycode_1_1::
	.ds 1
_timer2_isr_kbd_send_report_1_1::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_EP0CS	=	0x7fb4
_IN0BUF	=	0x7f00
_IN0BC	=	0x7fb5
_OUT0BUF	=	0x7ec0
_OUT0BC	=	0x7fc5
_IN1CS	=	0x7fb6
_IN1BUF	=	0x7e80
_IN1BC	=	0x7fb7
_OUT1BUF	=	0x7e40
_OUT1CS	=	0x7fc6
_OUT1BC	=	0x7fc7
_IN2BUF	=	0x7e00
_IN2BC	=	0x7fb9
_IN2CS	=	0x7fb8
_OUT2BC	=	0x7fc9
_OUT2CS	=	0x7fc8
_OUT2BUF	=	0x7dc0
_IN3BUF	=	0x7d80
_OUT3BUF	=	0x7d40
_IN3CS	=	0x7fba
_IN3BC	=	0x7fbb
_OUT3CS	=	0x7fca
_OUT3BC	=	0x7fcb
_IN4BUF	=	0x7d00
_OUT4BUF	=	0x7cc0
_IN4CS	=	0x7fbc
_OUT4CS	=	0x7fcc
_IN4BC	=	0x7fbd
_OUT4BC	=	0x7fcd
_OEA	=	0x7f9c
_OUTA	=	0x7f96
_PINSA	=	0x7f99
_OEB	=	0x7f9d
_OUTB	=	0x7f97
_PINSB	=	0x7f9a
_OEC	=	0x7f9e
_OUTC	=	0x7f98
_PINSC	=	0x7f9b
_PORTACFG	=	0x7f93
_PORTBCFG	=	0x7f94
_PORTCCFG	=	0x7f95
_ISOCTL	=	0x7fa1
_IN07IRQ	=	0x7fa9
_OUT07IRQ	=	0x7faa
_IN07IEN	=	0x7fac
_OUT07IEN	=	0x7fad
_USBIRQ	=	0x7fab
_USBIEN	=	0x7fae
_USBPAIR	=	0x7fdd
_USBBAV	=	0x7faf
_USBCS	=	0x7fd6
_TOGCTL	=	0x7fd7
_SUDPTRH	=	0x7fd4
_SUDPTRL	=	0x7fd5
_SETUPDAT	=	0x7fe8
_I2CS	=	0x7fa5
_I2DAT	=	0x7fa6
_IN07VAL	=	0x7fde
_OUT07VAL	=	0x7fdf
_FASTXFR	=	0x7fe2
_AUTOPTRH	=	0x7fe3
_AUTOPTRL	=	0x7fe4
_AUTODATA	=	0x7fe5
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area CSEG    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area CSEG    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_timer2_isr
	.ds	5
	ljmp	_resume_isr
	.ds	5
	reti
	.ds	7
	ljmp	_usb_isr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area CSEG    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;------------------------------------------------------------
;Allocation info for local variables in function 'amikbd_comm'
;------------------------------------------------------------
;keycode                   Allocated to registers r2 
;mod_map                   Allocated to registers r3 
;receive_cnt               Allocated to registers r3 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;amikbd.c:49: static void amikbd_comm(void)
;	-----------------------------------------
;	 function amikbd_comm
;	-----------------------------------------
_amikbd_comm:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;amikbd.c:57: while (TRUE) {
00161$:
;amikbd.c:59: keycode   = 0;
;     genAssign
	mov	r2,#0x00
;amikbd.c:64: for (receive_cnt = 7; receive_cnt > 0; receive_cnt--) {
;     genAssign
	mov	r3,#0x07
00163$:
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r3
	add	a,#0xff - 0x00
	jnc	00109$
00204$:
;amikbd.c:66: keycode <<= 1;
;     genLeftShift
;     genLeftShiftLiteral
;     genlshOne
;	Peephole 254	optimized left shift
	mov	a,r2
	add	a,r2
	mov	r2,a
;amikbd.c:69: while (KBD_CLOCK_PORT & KBD_CLOCK_PIN) ;
00101$:
;     genAssign
	mov	dptr,#_PINSC
	movx	a,@dptr
;     genAnd
;	Peephole 105	removed redundant mov
	mov	r4,a
;     genIfxJump
;	Peephole 112.a	removed ljmp by inverse jump logic
	jb	acc.4,00101$
00205$:
;amikbd.c:72: if (!(KBD_DATA_PORT & KBD_DATA_PIN))
;     genAssign
	mov	dptr,#_PINSC
	movx	a,@dptr
;     genAnd
;	Peephole 105	removed redundant mov
	mov	r4,a
;     genIfxJump
;	Peephole 112.a	removed ljmp by inverse jump logic
	jb	acc.5,00106$
00206$:
;amikbd.c:73: keycode |= 1;
;     genOr
	orl	ar2,#0x01
;amikbd.c:76: while (!(KBD_CLOCK_PORT & KBD_CLOCK_PIN)) ;
00106$:
;     genAssign
	mov	dptr,#_PINSC
	movx	a,@dptr
;     genAnd
;	Peephole 105	removed redundant mov
	mov	r4,a
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.4,00106$
00207$:
;amikbd.c:64: for (receive_cnt = 7; receive_cnt > 0; receive_cnt--) {
;     genMinus
;     genMinusDec
	dec	r3
;amikbd.c:82: while (KBD_CLOCK_PORT & KBD_CLOCK_PIN) ;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00163$
00109$:
;     genAssign
	mov	dptr,#_PINSC
	movx	a,@dptr
;     genAnd
;	Peephole 105	removed redundant mov
	mov	r3,a
;     genIfxJump
;	Peephole 112.a	removed ljmp by inverse jump logic
	jb	acc.4,00109$
00208$:
;amikbd.c:84: if (KBD_DATA_PORT & KBD_DATA_PIN)
;     genAssign
	mov	dptr,#_PINSC
	movx	a,@dptr
;     genAnd
;	Peephole 105	removed redundant mov
	mov	r3,a
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.5,00114$
00209$:
;amikbd.c:85: keycode |= AMIKBD_PRESSED;
;     genOr
	orl	ar2,#0x80
;amikbd.c:86: while (!(KBD_CLOCK_PORT & KBD_CLOCK_PIN)) ;
00114$:
;     genAssign
	mov	dptr,#_PINSC
	movx	a,@dptr
;     genAnd
;	Peephole 105	removed redundant mov
	mov	r3,a
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.4,00114$
00210$:
;amikbd.c:92: TL0 = TIMER0_LOW;
;     genAssign
	mov	_TL0,#0x56
;amikbd.c:93: TH0 = TIMER0_HIGH;
;     genAssign
	mov	_TH0,#0xFF
;amikbd.c:94: KBD_DATA_OE |= KBD_DATA_PIN;   /* pull data line low */
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_OEC
	movx	a,@dptr
	mov	r3,a
	orl	a,#0x20
	movx	@dptr,a
;amikbd.c:95: TR0 = TRUE;
;     genAssign
	setb	_TR0
;amikbd.c:101: switch (keycode)
;     genCmpEq
	cjne	r2,#0x78,00211$
	ljmp	00157$
00211$:
;     genCmpEq
	cjne	r2,#0xF9,00212$
	ljmp	00157$
00212$:
;     genCmpEq
	cjne	r2,#0xFA,00213$
	ljmp	00157$
00213$:
;     genCmpEq
	cjne	r2,#0xFB,00214$
	ljmp	00157$
00214$:
;     genCmpEq
	cjne	r2,#0xFC,00215$
	ljmp	00157$
00215$:
;     genCmpEq
	cjne	r2,#0xFD,00216$
	ljmp	00157$
00216$:
;     genCmpEq
	cjne	r2,#0xFE,00217$
	ljmp	00157$
00217$:
;     genCmpEq
	cjne	r2,#0xFF,00218$
	ljmp	00157$
00218$:
;amikbd.c:114: parse_keycode = FALSE;
;     genAssign
	clr	_amikbd_comm_parse_keycode_1_1
;amikbd.c:115: switch (keycode & AMIKBD_KEY) {
;     genAnd
	mov	a,#0x7F
	anl	a,r2
	mov	r3,a
;     genCmpLt
;     genCmp
	cjne	r3,#0x60,00219$
00219$:
;     genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00134$
00220$:
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r3
	add	a,#0xff - 0x67
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00134$
00221$:
;     genMinus
	mov	a,r3
	add	a,#0xa0
;     genJumpTab
;	Peephole 105	removed redundant mov
	mov	r3,a
	add	a,acc
	add	a,r3
	mov	dptr,#00222$
	jmp	@a+dptr
00222$:
	ljmp	00128$
	ljmp	00131$
	ljmp	00126$
	ljmp	00127$
	ljmp	00129$
	ljmp	00132$
	ljmp	00130$
	ljmp	00133$
;amikbd.c:117: case AMIKBD_CAPSLOCK:
00126$:
;amikbd.c:122: keycode      |= AMIKBD_PRESSED;
;     genOr
	orl	ar2,#0x80
;amikbd.c:123: caps_operated = TRUE;
;     genAssign
	setb	_caps_operated
;amikbd.c:124: mod_map       = 0;
;     genAssign
	mov	r3,#0x00
;amikbd.c:125: parse_keycode = TRUE;
;     genAssign
	setb	_amikbd_comm_parse_keycode_1_1
;amikbd.c:126: break;
;amikbd.c:129: case 0x63:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00135$
00127$:
;amikbd.c:130: mod_map = 0x01;
;     genAssign
	mov	r3,#0x01
;amikbd.c:131: break;
;amikbd.c:134: case 0x60:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00135$
00128$:
;amikbd.c:135: mod_map = 0x02;
;     genAssign
	mov	r3,#0x02
;amikbd.c:136: break;
;amikbd.c:139: case 0x64:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00135$
00129$:
;amikbd.c:140: mod_map = 0x04;
;     genAssign
	mov	r3,#0x04
;amikbd.c:141: break;
;amikbd.c:144: case 0x66:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00135$
00130$:
;amikbd.c:145: mod_map = 0x08;
;     genAssign
	mov	r3,#0x08
;amikbd.c:146: break;
;amikbd.c:149: case 0x61:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00135$
00131$:
;amikbd.c:150: mod_map = 0x20;
;     genAssign
	mov	r3,#0x20
;amikbd.c:151: break;
;amikbd.c:154: case 0x65:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00135$
00132$:
;amikbd.c:155: mod_map = 0x40;
;     genAssign
	mov	r3,#0x40
;amikbd.c:156: break;
;amikbd.c:159: case 0x67:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00135$
00133$:
;amikbd.c:160: mod_map = 0x80;
;     genAssign
	mov	r3,#0x80
;amikbd.c:161: break;
;amikbd.c:163: default:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00135$
00134$:
;amikbd.c:164: mod_map       = 0;
;     genAssign
	mov	r3,#0x00
;amikbd.c:165: parse_keycode = TRUE;
;     genAssign
	setb	_amikbd_comm_parse_keycode_1_1
;amikbd.c:168: }
00135$:
;amikbd.c:171: if (mod_map) {
;     genIfx
	mov	a,r3
;     genIfxJump
;	Peephole 110	removed ljmp by inverse jump logic
	jz	00140$
00223$:
;amikbd.c:173: if (keycode & AMIKBD_PRESSED) {
;     genAnd
	mov	a,r2
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.7,00137$
00224$:
;amikbd.c:175: key_buffer[0] |= mod_map;
;     genAssign
;     genOr
	mov	a,r3
	orl	a,_key_buffer
;     genPointerSet
;     genNearPointerSet
;     genDataPointerSet
	mov	_key_buffer,a
;amikbd.c:176: kbd_new_keys   = TRUE;
;     genAssign
	setb	_kbd_new_keys
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00140$
00137$:
;amikbd.c:179: key_buffer[0] &= ~mod_map;
;     genAssign
;	genCpl
	mov	a,r3
	cpl	a
;     genAnd
;	Peephole 105	removed redundant mov
	mov	r3,a
	anl	a,_key_buffer
;     genPointerSet
;     genNearPointerSet
;     genDataPointerSet
	mov	_key_buffer,a
;amikbd.c:180: kbd_new_keys   = TRUE;
;     genAssign
	setb	_kbd_new_keys
00140$:
;amikbd.c:185: if (parse_keycode) {
;     genIfx
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	_amikbd_comm_parse_keycode_1_1,00157$
00225$:
;amikbd.c:187: if (keycode & AMIKBD_PRESSED) {
;     genAnd
	mov	a,r2
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.7,00152$
00226$:
;amikbd.c:189: keycode &= AMIKBD_KEY;
;     genAnd
	anl	ar2,#0x7F
;amikbd.c:190: keycode = keycode_map[keycode];
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
;	Peephole 181	changed mov to clr
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
;	Peephole 186.d	optimized movc sequence
	mov	dptr,#_keycode_map
	movc	a,@a+dptr
	mov	r2,a
;amikbd.c:191: i = 2;
;     genAssign
	mov	r3,#0x02
;amikbd.c:192: while (i < 8) {
;     genAssign
	mov	r4,#0x02
00143$:
;     genCmpLt
;     genCmp
	cjne	r4,#0x08,00227$
00227$:
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00145$
00228$:
;amikbd.c:193: if (!key_buffer[i]) {
;     genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,#_key_buffer
	mov	r0,a
;     genPointerGet
;     genNearPointerGet
	mov	a,@r0
;     genIfxJump
;	Peephole 109	removed ljmp by inverse jump logic
	jnz	00142$
00229$:
;amikbd.c:194: key_buffer[i] = keycode;
;     genPlus
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	add	a,#_key_buffer
;     genPointerSet
;     genNearPointerSet
;	Peephole 239	used a instead of acc
	mov	r0,a
	mov	@r0,ar2
;amikbd.c:195: break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00145$
00142$:
;amikbd.c:197: i++;
;     genPlus
;     genPlusIncr
	inc	r4
;     genAssign
	mov	ar3,r4
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00143$
00145$:
;amikbd.c:199: kbd_new_keys = TRUE;
;     genAssign
	setb	_kbd_new_keys
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00157$
00152$:
;amikbd.c:203: keycode = keycode_map[keycode];
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
;	Peephole 181	changed mov to clr
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
;	Peephole 186.d	optimized movc sequence
	mov	dptr,#_keycode_map
	movc	a,@a+dptr
	mov	r2,a
;amikbd.c:205: while (i > 1) {
;     genAssign
	mov	r3,#0x07
00148$:
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r3
	add	a,#0xff - 0x01
	jnc	00150$
00230$:
;amikbd.c:206: if (key_buffer[i] == keycode)
;     genPlus
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	add	a,#_key_buffer
	mov	r0,a
;     genPointerGet
;     genNearPointerGet
	mov	ar4,@r0
;     genCmpEq
	mov	a,r4
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	a,ar2,00147$
;00231$:
;	Peephole 200	removed redundant sjmp
00232$:
;amikbd.c:207: key_buffer[i] = 0;
;     genPlus
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	add	a,#_key_buffer
;     genPointerSet
;     genNearPointerSet
;	Peephole 239	used a instead of acc
	mov	r0,a
	mov	@r0,#0x00
00147$:
;amikbd.c:208: i--;
;     genMinus
;     genMinusDec
	dec	r3
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00148$
00150$:
;amikbd.c:210: kbd_new_keys = TRUE;
;     genAssign
	setb	_kbd_new_keys
;amikbd.c:222: while (!TF0) ;
00157$:
;     genIfx
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	_TF0,00157$
00233$:
;amikbd.c:223: KBD_DATA_OE &= ~KBD_DATA_PIN;  /* release data line */
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_OEC
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xDF
	movx	@dptr,a
;amikbd.c:224: TR0 = FALSE;
;     genAssign
	clr	_TR0
;amikbd.c:225: TF0 = FALSE;
;     genAssign
	clr	_TF0
	ljmp	00161$
00167$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer2_isr'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;amikbd.c:240: static void timer2_isr() interrupt 5 using 3 critical
;	-----------------------------------------
;	 function timer2_isr
;	-----------------------------------------
_timer2_isr:
	ar2 = 0x1a
	ar3 = 0x1b
	ar4 = 0x1c
	ar5 = 0x1d
	ar6 = 0x1e
	ar7 = 0x1f
	ar0 = 0x18
	ar1 = 0x19
	push	acc
	push	dpl
	push	dph
	push	psw
	mov	psw,#0x18
	setb	c
	jbc	ea,00140$
	clr	c
00140$:
	push	psw
;amikbd.c:245: if (TF2) {
;     genIfx
;     genIfxJump
;amikbd.c:246: TF2 = 0;
;     genAssign
;	Peephole 250.b	using atomic test and clear
	jbc	_TF2,00141$
	ljmp	00125$
00141$:
;amikbd.c:251: kbd_send_report = FALSE;
;     genAssign
	clr	_timer2_isr_kbd_send_report_1_1
;amikbd.c:254: if (caps_send_release) {
;     genIfx
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
;amikbd.c:255: caps_send_release = FALSE;
;     genAssign
;	Peephole 250.a	using atomic test and clear
	jbc	_caps_send_release,00142$
	sjmp	00107$
00142$:
;amikbd.c:258: while (i-- > 2)
;     genAssign
	mov	r2,#0x08
00103$:
;     genAssign
	mov	ar3,r2
;     genMinus
;     genMinusDec
	dec	r2
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r3
	add	a,#0xff - 0x02
	jnc	00105$
00143$:
;amikbd.c:259: if (key_buffer[i] == USB_CAPSLOCK)
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_key_buffer
	mov	r0,a
;     genPointerGet
;     genNearPointerGet
	mov	ar3,@r0
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r3,#0x39,00103$
;00144$:
;	Peephole 200	removed redundant sjmp
00145$:
;amikbd.c:260: key_buffer[i] = 0;
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_key_buffer
;     genPointerSet
;     genNearPointerSet
;	Peephole 239	used a instead of acc
	mov	r0,a
	mov	@r0,#0x00
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00103$
00105$:
;amikbd.c:261: kbd_send_report   = TRUE;
;     genAssign
	setb	_timer2_isr_kbd_send_report_1_1
00107$:
;amikbd.c:265: if (!kbd_idle_mode) {
;     genIfx
;     genIfxJump
;	Peephole 112.a	removed ljmp by inverse jump logic
	jb	_kbd_idle_mode,00111$
00146$:
;amikbd.c:266: if (--kbd_idle_counter == 0) {
;     genMinus
;     genMinusDec
	dec	_kbd_idle_counter
;     genCmpEq
	mov	a,_kbd_idle_counter
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00148$
00147$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00111$
00148$:
;amikbd.c:267: kbd_send_report  = TRUE;
;     genAssign
	setb	_timer2_isr_kbd_send_report_1_1
;amikbd.c:269: kbd_idle_counter = kbd_idle_duration;
;     genAssign
	mov	_kbd_idle_counter,_kbd_idle_duration
00111$:
;amikbd.c:274: if (kbd_new_keys) {
;     genIfx
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	_kbd_new_keys,00115$
00149$:
;amikbd.c:275: kbd_send_report     = TRUE;
;     genAssign
	setb	_timer2_isr_kbd_send_report_1_1
;amikbd.c:276: kbd_new_keys        = FALSE;
;     genAssign
	clr	_kbd_new_keys
;amikbd.c:278: kbd_idle_counter    = kbd_idle_duration;
;     genAssign
	mov	_kbd_idle_counter,_kbd_idle_duration
;amikbd.c:281: if (caps_operated) {
;     genIfx
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
;amikbd.c:282: caps_operated     = FALSE;
;     genAssign
;	Peephole 250.a	using atomic test and clear
	jbc	_caps_operated,00150$
	sjmp	00115$
00150$:
;amikbd.c:283: caps_send_release = TRUE;
;     genAssign
	setb	_caps_send_release
00115$:
;amikbd.c:288: if (kbd_send_report) {
;     genIfx
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	_timer2_isr_kbd_send_report_1_1,00125$
00151$:
;amikbd.c:289: if (!in1_busy) {
;     genIfx
;     genIfxJump
;	Peephole 112.a	removed ljmp by inverse jump logic
	jb	_in1_busy,00125$
00152$:
;amikbd.c:291: while (i-- > 0)
;     genAssign
	mov	r2,#0x08
00116$:
;     genAssign
	mov	ar3,r2
;     genMinus
;     genMinusDec
	dec	r2
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r3
	add	a,#0xff - 0x00
	jnc	00118$
00153$:
;amikbd.c:292: in1buf(i) = key_buffer[i];
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_IN1BUF
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_IN1BUF >> 8)
	mov	dph,a
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_key_buffer
	mov	r0,a
;     genPointerGet
;     genNearPointerGet
	mov	ar3,@r0
;     genPointerSet
;     genFarPointerSet
	mov	a,r3
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00116$
00118$:
;amikbd.c:295: in1_busy = TRUE;
;     genAssign
	setb	_in1_busy
;amikbd.c:296: IN1BC    = 8;
;     genAssign
	mov	dptr,#_IN1BC
	mov	a,#0x08
	movx	@dptr,a
00125$:
	pop	psw
	mov	ea,c
	pop	psw
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'core_apply_reset_values'
;------------------------------------------------------------
;------------------------------------------------------------
;amikbd.c:310: void core_apply_reset_values() using 1
;	-----------------------------------------
;	 function core_apply_reset_values
;	-----------------------------------------
_core_apply_reset_values:
	ar2 = 0x0a
	ar3 = 0x0b
	ar4 = 0x0c
	ar5 = 0x0d
	ar6 = 0x0e
	ar7 = 0x0f
	ar0 = 0x08
	ar1 = 0x09
;amikbd.c:312: kbd_new_keys        = 0;
;     genAssign
	clr	_kbd_new_keys
;amikbd.c:313: kbd_idle_mode       = FALSE;
;     genAssign
	clr	_kbd_idle_mode
;amikbd.c:314: kbd_idle_duration   = 125;
;     genAssign
	mov	_kbd_idle_duration,#0x7D
;amikbd.c:316: caps_operated       = FALSE;
;     genAssign
	clr	_caps_operated
;amikbd.c:317: caps_send_release   = FALSE;
;     genAssign
	clr	_caps_send_release
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setup_timer2_int'
;------------------------------------------------------------
;------------------------------------------------------------
;amikbd.c:326: static void setup_timer2_int()
;	-----------------------------------------
;	 function setup_timer2_int
;	-----------------------------------------
_setup_timer2_int:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;amikbd.c:329: kbd_idle_counter = kbd_idle_duration;
;     genAssign
	mov	_kbd_idle_counter,_kbd_idle_duration
;amikbd.c:336: T2CON  = 0x00;
;     genAssign
	mov	_T2CON,#0x00
;amikbd.c:337: RCAP2H = TH2 = 0xc1;
;     genAssign
	mov	_TH2,#0xC1
;     genAssign
	mov	_RCAP2H,#0xC1
;amikbd.c:338: RCAP2L = TL2 = 0x80;
;     genAssign
	mov	_TL2,#0x80
;     genAssign
	mov	_RCAP2L,#0x80
;amikbd.c:341: ET2    = 1;
;     genAssign
	setb	_ET2
;amikbd.c:343: TF2    = 0;
;     genAssign
	clr	_TF2
;amikbd.c:345: TR2    = 1;
;     genAssign
	setb	_TR2
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setup_keyboard'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;amikbd.c:354: static void setup_keyboard(void)
;	-----------------------------------------
;	 function setup_keyboard
;	-----------------------------------------
_setup_keyboard:
;amikbd.c:359: KBD_CLOCK_OE  &= ~KBD_CLOCK_PIN;
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_OEC
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xEF
	movx	@dptr,a
;amikbd.c:360: KBD_DATA_OE   &= ~KBD_DATA_PIN;
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_OEC
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xDF
	movx	@dptr,a
;amikbd.c:363: KBD_DATA_OUT  &= ~KBD_DATA_PIN;
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_OUTC
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xDF
	movx	@dptr,a
;amikbd.c:369: do {
;     genAssign
	mov	r2,#0x07
00101$:
;amikbd.c:370: key_buffer[i] = 0;
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_key_buffer
;     genPointerSet
;     genNearPointerSet
;	Peephole 239	used a instead of acc
	mov	r0,a
	mov	@r0,#0x00
;amikbd.c:371: } while (i-- > 0);
;     genAssign
	mov	ar3,r2
;     genMinus
;     genMinusDec
	dec	r2
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r3
	add	a,#0xff - 0x00
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00101$
00107$:
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setup_timer0'
;------------------------------------------------------------
;------------------------------------------------------------
;amikbd.c:383: static void setup_timer0(void)
;	-----------------------------------------
;	 function setup_timer0
;	-----------------------------------------
_setup_timer0:
;amikbd.c:386: TR0   = FALSE;
;     genAssign
	clr	_TR0
;amikbd.c:388: TF0   = FALSE;
;     genAssign
	clr	_TF0
;amikbd.c:389: ET0   = FALSE;
;     genAssign
	clr	_ET0
;amikbd.c:395: TMOD  = 1;
;     genAssign
	mov	_TMOD,#0x01
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;amikbd.c:407: Byte _sdcc_external_startup()
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
;amikbd.c:414: for (i = 2; i > 0; i--) ;
;     genAssign
	mov	r2,#0x02
00101$:
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r2
	add	a,#0xff - 0x00
	jnc	00104$
00109$:
;     genMinus
;     genMinusDec
	dec	r2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00104$:
;amikbd.c:417: USBCS &= ~0x04;               /* tristate the Disconnect pin */
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
;amikbd.c:418: USBCS |= 0x08;                /* disconnect USB core         */
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
;	Peephole 248.g	optimized and/or to volatile xdata
	mov	dptr,#_USBCS
	movx	a,@dptr
	anl	a,#0xFB
	movx	@dptr,a
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x08
	movx	@dptr,a
;amikbd.c:421: return(0);
;     genRet
	mov	dpl,#0x00
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;loop                      Allocated to registers r2 r3 
;------------------------------------------------------------
;amikbd.c:432: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;amikbd.c:438: while (loop-- > 0) ;
;     genAssign
	mov	r2,#0x00
	mov	r3,#0x40
00101$:
;     genAssign
	mov	ar4,r2
	mov	ar5,r3
;     genMinus
;     genMinusDec
	dec	r2
	cjne	r2,#0xff,00112$
	dec	r3
00112$:
;     genCmpGt
;     genCmp
	clr	c
;	Peephole 181	changed mov to clr
	clr	a
	subb	a,r4
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
;     genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00101$
00113$:
;amikbd.c:442: apply_reset_values();
;     genCall
	lcall	_apply_reset_values
;amikbd.c:444: setup_usb_int();
;     genCall
	lcall	_setup_usb_int
;amikbd.c:446: setup_keyboard();
;     genCall
	lcall	_setup_keyboard
;amikbd.c:448: setup_timer2_int();
;     genCall
	lcall	_setup_timer2_int
;amikbd.c:450: setup_timer0();
;     genCall
	lcall	_setup_timer0
;amikbd.c:453: USBCS |= 0x02;                /* activate RENUM                     */
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
;amikbd.c:454: USBCS &= ~0x08;               /* deactivate DISCON                  */
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
;amikbd.c:455: USBCS |= 0x04;                /* release tristate on Disconnect pin */
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
;	Peephole 248.d	optimized or/and/or to volatile xdata
	mov	dptr,#_USBCS
	movx	a,@dptr
	orl	a,#0x02
	movx	@dptr,a
	movx	a,@dptr
	anl	a,#0xF7
	movx	@dptr,a
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x04
	movx	@dptr,a
;amikbd.c:458: amikbd_comm();
;     genCall
	lcall	_amikbd_comm
;amikbd.c:460: while (TRUE) ;
00105$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00105$
00107$:
	ret
	.area CSEG    (CODE)
_keycode_map:
	.db #0x35
	.db #0x1E
	.db #0x1F
	.db #0x20
	.db #0x21
	.db #0x22
	.db #0x23
	.db #0x24
	.db #0x25
	.db #0x26
	.db #0x27
	.db #0x2D
	.db #0x2E
	.db #0x31
	.db #0x00
	.db #0x62
	.db #0x14
	.db #0x1A
	.db #0x08
	.db #0x15
	.db #0x17
	.db #0x1C
	.db #0x18
	.db #0x0C
	.db #0x12
	.db #0x13
	.db #0x2F
	.db #0x30
	.db #0x00
	.db #0x59
	.db #0x5A
	.db #0x5B
	.db #0x04
	.db #0x16
	.db #0x07
	.db #0x09
	.db #0x0A
	.db #0x0B
	.db #0x0D
	.db #0x0E
	.db #0x0F
	.db #0x33
	.db #0x34
	.db #0x32
	.db #0x00
	.db #0x5C
	.db #0x5D
	.db #0x5E
	.db #0x00
	.db #0x1D
	.db #0x1B
	.db #0x06
	.db #0x19
	.db #0x05
	.db #0x11
	.db #0x10
	.db #0x36
	.db #0x37
	.db #0x38
	.db #0x00
	.db #0x63
	.db #0x5F
	.db #0x60
	.db #0x61
	.db #0x2C
	.db #0x2A
	.db #0x2B
	.db #0x58
	.db #0x28
	.db #0x29
	.db #0x4C
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x56
	.db #0x00
	.db #0x52
	.db #0x51
	.db #0x4F
	.db #0x50
	.db #0x3A
	.db #0x3B
	.db #0x3C
	.db #0x3D
	.db #0x3E
	.db #0x3F
	.db #0x40
	.db #0x41
	.db #0x42
	.db #0x43
	.db #0x2F
	.db #0x30
	.db #0x54
	.db #0x55
	.db #0x57
	.db #0x75
	.db #0x00
	.db #0x00
	.db #0x39
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.area XINIT   (CODE)
