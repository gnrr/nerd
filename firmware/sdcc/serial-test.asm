;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.5.0 #1020 (May  8 2005)
; This file generated Sat Jun 17 10:57:19 2006
;--------------------------------------------------------
	.module serial_test
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _InitSci1
	.globl _PutChar
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
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
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
;Allocation info for local variables in function 'InitSci1'
;------------------------------------------------------------
;------------------------------------------------------------
;serial-test.c:24: void InitSci1(void)
;	-----------------------------------------
;	 function InitSci1
;	-----------------------------------------
_InitSci1:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;serial-test.c:27: PORTBCFG |= bmRXD | bmTXD; /* select alt function (RxD/TxD) */
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_PORTBCFG
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x0C
	movx	@dptr,a
;serial-test.c:28: OEB &= ~(bmRXD | bmTXD);   /* disable output about these pins */
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_OEB
	movx	a,@dptr
	mov	r2,a
	anl	a,#0xF3
	movx	@dptr,a
;serial-test.c:31: CKCON |= 0x10;        /* T1M=1, clock source is CLK24/4 */
;     genOr
	orl	_CKCON,#0x10
;serial-test.c:32: TMOD &= 0x0F;         /* clear bits of timer1(hi-nibble) */
;     genAnd
	anl	_TMOD,#0x0F
;serial-test.c:33: TMOD |= 0x20;         /* select mode2 */
;     genOr
	orl	_TMOD,#0x20
;serial-test.c:34: TL1 = 0xff;           /* initial counter */
;     genAssign
	mov	_TL1,#0xFF
;serial-test.c:35: TH1 = CNT_BPS;
;     genAssign
	mov	_TH1,#0xF6
;serial-test.c:37: SMOD1 = 1;            /* baud rate doubler enabled */
;     genAssign
	setb	_SMOD1
;serial-test.c:38: TR1 = 1;              /* run timer1 */
;     genAssign
	setb	_TR1
;serial-test.c:40: SCON1 = 0x50;         /* serial mode 1, receiver enabled */
;     genAssign
	mov	_SCON1,#0x50
;serial-test.c:41: TI_1 = 1;             /* set TI for first send */
;     genAssign
	setb	_TI_1
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PutChar'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;ea                        Allocated to stack - offset 1
;------------------------------------------------------------
;serial-test.c:46: void PutChar(char c) reentrant
;	-----------------------------------------
;	 function PutChar
;	-----------------------------------------
_PutChar:
	push	_bp
	mov	_bp,sp
	inc	sp
;     genReceive
	mov	r2,dpl
;serial-test.c:50: ea = EA;              /* save interrupt mask register */
;     genAssign
	clr	a
	mov	c,_EA
	rlc	a
	mov	r3,a
;     genAssign
	mov	r0,_bp
	inc	r0
	mov	@r0,ar3
;serial-test.c:51: EA = 0;               /* exclsive control of TI flag against interrupt */
;     genAssign
	clr	_EA
;serial-test.c:53: while(!TI_1) ;        /* wait for free to send  */
00101$:
;     genIfx
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
;serial-test.c:55: TI_1 = 0;             /* clear ready flag by myself */
;     genAssign
;	Peephole 250.a	using atomic test and clear
	jbc	_TI_1,00108$
	sjmp	00101$
00108$:
;serial-test.c:56: SBUF1 = c;            /* send one character */
;     genAssign
	mov	_SBUF1,r2
;serial-test.c:58: EA = ea;              /* recover interrupt mask register */
;     genAssign
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xff
	mov	_EA,c
00104$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area XINIT   (CODE)
