;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.5.0 #1020 (May  8 2005)
; This file generated Sat Jun 24 00:55:50 2006
;--------------------------------------------------------
	.module usb_core
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _string_prod
	.globl _string_if_keyboard
	.globl _string_mfg
	.globl _string_langid
	.globl _EUSB
	.globl _SMOD1
	.globl _TF2
	.globl _TR2
	.globl _TI_1
	.globl _RI_1
	.globl _ES1
	.globl _ET2
	.globl _ES0
	.globl _TI_0
	.globl _RI_0
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
	.globl _EIP
	.globl _EIE
	.globl _EICON
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _SBUF1
	.globl _SCON1
	.globl _SBUF0
	.globl _SCON0
	.globl _MPAGE
	.globl _EXIF
	.globl _CKCON
	.globl _DPS
	.globl _DPH1
	.globl _DPL1
	.globl _DPH0
	.globl _DPL0
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
	.globl _in1_busy
	.globl _kbd_idle_counter
	.globl _kbd_idle_duration
	.globl _apply_reset_values
	.globl _isr_usb
	.globl _isr_resume
	.globl _init_interrupt_usb
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
_DPL0	=	0x0082
_DPH0	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_DPS	=	0x0086
_CKCON	=	0x008e
_EXIF	=	0x0091
_MPAGE	=	0x0092
_SCON0	=	0x0098
_SBUF0	=	0x0099
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_EICON	=	0x00d8
_EIE	=	0x00e8
_EIP	=	0x00f8
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
_RI_0	=	0x0098
_TI_0	=	0x0099
_ES0	=	0x00ac
_ET2	=	0x00ad
_ES1	=	0x00ae
_RI_1	=	0x00c0
_TI_1	=	0x00c1
_TR2	=	0x00ca
_TF2	=	0x00cf
_SMOD1	=	0x00df
_EUSB	=	0x00e8
;--------------------------------------------------------
; overlayable register banks 
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_2	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_kbd_idle_duration::
	.ds 1
_kbd_idle_counter::
	.ds 1
_sdat:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_is_ctrl_out0_kbd:
	.ds 1
_in1_busy::
	.ds 1
_kbd_idle_mode::
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
; global & static initialisations
;--------------------------------------------------------
	.area CSEG    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;usb_core.c:77: * get_descriptor()
;     genAssign
	mov	_sdat,#0xE8
	mov	(_sdat + 1),#0x7F
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'apply_reset_values'
;------------------------------------------------------------
;------------------------------------------------------------
;usb_core.c:67: void apply_reset_values(void) using 1
;	-----------------------------------------
;	 function apply_reset_values
;	-----------------------------------------
_apply_reset_values:
	ar2 = 0x0a
	ar3 = 0x0b
	ar4 = 0x0c
	ar5 = 0x0d
	ar6 = 0x0e
	ar7 = 0x0f
	ar0 = 0x08
	ar1 = 0x09
;usb_core.c:69: core_apply_reset_values();
;     genCall
	lcall	_core_apply_reset_values
;usb_core.c:71: is_ctrl_out0_kbd = 0;
;     genAssign
	clr	_is_ctrl_out0_kbd
;usb_core.c:72: in1_busy         = FALSE;
;     genAssign
	clr	_in1_busy
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_descriptor'
;------------------------------------------------------------
;------------------------------------------------------------
;usb_core.c:89: static void get_descriptor(void) using 1
;	-----------------------------------------
;	 function get_descriptor
;	-----------------------------------------
_get_descriptor:
;usb_core.c:91: switch(sdat->wValueH) {
;     genPlus
;     genPlusIncr
	mov	a,#0x03
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
	mov	r2,a
;     genCmpEq
	cjne	r2,#0x01,00123$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00123$:
;     genCmpEq
	cjne	r2,#0x02,00124$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00124$:
;     genCmpEq
	cjne	r2,#0x03,00125$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00103$
00125$:
;     genCmpEq
	cjne	r2,#0x21,00126$
	ljmp	00107$
00126$:
;     genCmpEq
	cjne	r2,#0x22,00127$
	ljmp	00108$
00127$:
	ljmp	00112$
;usb_core.c:93: case USB_DT_DEVICE:
00101$:
;usb_core.c:94: EP0CS   = 0x02;                         /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:95: SUDPTRH = (uchar)((unsigned int)dev_desc >> 8);
;     genCast
	mov	r2,#_dev_desc
	mov	r3,#(_dev_desc >> 8)
;     genRightShift
;     genRightShiftLiteral
;     genrshTwo
	mov	ar2,r3
	mov	r3,#0x00
;     genCast
	mov	dptr,#_SUDPTRH
	mov	a,r2
	movx	@dptr,a
;usb_core.c:96: SUDPTRL = (unsigned int)dev_desc & 0xff;
;     genCast
	mov	r2,#_dev_desc
	mov	r3,#(_dev_desc >> 8)
;     genAnd
	mov	r3,#0x00
;     genCast
	mov	dptr,#_SUDPTRL
	mov	a,r2
	movx	@dptr,a
;usb_core.c:97: break;
;	Peephole 251.a	replaced ljmp to ret with ret
	ret
;usb_core.c:100: case USB_DT_CONFIG:
00102$:
;usb_core.c:101: EP0CS   = 0x02;                         /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:102: SUDPTRH = (uchar)((unsigned int)conf_desc >> 8);
;     genCast
	mov	r2,#_conf_desc
	mov	r3,#(_conf_desc >> 8)
;     genRightShift
;     genRightShiftLiteral
;     genrshTwo
	mov	ar2,r3
	mov	r3,#0x00
;     genCast
	mov	dptr,#_SUDPTRH
	mov	a,r2
	movx	@dptr,a
;usb_core.c:103: SUDPTRL = (unsigned int)conf_desc & 0xff;
;     genCast
	mov	r2,#_conf_desc
	mov	r3,#(_conf_desc >> 8)
;     genAnd
	mov	r3,#0x00
;     genCast
	mov	dptr,#_SUDPTRL
	mov	a,r2
	movx	@dptr,a
;usb_core.c:104: break;
;	Peephole 251.a	replaced ljmp to ret with ret
	ret
;usb_core.c:107: case USB_DT_STRING:
00103$:
;usb_core.c:108: if(sdat->wValueL < NUM_STRING) {
;     genPlus
;     genPlusIncr
	mov	a,#0x02
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
	mov	r2,a
;     genCmpLt
;     genCmp
	cjne	r2,#0x04,00128$
00128$:
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00105$
00129$:
;usb_core.c:109: EP0CS   = 0x02;                     /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:110: SUDPTRH = (uchar)(string_index[sdat->wValueL] >> 8);
;     genPlus
;     genPlusIncr
	mov	a,#0x02
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genMult
;     genMultOneByte
;	Peephole 105	removed redundant mov
	mov	r2,a
	mov	b,#0x02
	mul	ab
;     genPlus
	add	a,#_string_index
	mov	dpl,a
	mov	a,#(_string_index >> 8)
	addc	a,b
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r3,a
;     genRightShift
;     genRightShiftLiteral
;     genrshTwo
	mov	ar2,r3
	mov	r3,#0x00
;     genCast
	mov	dptr,#_SUDPTRH
	mov	a,r2
	movx	@dptr,a
;usb_core.c:111: SUDPTRL = string_index[sdat->wValueL] & 0xff;
;     genPlus
;     genPlusIncr
	mov	a,#0x02
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genMult
;     genMultOneByte
;	Peephole 105	removed redundant mov
	mov	r2,a
	mov	b,#0x02
	mul	ab
;     genPlus
	add	a,#_string_index
	mov	dpl,a
	mov	a,#(_string_index >> 8)
	addc	a,b
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x01
	movc	a,@a+dptr
;     genAnd
;	Peephole 177.c	removed redundant move
	mov	r3,#0x00
;     genCast
	mov	dptr,#_SUDPTRL
	mov	a,r2
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00105$:
;usb_core.c:113: EP0CS   = 0x03;                     /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:115: break;
;usb_core.c:118: case USB_DT_HID:
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00107$:
;usb_core.c:119: EP0CS   = 0x02;                         /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:120: SUDPTRH = (uchar)(((unsigned int)conf_desc) + 18 >> 8);
;     genCast
	mov	r2,#_conf_desc
	mov	r3,#(_conf_desc >> 8)
;     genPlus
	mov	a,#0x12
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
;     genRightShift
;     genRightShiftLiteral
;     genrshTwo
	mov	ar2,r3
	mov	r3,#0x00
;     genCast
	mov	dptr,#_SUDPTRH
	mov	a,r2
	movx	@dptr,a
;usb_core.c:121: SUDPTRL = ((unsigned int)conf_desc) + 18 & 0xff;
;     genCast
	mov	r2,#_conf_desc
	mov	r3,#(_conf_desc >> 8)
;     genCast
;     genPlus
	mov	dptr,#_SUDPTRL
	mov	a,#0x12
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	movx	@dptr,a
;usb_core.c:122: break;
;usb_core.c:125: case USB_DT_REPORT:
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00108$:
;usb_core.c:126: if(sdat->wIndexL == 0) {
;     genPlus
;     genPlusIncr
	mov	a,#0x04
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genCmpEq
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00131$
00130$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00110$
00131$:
;usb_core.c:127: EP0CS   = 0x02;                     /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:128: SUDPTRH = (uchar)((unsigned int)(report_desc_keyboard) >> 8);
;     genCast
	mov	r2,#_report_desc_keyboard
	mov	r3,#(_report_desc_keyboard >> 8)
;     genRightShift
;     genRightShiftLiteral
;     genrshTwo
	mov	ar2,r3
	mov	r3,#0x00
;     genCast
	mov	dptr,#_SUDPTRH
	mov	a,r2
	movx	@dptr,a
;usb_core.c:129: SUDPTRL = (unsigned int)(report_desc_keyboard) & 0xff;
;     genCast
	mov	r2,#_report_desc_keyboard
	mov	r3,#(_report_desc_keyboard >> 8)
;     genAnd
	mov	r3,#0x00
;     genCast
	mov	dptr,#_SUDPTRL
	mov	a,r2
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00110$:
;usb_core.c:131: EP0CS   = 0x03;                     /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:132: break;
;usb_core.c:134: default:
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00112$:
;usb_core.c:135: EP0CS       = 0x03;                     /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:137: }
00114$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isr_usb'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;usb_core.c:154: void isr_usb(void) interrupt 8 using 1
;	-----------------------------------------
;	 function isr_usb
;	-----------------------------------------
_isr_usb:
	push	acc
	push	b
	push	dpl
	push	dph
	push	psw
	mov	psw,#0x08
;usb_core.c:158: EXIF &= 0xef;                           /* clear INT2 interrupt */
;     genAnd
	anl	_EXIF,#0xEF
;usb_core.c:161: if(USBIRQ & 0x01) {
;     genAssign
	mov	dptr,#_USBIRQ
	movx	a,@dptr
;     genAnd
;	Peephole 105	removed redundant mov
	mov	r2,a
;     genIfxJump
	jb	acc.0,00237$
	ljmp	00182$
00237$:
;usb_core.c:162: USBIRQ = 0x01;                     /* clear SUDAV interrupt */
;     genAssign
	mov	dptr,#_USBIRQ
	mov	a,#0x01
	movx	@dptr,a
;usb_core.c:164: switch(sdat->bRequest) {
;     genPlus
;     genPlusIncr
	mov	a,#0x01
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
;	Peephole 177.a	removed redundant mov
	mov  r2,a
	add	a,#0xff - 0x0B
	jnc	00238$
	ljmp	00179$
00238$:
;     genJumpTab
;	Peephole 254	optimized left shift
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#00239$
	jmp	@a+dptr
00239$:
	ljmp	00101$
	ljmp	00107$
	ljmp	00125$
	ljmp	00132$
	ljmp	00179$
	ljmp	00179$
	ljmp	00147$
	ljmp	00179$
	ljmp	00148$
	ljmp	00152$
	ljmp	00157$
	ljmp	00168$
;usb_core.c:166: case 0x00:
00101$:
;usb_core.c:167: switch(sdat->bmRequestType) {
;     genAssign
	mov	dpl,_sdat
	mov	dph,(_sdat + 1)
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
	mov	r2,a
;     genCmpEq
	cjne	r2,#0x80,00240$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00240$:
;     genCmpEq
	cjne	r2,#0x81,00241$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00241$:
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r2,#0x82,00105$
;00242$:
;	Peephole 200	removed redundant sjmp
00243$:
;usb_core.c:173: case 0x82:
00104$:
;usb_core.c:174: in0buf(0) = 0x00;
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#_IN0BUF
;	Peephole 181	changed mov to clr
;usb_core.c:175: in0buf(1) = 0x00;
;     genPointerSet
;     genFarPointerSet
;	Peephole 181	changed mov to clr
;	Peephole 219	removed redundant clear
	clr	a
	movx	@dptr,a
	mov	dptr,#(_IN0BUF + 0x0001)
	movx	@dptr,a
;usb_core.c:176: IN0BC     = 0x02;
;     genAssign
	mov	dptr,#_IN0BC
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:177: EP0CS     = 0x02;           /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:178: break;
	ljmp	00182$
;usb_core.c:180: default:
00105$:
;usb_core.c:181: EP0CS     = 0x03;           /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:184: break;
	ljmp	00182$
;usb_core.c:187: case 0x01:
00107$:
;usb_core.c:188: switch(sdat->bmRequestType) {
;     genAssign
	mov	dpl,_sdat
	mov	dph,(_sdat + 1)
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00108$
00244$:
;     genCmpEq
	cjne	r2,#0x01,00245$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00245$:
;     genCmpEq
	cjne	r2,#0x02,00246$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00110$
00246$:
;     genCmpEq
	cjne	r2,#0xA1,00247$
	ljmp	00116$
00247$:
	ljmp	00123$
;usb_core.c:190: case 0x00:
00108$:
;usb_core.c:191: EP0CS = 0x02;               /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:192: break;
	ljmp	00182$
;usb_core.c:194: case 0x01:
00109$:
;usb_core.c:195: EP0CS = 0x02;               /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:196: break;
	ljmp	00182$
;usb_core.c:198: case 0x02:
00110$:
;usb_core.c:199: switch(sdat->wIndexL) {
;     genPlus
;     genPlusIncr
	mov	a,#0x04
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00111$
00248$:
;     genCmpEq
	cjne	r2,#0x80,00249$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00112$
00249$:
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;usb_core.c:202: case 0x00:              /* OUT0 */
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r2,#0x81,00114$
	sjmp	00113$
;00250$:
00111$:
;usb_core.c:203: TOGCTL = 0x00;
;     genAssign
;usb_core.c:204: TOGCTL = 0x20;
;     genAssign
;	Peephole 180.a	removed redundant mov to dptr
	mov	dptr,#_TOGCTL
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
	mov	a,#0x20
	movx	@dptr,a
;usb_core.c:205: EP0CS  = 0x02;      /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:206: break;
	ljmp	00182$
;usb_core.c:207: case 0x80:              /* IN0  */
00112$:
;usb_core.c:208: TOGCTL = 0x10;
;     genAssign
;usb_core.c:209: TOGCTL = 0x30;
;     genAssign
;	Peephole 180.a	removed redundant mov to dptr
	mov	dptr,#_TOGCTL
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x30
	movx	@dptr,a
;usb_core.c:210: EP0CS  = 0x02;      /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:211: break;
	ljmp	00182$
;usb_core.c:212: case 0x81:              /* IN1  */
00113$:
;usb_core.c:213: IN1CS &= 0xfe;      /* unstall endpoint */
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_IN1CS
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xFE
	movx	@dptr,a
;usb_core.c:214: TOGCTL = 0x11;
;     genAssign
;usb_core.c:215: TOGCTL = 0x31;
;     genAssign
;	Peephole 180.a	removed redundant mov to dptr
	mov	dptr,#_TOGCTL
	mov	a,#0x11
	movx	@dptr,a
	mov	a,#0x31
	movx	@dptr,a
;usb_core.c:216: EP0CS  = 0x02;      /* clear HSNACK */;
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:217: break;
	ljmp	00182$
;usb_core.c:218: default:
00114$:
;usb_core.c:219: EP0CS  = 0x03;      /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:222: break;
	ljmp	00182$
;usb_core.c:225: case 0xa1:
00116$:
;usb_core.c:228: if(sdat->wIndexL == 0) {
;     genPlus
;     genPlusIncr
	mov	a,#0x04
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genCmpEq
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00252$
00251$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00121$
00252$:
;usb_core.c:229: while(i-- > 0)
;     genAssign
	mov	r2,#0x07
00117$:
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
	jnc	00119$
00253$:
;usb_core.c:230: in0buf(i) = SendCurr[i];
;     genPlus
;     genPlus aligned array
	mov	dpl,r2
	mov	dph,#(_IN0BUF >> 8)
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_SendCurr
	mov	r0,a
;     genPointerGet
;     genNearPointerGet
	mov	ar3,@r0
;     genPointerSet
;     genFarPointerSet
	mov	a,r3
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00117$
00119$:
;usb_core.c:233: IN0BC = 0x08;
;     genAssign
	mov	dptr,#_IN0BC
	mov	a,#0x08
	movx	@dptr,a
;usb_core.c:234: EP0CS = 0x02;           /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
	ljmp	00182$
00121$:
;usb_core.c:236: EP0CS = 0x03;           /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:237: break;
	ljmp	00182$
;usb_core.c:239: default:
00123$:
;usb_core.c:240: EP0CS     = 0x03;           /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:243: break;
	ljmp	00182$
;usb_core.c:246: case 0x02:
00125$:
;usb_core.c:247: switch(sdat->bmRequestType) {
;     genAssign
	mov	dpl,_sdat
	mov	dph,(_sdat + 1)
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
	mov	r2,a
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r2,#0xA1,00130$
;00254$:
;	Peephole 200	removed redundant sjmp
00255$:
;usb_core.c:250: if(sdat->wIndexL == 0) {
;     genPlus
;     genPlusIncr
	mov	a,#0x04
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genCmpEq
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00257$
00256$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00128$
00257$:
;usb_core.c:251: in0buf(0) = kbd_idle_duration;
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#_IN0BUF
	mov	a,_kbd_idle_duration
	movx	@dptr,a
;usb_core.c:252: IN0BC     = 0x01;
;     genAssign
	mov	dptr,#_IN0BC
	mov	a,#0x01
	movx	@dptr,a
;usb_core.c:253: EP0CS     = 0x02;       /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
	ljmp	00182$
00128$:
;usb_core.c:255: EP0CS     = 0x03;       /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:256: break;
	ljmp	00182$
;usb_core.c:258: default:
00130$:
;usb_core.c:259: EP0CS         = 0x03;       /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:262: break;
	ljmp	00182$
;usb_core.c:265: case 0x03:
00132$:
;usb_core.c:266: switch(sdat->bmRequestType) {
;     genAssign
	mov	dpl,_sdat
	mov	dph,(_sdat + 1)
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00133$
00258$:
;     genCmpEq
	cjne	r2,#0x01,00259$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00134$
00259$:
;     genCmpEq
	cjne	r2,#0x02,00260$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00135$
00260$:
;     genCmpEq
	cjne	r2,#0xA1,00261$
	ljmp	00141$
00261$:
	ljmp	00145$
;usb_core.c:268: case 0x00:
00133$:
;usb_core.c:269: EP0CS     = 0x02;           /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:270: break;
	ljmp	00182$
;usb_core.c:273: case 0x01:
00134$:
;usb_core.c:274: EP0CS     = 0x02;           /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:275: break;
	ljmp	00182$
;usb_core.c:278: case 0x02:
00135$:
;usb_core.c:279: switch(sdat->wIndexL) {
;     genPlus
;     genPlusIncr
	mov	a,#0x04
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00136$
00262$:
;     genCmpEq
	cjne	r2,#0x80,00263$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00137$
00263$:
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;usb_core.c:280: case 0x00:              /* OUT0 */
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r2,#0x81,00139$
	sjmp	00138$
;00264$:
00136$:
;usb_core.c:281: EP0CS  |= 0x01;     /* stall endpoint */
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x01
	movx	@dptr,a
;usb_core.c:282: TOGCTL  = 0x00;
;     genAssign
;usb_core.c:283: TOGCTL  = 0x20;
;     genAssign
;	Peephole 180.a	removed redundant mov to dptr
	mov	dptr,#_TOGCTL
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
	mov	a,#0x20
	movx	@dptr,a
;usb_core.c:284: OUT0BC  = 0x00;
;     genAssign
	mov	dptr,#_OUT0BC
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;usb_core.c:285: EP0CS  |= 0x02;     /* clear HSNACK */
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x02
	movx	@dptr,a
;usb_core.c:286: break;
	ljmp	00182$
;usb_core.c:287: case 0x80:              /* IN0  */
00137$:
;usb_core.c:288: EP0CS  |= 0x01;     /* stall endpoint */
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x01
	movx	@dptr,a
;usb_core.c:289: TOGCTL  = 0x10;
;     genAssign
;usb_core.c:290: TOGCTL  = 0x30;
;     genAssign
;	Peephole 180.a	removed redundant mov to dptr
	mov	dptr,#_TOGCTL
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x30
	movx	@dptr,a
;usb_core.c:291: EP0CS  |= 0x02;     /* clear HSNACK */
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x02
	movx	@dptr,a
;usb_core.c:292: break;
	ljmp	00182$
;usb_core.c:293: case 0x81:              /* IN1  */
00138$:
;usb_core.c:294: IN1CS   = 0x01;     /* stall endpoint */
;     genAssign
	mov	dptr,#_IN1CS
	mov	a,#0x01
	movx	@dptr,a
;usb_core.c:295: TOGCTL  = 0x11;
;     genAssign
;usb_core.c:296: TOGCTL  = 0x31;
;     genAssign
;	Peephole 180.a	removed redundant mov to dptr
	mov	dptr,#_TOGCTL
	mov	a,#0x11
	movx	@dptr,a
	mov	a,#0x31
	movx	@dptr,a
;usb_core.c:297: IN1CS  |= 0x02;
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_IN1CS
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x02
	movx	@dptr,a
;usb_core.c:298: EP0CS   = 0x02;     /* clear HSNACK */;
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:299: break;
	ljmp	00182$
;usb_core.c:300: default:
00139$:
;usb_core.c:301: EP0CS   = 0x03;     /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:304: break;
	ljmp	00182$
;usb_core.c:307: case 0xa1:
00141$:
;usb_core.c:308: if(sdat->wIndexL == 0) {
;     genPlus
;     genPlusIncr
	mov	a,#0x04
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genCmpEq
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00266$
00265$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00143$
00266$:
;usb_core.c:309: in0buf(0) = 1;      /* always send Report protocol */
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#_IN0BUF
	mov	a,#0x01
	movx	@dptr,a
;usb_core.c:310: IN0BC     = 0x01;
;     genAssign
	mov	dptr,#_IN0BC
	mov	a,#0x01
	movx	@dptr,a
;usb_core.c:311: EP0CS     = 0x02;   /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
	ljmp	00182$
00143$:
;usb_core.c:313: EP0CS     = 0x03;   /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:314: break;
	ljmp	00182$
;usb_core.c:316: default:
00145$:
;usb_core.c:317: EP0CS         = 0x03;   /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:320: break;
	ljmp	00182$
;usb_core.c:323: case 0x06:
00147$:
;usb_core.c:324: get_descriptor(/*sdat*/);
;     genCall
	lcall	_get_descriptor
;usb_core.c:325: break;
	ljmp	00182$
;usb_core.c:328: case 0x08:
00148$:
;usb_core.c:329: if(sdat->bmRequestType == 0x80) {
;     genAssign
	mov	dpl,_sdat
	mov	dph,(_sdat + 1)
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
	mov	r2,a
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r2,#0x80,00150$
;00267$:
;	Peephole 200	removed redundant sjmp
00268$:
;usb_core.c:330: in0buf(0) = 0x01;
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#_IN0BUF
	mov	a,#0x01
	movx	@dptr,a
;usb_core.c:331: IN0BC     = 0x01;
;     genAssign
	mov	dptr,#_IN0BC
	mov	a,#0x01
	movx	@dptr,a
;usb_core.c:332: EP0CS     = 0x02;               /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
	ljmp	00182$
00150$:
;usb_core.c:334: EP0CS     = 0x03;               /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:336: break;
	ljmp	00182$
;usb_core.c:339: case 0x09:
00152$:
;usb_core.c:340: switch(sdat->bmRequestType) {
;     genAssign
	mov	dpl,_sdat
	mov	dph,(_sdat + 1)
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00153$
00269$:
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;usb_core.c:342: case 0x00:
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r2,#0x21,00155$
	sjmp	00154$
;00270$:
00153$:
;usb_core.c:343: EP0CS  = 0x02;              /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:344: break;
	ljmp	00182$
;usb_core.c:347: case 0x21:
00154$:
;usb_core.c:349: is_ctrl_out0_kbd = TRUE;
;     genAssign
	setb	_is_ctrl_out0_kbd
;usb_core.c:350: OUT0BC = 0x00;         /* arm endpoint OUT0 */
;     genAssign
	mov	dptr,#_OUT0BC
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;usb_core.c:352: break;
	ljmp	00182$
;usb_core.c:354: default:
00155$:
;usb_core.c:355: EP0CS  = 0x03;              /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:358: break;
	ljmp	00182$
;usb_core.c:361: case 0x0a:
00157$:
;usb_core.c:362: switch(sdat->bmRequestType) {
;     genAssign
	mov	dpl,_sdat
	mov	dph,(_sdat + 1)
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
	mov	r2,a
;     genCmpEq
	cjne	r2,#0x21,00271$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00159$
00271$:
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r2,#0x81,00166$
;00272$:
;	Peephole 200	removed redundant sjmp
00273$:
;usb_core.c:365: in0buf(0) = 0x00;
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#_IN0BUF
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;usb_core.c:366: IN0BC     = 0x01;
;     genAssign
	mov	dptr,#_IN0BC
	mov	a,#0x01
	movx	@dptr,a
;usb_core.c:367: EP0CS     = 0x02;       /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:368: break;
	ljmp	00182$
;usb_core.c:371: case 0x21:
00159$:
;usb_core.c:372: if(sdat->wIndexL == 0) {
;     genPlus
;     genPlusIncr
	mov	a,#0x04
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genCmpEq
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00275$
00274$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00164$
00275$:
;usb_core.c:373: if(sdat->wValueH > 0) {
;     genPlus
;     genPlusIncr
	mov	a,#0x03
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
;	Peephole 177.a	removed redundant mov
	mov  r2,a
	add	a,#0xff - 0x00
	jnc	00161$
00276$:
;usb_core.c:374: kbd_idle_mode     = FALSE;
;     genAssign
	clr	_kbd_idle_mode
;usb_core.c:375: kbd_idle_duration = sdat->wValueH;
;     genPlus
;     genPlusIncr
	mov	a,#0x03
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
	mov	_kbd_idle_duration,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00162$
00161$:
;usb_core.c:377: kbd_idle_mode     = TRUE;
;     genAssign
	setb	_kbd_idle_mode
00162$:
;usb_core.c:380: EP0CS = 0x02;           /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
	ljmp	00182$
00164$:
;usb_core.c:382: EP0CS = 0x03;           /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:383: break;
	ljmp	00182$
;usb_core.c:385: default:
00166$:
;usb_core.c:386: EP0CS     = 0x03;           /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:389: break;
	ljmp	00182$
;usb_core.c:392: case 0x0b:
00168$:
;usb_core.c:393: switch(sdat->bmRequestType) {
;     genAssign
	mov	dpl,_sdat
	mov	dph,(_sdat + 1)
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
	mov	r2,a
;     genCmpEq
	cjne	r2,#0x01,00277$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00169$
00277$:
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;usb_core.c:395: case 0x01:
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r2,#0x21,00177$
	sjmp	00176$
;00278$:
00169$:
;usb_core.c:396: if(sdat->wValueL == 0) { /* only AS 0 supported */
;     genPlus
;     genPlusIncr
	mov	a,#0x02
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genCmpEq
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00280$
00279$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00174$
00280$:
;usb_core.c:397: if(sdat->wIndexL == 0) {
;     genPlus
;     genPlusIncr
	mov	a,#0x04
	add	a,_sdat
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_sdat + 1)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genCmpEq
;	Peephole 115.b	jump optimization
	mov	r2,a
	jz	00282$
00281$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00171$
00282$:
;usb_core.c:398: TOGCTL = 0x11;
;     genAssign
;usb_core.c:399: TOGCTL = 0x31;      /* reset toggle of IN1 */
;     genAssign
;	Peephole 180.a	removed redundant mov to dptr
	mov	dptr,#_TOGCTL
	mov	a,#0x11
	movx	@dptr,a
	mov	a,#0x31
	movx	@dptr,a
;usb_core.c:400: IN1CS |= 0x02;      /* remove busy */
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_IN1CS
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x02
	movx	@dptr,a
;usb_core.c:402: EP0CS  = 0x02;      /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00182$
00171$:
;usb_core.c:404: EP0CS  = 0x03;      /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00182$
00174$:
;usb_core.c:406: EP0CS      = 0x03;      /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:407: break;
;usb_core.c:410: case 0x21:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00182$
00176$:
;usb_core.c:411: EP0CS          = 0x02;      /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:412: break;
;usb_core.c:414: default:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00182$
00177$:
;usb_core.c:415: EP0CS          = 0x03;      /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:418: break;
;usb_core.c:420: default:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00182$
00179$:
;usb_core.c:421: EP0CS                  = 0x03;      /* stall */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:423: }
00182$:
;usb_core.c:427: if(IN07IRQ & 0x01) {
;     genAssign
	mov	dptr,#_IN07IRQ
	movx	a,@dptr
;     genAnd
;	Peephole 105	removed redundant mov
	mov	r2,a
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.0,00184$
00283$:
;usb_core.c:428: IN07IRQ = 0x01;         /* clear IN0 interrupt */
;     genAssign
	mov	dptr,#_IN07IRQ
	mov	a,#0x01
	movx	@dptr,a
00184$:
;usb_core.c:432: if(OUT07IRQ & 0x01) {
;     genAssign
	mov	dptr,#_OUT07IRQ
	movx	a,@dptr
;     genAnd
;	Peephole 105	removed redundant mov
	mov	r2,a
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.0,00188$
00284$:
;usb_core.c:433: OUT07IRQ = 0x01;        /* clear OUT0 interrupt */
;     genAssign
	mov	dptr,#_OUT07IRQ
	mov	a,#0x01
	movx	@dptr,a
;usb_core.c:436: if(is_ctrl_out0_kbd) {
;     genIfx
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
;usb_core.c:453: is_ctrl_out0_kbd = FALSE;
;     genAssign
;	Peephole 250.a	using atomic test and clear
	jbc	_is_ctrl_out0_kbd,00285$
	sjmp	00186$
00285$:
;usb_core.c:454: EP0CS            = 0x02;   /* clear HSNACK */
;     genAssign
	mov	dptr,#_EP0CS
	mov	a,#0x02
	movx	@dptr,a
00186$:
;usb_core.c:456: OUT0BC = 0x00;          /* arm endpoint again */
;     genAssign
	mov	dptr,#_OUT0BC
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
00188$:
;usb_core.c:461: if(USBIRQ & 0x10) {
;     genAssign
	mov	dptr,#_USBIRQ
	movx	a,@dptr
;     genAnd
;	Peephole 105	removed redundant mov
	mov	r2,a
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.4,00190$
00286$:
;usb_core.c:462: USBIRQ = 0x10;          /* clear request */
;     genAssign
	mov	dptr,#_USBIRQ
	mov	a,#0x10
	movx	@dptr,a
00190$:
;usb_core.c:470: if(USBIRQ & 0x08) {
;     genAssign
	mov	dptr,#_USBIRQ
	movx	a,@dptr
;     genAnd
;	Peephole 105	removed redundant mov
	mov	r2,a
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.3,00192$
00287$:
;usb_core.c:471: USBIRQ = 0x08;          /* clear request */
;     genAssign
	mov	dptr,#_USBIRQ
	mov	a,#0x08
	movx	@dptr,a
;usb_core.c:472: PCON |= 0x01;           /* enter idle mode */
;     genOr
	orl	_PCON,#0x01
00192$:
;usb_core.c:476: if(IN07IRQ & 0x02) {
;     genAssign
	mov	dptr,#_IN07IRQ
	movx	a,@dptr
;     genAnd
;	Peephole 105	removed redundant mov
	mov	r2,a
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
	jnb	acc.1,00195$
00288$:
;usb_core.c:477: IN07IRQ = 0x02;         /* clear IN1 interrupt */
;     genAssign
	mov	dptr,#_IN07IRQ
	mov	a,#0x02
	movx	@dptr,a
;usb_core.c:478: in1_busy = FALSE;       /* clear busy flag */
;     genAssign
	clr	_in1_busy
00195$:
	pop	psw
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'isr_resume'
;------------------------------------------------------------
;------------------------------------------------------------
;usb_core.c:484: void isr_resume(void) interrupt 6 using 2
;	-----------------------------------------
;	 function isr_resume
;	-----------------------------------------
_isr_resume:
	ar2 = 0x12
	ar3 = 0x13
	ar4 = 0x14
	ar5 = 0x15
	ar6 = 0x16
	ar7 = 0x17
	ar0 = 0x10
	ar1 = 0x11
	push	psw
	mov	psw,#0x10
;usb_core.c:486: EICON &= ~0x10;             /* clear resume interrupt */
;     genAnd
	anl	_EICON,#0xEF
00101$:
	pop	psw
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'init_interrupt_usb'
;------------------------------------------------------------
;------------------------------------------------------------
;usb_core.c:493: void init_interrupt_usb(void)
;	-----------------------------------------
;	 function init_interrupt_usb
;	-----------------------------------------
_init_interrupt_usb:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;usb_core.c:495: USBBAV   = 0x00;            /* clear autovector enable */
;     genAssign
	mov	dptr,#_USBBAV
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;usb_core.c:497: USBIRQ   = 0xff; /* clear SUDAV interrupt and all other interrupts */
;     genAssign
	mov	dptr,#_USBIRQ
	mov	a,#0xFF
	movx	@dptr,a
;usb_core.c:500: USBIEN   = 0x19;      /* enable SUDAV, SUSP and URES interrupts */
;     genAssign
	mov	dptr,#_USBIEN
	mov	a,#0x19
	movx	@dptr,a
;usb_core.c:502: IN07IRQ  = 0x03;            /* clear IN0 and IN1 interrupts */
;     genAssign
	mov	dptr,#_IN07IRQ
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:504: IN07IEN  = 0x03;            /* enable IN0 and IN1 interrupts */
;     genAssign
	mov	dptr,#_IN07IEN
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:506: OUT07IRQ = 0x01;            /* clear OUT0 interrupt */
;     genAssign
	mov	dptr,#_OUT07IRQ
	mov	a,#0x01
	movx	@dptr,a
;usb_core.c:508: OUT07IEN = 0x01;            /* enable OUT0 interrupt */
;     genAssign
	mov	dptr,#_OUT07IEN
	mov	a,#0x01
	movx	@dptr,a
;usb_core.c:511: IN1CS    = 0x00;            /* unstall endpoints */
;     genAssign
	mov	dptr,#_IN1CS
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;usb_core.c:515: IN07VAL  = 3;
;     genAssign
	mov	dptr,#_IN07VAL
	mov	a,#0x03
	movx	@dptr,a
;usb_core.c:516: OUT07VAL = 1;
;     genAssign
	mov	dptr,#_OUT07VAL
	mov	a,#0x01
	movx	@dptr,a
;usb_core.c:518: EUSB     = 1;               /* enable external 2 interrupt */
;     genAssign
	setb	_EUSB
;usb_core.c:520: EICON   &= ~0x10;           /* clear pending resume interrupt */
;     genAnd
	anl	_EICON,#0xEF
;usb_core.c:521: EICON   |= 0x20;            /* enable resume interrupt */
;     genOr
	orl	_EICON,#0x20
00101$:
	ret
	.area CSEG    (CODE)
_dev_desc:
	.db #0x12
	.db #0x01
	.db #0x10
	.db #0x01
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x40
	.db #0xCD
	.db #0x06
	.db #0x04
	.db #0xC0
	.db #0x00
	.db #0x01
	.db #0x01
	.db #0x02
	.db #0x00
	.db #0x01
_conf_desc:
	.db #0x09
	.db #0x02
	.db #0x22
	.db #0x00
	.db #0x01
	.db #0x01
	.db #0x00
	.db #0x80
	.db #0x32
	.db #0x09
	.db #0x04
	.db #0x00
	.db #0x00
	.db #0x01
	.db #0x03
	.db #0x01
	.db #0x01
	.db #0x03
	.db #0x09
	.db #0x21
	.db #0x00
	.db #0x01
	.db #0x21
	.db #0x01
	.db #0x22
	.db #0x3F
	.db #0x00
	.db #0x07
	.db #0x05
	.db #0x81
	.db #0x03
	.db #0x08
	.db #0x00
	.db #0x0A
_report_desc_keyboard:
	.db #0x05
	.db #0x01
	.db #0x09
	.db #0x06
	.db #0xA1
	.db #0x01
	.db #0x05
	.db #0x07
	.db #0x19
	.db #0xE0
	.db #0x29
	.db #0xE7
	.db #0x15
	.db #0x00
	.db #0x25
	.db #0x01
	.db #0x75
	.db #0x01
	.db #0x95
	.db #0x08
	.db #0x81
	.db #0x02
	.db #0x95
	.db #0x01
	.db #0x75
	.db #0x08
	.db #0x81
	.db #0x01
	.db #0x95
	.db #0x05
	.db #0x75
	.db #0x01
	.db #0x05
	.db #0x08
	.db #0x19
	.db #0x01
	.db #0x29
	.db #0x05
	.db #0x91
	.db #0x02
	.db #0x95
	.db #0x01
	.db #0x75
	.db #0x03
	.db #0x91
	.db #0x01
	.db #0x95
	.db #0x06
	.db #0x75
	.db #0x08
	.db #0x15
	.db #0x00
	.db #0x25
	.db #0x65
	.db #0x05
	.db #0x07
	.db #0x19
	.db #0x00
	.db #0x29
	.db #0x65
	.db #0x81
	.db #0x00
	.db #0xC0
_string_langid:
	.db #0x04
	.db #0x03
	.db #0x00
	.db #0x00
_string_mfg:
	.db #0x18
	.db #0x03
	.db #0x61
	.db #0x00
	.db #0x75
	.db #0x00
	.db #0x74
	.db #0x00
	.db #0x6F
	.db #0x00
	.db #0x6D
	.db #0x00
	.db #0x65
	.db #0x00
	.db #0x74
	.db #0x00
	.db #0x61
	.db #0x00
	.db #0x2E
	.db #0x00
	.db #0x72
	.db #0x00
	.db #0x6F
	.db #0x00
_string_if_keyboard:
	.db #0x0E
	.db #0x03
	.db #0x6B
	.db #0x00
	.db #0x62
	.db #0x00
	.db #0x64
	.db #0x00
	.db #0x2D
	.db #0x00
	.db #0x69
	.db #0x00
	.db #0x66
	.db #0x00
_string_prod:
	.db #0x42
	.db #0x03
	.db #0x6E
	.db #0x00
	.db #0x65
	.db #0x00
	.db #0x72
	.db #0x00
	.db #0x64
	.db #0x00
	.db #0x20
	.db #0x00
	.db #0x2D
	.db #0x00
	.db #0x20
	.db #0x00
	.db #0x62
	.db #0x00
	.db #0x75
	.db #0x00
	.db #0x69
	.db #0x00
	.db #0x6C
	.db #0x00
	.db #0x74
	.db #0x00
	.db #0x3A
	.db #0x00
	.db #0x32
	.db #0x00
	.db #0x30
	.db #0x00
	.db #0x30
	.db #0x00
	.db #0x36
	.db #0x00
	.db #0x2E
	.db #0x00
	.db #0x30
	.db #0x00
	.db #0x36
	.db #0x00
	.db #0x2E
	.db #0x00
	.db #0x32
	.db #0x00
	.db #0x34
	.db #0x00
	.db #0x20
	.db #0x00
	.db #0x30
	.db #0x00
	.db #0x30
	.db #0x00
	.db #0x3A
	.db #0x00
	.db #0x35
	.db #0x00
	.db #0x35
	.db #0x00
	.db #0x3A
	.db #0x00
	.db #0x34
	.db #0x00
	.db #0x39
	.db #0x00
	.area XINIT   (CODE)
