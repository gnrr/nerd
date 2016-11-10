;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.5.0 #1020 (May  8 2005)
; This file generated Sat Jun 24 00:55:49 2006
;--------------------------------------------------------
	.module nerd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _update_nerd_status_PARM_2
	.globl __sdcc_external_startup
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
	.globl _ScanWith
	.globl _Report
	.globl _SendOld
	.globl _SendTmp
	.globl _SendCurr
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
	.globl _NerdStat
	.globl _ModSave
	.globl _MapSet
	.globl _UpdatedKeys
	.globl _ScanBuf
	.globl _adjust_mod_PARM_3
	.globl _adjust_mod_PARM_2
	.globl _ScanCode
	.globl _core_apply_reset_values
	.globl _main
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
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_ScanCode::
	.ds 1
_enq_report_buf_1_1::
	.ds 3
_enq_report_next_1_1::
	.ds 1
_adjust_mod_PARM_2::
	.ds 1
_adjust_mod_PARM_3::
	.ds 1
_nerd_loop_sw_1_1::
	.ds 1
_nerd_loop_mod_stat_1_1::
	.ds 1
_nerd_loop_sloc0_1_0::
	.ds 2
_EnqPreSend_wait_1_1::
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_init_interrupt_timer0_val_1_1::
	.ds 1
	.area	OSEG    (OVR,DATA)
_update_nerd_status_PARM_2::
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
_ScanBuf::
	.ds 64
_UpdatedKeys::
	.ds 34
_MapSet::
	.ds 1
_ModSave::
	.ds 1
_NerdStat::
	.ds 1
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
_SendCurr::
	.ds 8
_SendTmp::
	.ds 8
_SendOld::
	.ds 8
_Report::
	.ds 66
_ScanWith::
	.ds 6
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
	ljmp	_isr_timer0
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_isr_timer2
	.ds	5
	ljmp	_isr_resume
	.ds	5
	reti
	.ds	7
	ljmp	_isr_usb
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
;Allocation info for local variables in function 'isr_timer0'
;------------------------------------------------------------
;sw                        Allocated to registers r2 
;next                      Allocated to registers r4 
;------------------------------------------------------------
;nerd.c:111: static void isr_timer0(void) interrupt 1 using 0 critical
;	-----------------------------------------
;	 function isr_timer0
;	-----------------------------------------
_isr_timer0:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	acc
	push	dpl
	push	dph
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar0
	push	psw
	mov	psw,#0x00
	setb	c
	jbc	ea,00109$
	clr	c
00109$:
	push	psw
;nerd.c:118: TR0 = 0;						/* stop timer0		*/
;     genAssign
	clr	_TR0
;nerd.c:120: ScanCode = ++ScanCode & 0x3F;	/* 0..64			*/
;     genPlus
;     genPlusIncr
	inc	_ScanCode
;     genAnd
	anl	_ScanCode,#0x3F
;nerd.c:121: OUTC = ScanCode | 0x40;			/* 01xx_xxxx:PC6 hi */
;     genOr
	mov	dptr,#_OUTC
	mov	a,#0x40
	orl	a,_ScanCode
	movx	@dptr,a
;nerd.c:123: TL0 = TIMER0_LO;				/* reload counter	*/
;     genAssign
	mov	_TL0,#0x4F
;nerd.c:124: TH0 = TIMER0_HI;
;     genAssign
	mov	_TH0,#0xFB
;nerd.c:126: TR0 = 1;						/* run timer0		*/
;     genAssign
	setb	_TR0
;nerd.c:134: OUTC &= 0x3F;					/* 00xx_xxxx:PC6 lo */
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_OUTC
	movx	a,@dptr
	mov	r2,a
	anl	a,#0x3F
	movx	@dptr,a
;nerd.c:142: sw = PINSC & 0x80;				/* 1000_0000 PC7/sig- 0:press */
;     genAssign
	mov	dptr,#_PINSC
	movx	a,@dptr
	mov	r2,a
;     genAnd
	anl	ar2,#0x80
;nerd.c:143: OUTC |= 0x40;					/* 01xx_xxxx:PC6 hi */
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_OUTC
	movx	a,@dptr
	mov	r3,a
	orl	a,#0x40
	movx	@dptr,a
;nerd.c:145: if(sw != ScanBuf[ScanCode]) {
;     genPlus
	mov	a,_ScanCode
	add	a,#_ScanBuf
	mov	r0,a
;     genPointerGet
;     genNearPointerGet
	mov	ar3,@r0
;     genCmpEq
	mov	a,r2
	cjne	a,ar3,00110$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00105$
00110$:
;nerd.c:147: ScanBuf[ScanCode] = sw; /* ﾊﾞｯﾌｧ更新 */
;     genPointerSet
;     genNearPointerSet
	mov	@r0,ar2
;nerd.c:150: next = (UpdatedKeys.tail + 1) & (UPDATE_KEYS_MAX - 1);
;     genPointerGet
;     genNearPointerGet
	mov	r0,#(_UpdatedKeys + 0x0001)
	mov	ar3,@r0
;     genPlus
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r3 instead of ar3
	add	a,r3
;     genAnd
	anl	a,#0x0F
	mov	r4,a
;nerd.c:151: if(next != UpdatedKeys.head) {
;     genPointerGet
;     genNearPointerGet
	mov	r0,#_UpdatedKeys
	mov	ar5,@r0
;     genCmpEq
	mov	a,r4
	cjne	a,ar5,00111$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00105$
00111$:
;nerd.c:153: UpdatedKeys.dat[UpdatedKeys.tail].scan = ScanCode;
;     genLeftShift
;     genLeftShiftLiteral
;     genlshOne
;	Peephole 254	optimized left shift
	mov	a,r3
	add	a,r3
;     genPlus
;	Peephole 177.b	removed redundant mov
	mov	r3,a
	add	a,#(_UpdatedKeys + 0x0002)
	mov	r0,a
;     genPointerSet
;     genNearPointerSet
	mov	@r0,_ScanCode
;nerd.c:154: UpdatedKeys.dat[UpdatedKeys.tail].sw = sw;
;     genPlus
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r0 instead of ar0
	add	a,r0
;     genPointerSet
;     genNearPointerSet
;	Peephole 239	used a instead of acc
	mov	r0,a
	mov	@r0,ar2
;nerd.c:155: UpdatedKeys.tail = next;
;     genPointerSet
;     genNearPointerSet
	mov	r0,#(_UpdatedKeys + 0x0001)
	mov	@r0,ar4
00105$:
	pop	psw
	mov	ea,c
	pop	psw
	pop	ar0
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop ar1
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'isr_timer2'
;------------------------------------------------------------
;i                         Allocated to registers r4 
;------------------------------------------------------------
;nerd.c:167: static void isr_timer2(void) interrupt 5 using 3
;	-----------------------------------------
;	 function isr_timer2
;	-----------------------------------------
_isr_timer2:
	ar2 = 0x1a
	ar3 = 0x1b
	ar4 = 0x1c
	ar5 = 0x1d
	ar6 = 0x1e
	ar7 = 0x1f
	ar0 = 0x18
	ar1 = 0x19
	push	acc
	push	b
	push	dpl
	push	dph
	push	psw
	mov	psw,#0x18
;nerd.c:173: TF2 = 0;
;     genIfx
;     genIfxJump
;	Peephole 112.a	removed ljmp by inverse jump logic
	jb	_TF2,00102$
00128$:
;nerd.c:171: if(TF2 == 0) return;
;     genRet
	ljmp	00117$
00102$:
;nerd.c:173: TF2 = 0;
;     genAssign
	clr	_TF2
;     genIfx
;     genIfxJump
;	Peephole 112.a	removed ljmp by inverse jump logic
	jb	_kbd_idle_mode,00110$
00129$:
;nerd.c:177: if(--kbd_idle_counter == 0) {
;     genMinus
;     genMinusDec
	dec	_kbd_idle_counter
;     genCmpEq
	mov	a,_kbd_idle_counter
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00131$
00130$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00110$
00131$:
;nerd.c:178: kbd_idle_counter = kbd_idle_duration; /* reload counter */
;     genAssign
	mov	_kbd_idle_counter,_kbd_idle_duration
;nerd.c:182: while(Report.head != Report.tail) {
00110$:
;     genPointerGet
;     genFarPointerGet
	mov	dptr,#_Report
	movx	a,@dptr
	mov	r2,a
;     genPointerGet
;     genFarPointerGet
	mov	dptr,#(_Report + 0x0001)
	movx	a,@dptr
	mov	r3,a
;     genCmpEq
	mov	a,r2
	cjne	a,ar3,00132$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00117$
00132$:
;nerd.c:185: kbd_idle_counter = kbd_idle_duration;	  /* reload counter */
;     genAssign
	mov	_kbd_idle_counter,_kbd_idle_duration
;nerd.c:188: while(in1_busy == TRUE) ;
00107$:
;     genIfx
;     genIfxJump
;	Peephole 112.a	removed ljmp by inverse jump logic
	jb	_in1_busy,00107$
00133$:
;nerd.c:191: for(i=0; i<KBD_REPORT_SIZE; i++) {
;     genMult
;     genMultOneByte
	mov	a,r2
	mov	b,#0x08
	mul	ab
;     genPlus
	add	a,#(_Report + 0x0002)
	mov	r2,a
	mov	a,#((_Report + 0x0002) >> 8)
	addc	a,b
	mov	r3,a
;     genAssign
	mov	r4,#0x00
00113$:
;     genCmpLt
;     genCmp
	cjne	r4,#0x08,00134$
00134$:
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00116$
00135$:
;nerd.c:192: in1buf(i) = Report.rep[Report.head].dat[i];
;     genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,#_IN1BUF
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_IN1BUF >> 8)
	mov	r6,a
;     genCast
	mov	ar7,r4
	mov	r0,#0x00
;     genPlus
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	dpl,a
;	Peephole 236.g	used r0 instead of ar0
	mov	a,r0
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genPointerSet
;     genFarPointerSet
;	Peephole 136	removed redundant moves
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;nerd.c:191: for(i=0; i<KBD_REPORT_SIZE; i++) {
;     genPlus
;     genPlusIncr
	inc	r4
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00113$
00116$:
;nerd.c:194: Report.head = (++Report.head) & (REPORT_QUE_MAX - 1);
;     genPointerGet
;     genFarPointerGet
	mov	dptr,#_Report
	movx	a,@dptr
;     genPlus
;     genPlusIncr
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
	mov	r2,a
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#_Report
	mov	a,r2
	movx	@dptr,a
;     genAnd
	anl	ar2,#0x07
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#_Report
	mov	a,r2
	movx	@dptr,a
;nerd.c:197: in1_busy = TRUE;
;     genAssign
	setb	_in1_busy
;nerd.c:198: IN1BC = KBD_REPORT_SIZE;
;     genAssign
	mov	dptr,#_IN1BC
	mov	a,#0x08
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00110$
00117$:
	pop	psw
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'init_mcu'
;------------------------------------------------------------
;------------------------------------------------------------
;nerd.c:212: static void init_mcu(void)
;	-----------------------------------------
;	 function init_mcu
;	-----------------------------------------
_init_mcu:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;nerd.c:215: IP	= 0x02;					/* hi: timer0 */
;     genAssign
	mov	_IP,#0x02
;nerd.c:216: EIP = 0x01;					/* hi: USB	  */
;     genAssign
	mov	_EIP,#0x01
;nerd.c:219: OEA = 0xFF;					/* 1111_1111 */
;     genAssign
	mov	dptr,#_OEA
	mov	a,#0xFF
	movx	@dptr,a
;nerd.c:224: OEB = 0xB0;					/* 1011_0000 */
;     genAssign
	mov	dptr,#_OEB
	mov	a,#0xB0
	movx	@dptr,a
;nerd.c:226: PORTBCFG = 0x0C;			/* 0000_1100: use TXD1, RXD */
;     genAssign
	mov	dptr,#_PORTBCFG
	mov	a,#0x0C
	movx	@dptr,a
;nerd.c:231: OEC = 0x7F;					/* 0111_1111 */
;     genAssign
	mov	dptr,#_OEC
	mov	a,#0x7F
	movx	@dptr,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_interrupt_timer0'
;------------------------------------------------------------
;val                       Allocated with name '_init_interrupt_timer0_val_1_1'
;------------------------------------------------------------
;nerd.c:239: static void init_interrupt_timer0(void)
;	-----------------------------------------
;	 function init_interrupt_timer0
;	-----------------------------------------
_init_interrupt_timer0:
;nerd.c:243: TR0 = 0;					/* stop timer0				*/
;     genAssign
	clr	_TR0
;nerd.c:244: TF0 = 0;					/* disable timer0 interrupt */
;     genAssign
	clr	_TF0
;nerd.c:245: ET0 = 0;
;     genAssign
	clr	_ET0
;nerd.c:252: val = TMOD;					/* timer mode register */
;     genAssign
	mov	_init_interrupt_timer0_val_1_1,_TMOD
;nerd.c:255: val &= 0xF0;				/* clear bits of timer0(lo-nibble) */
;     genAnd
	anl	_init_interrupt_timer0_val_1_1,#0xF0
;nerd.c:256: val |= 0x01;				/* select mode 1				   */
;     genOr
	orl	_init_interrupt_timer0_val_1_1,#0x01
;nerd.c:257: TMOD = val;
;     genAssign
	mov	_TMOD,_init_interrupt_timer0_val_1_1
;nerd.c:262: CKCON |= 0x08;		/* 0000_x000: (T0M) clock source is CLK/24/4 */
;     genOr
	orl	_CKCON,#0x08
;nerd.c:264: TL0 = TIMER0_LO;			/* initialize counter */
;     genAssign
	mov	_TL0,#0x4F
;nerd.c:265: TH0 = TIMER0_HI;
;     genAssign
	mov	_TH0,#0xFB
;nerd.c:267: ET0 = 1;					/* enable timer0 interrupt	   */
;     genAssign
	setb	_ET0
;nerd.c:268: TF0 = 0;					/* clear timer0 interrupt flag */
;     genAssign
	clr	_TF0
;nerd.c:269: TR0 = 1;					/* run timer0				   */
;     genAssign
	setb	_TR0
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_interrupt_timer2'
;------------------------------------------------------------
;------------------------------------------------------------
;nerd.c:276: static void init_interrupt_timer2(void)
;	-----------------------------------------
;	 function init_interrupt_timer2
;	-----------------------------------------
_init_interrupt_timer2:
;nerd.c:278: kbd_idle_counter = kbd_idle_duration; /* set idle counter */
;     genAssign
	mov	_kbd_idle_counter,_kbd_idle_duration
;nerd.c:285: T2CON  = 0x00;
;     genAssign
	mov	_T2CON,#0x00
;nerd.c:286: RCAP2H = TH2 = 0xc1;
;     genAssign
	mov	_TH2,#0xC1
;     genAssign
	mov	_RCAP2H,#0xC1
;nerd.c:287: RCAP2L = TL2 = 0x80;
;     genAssign
	mov	_TL2,#0x80
;     genAssign
	mov	_RCAP2L,#0x80
;nerd.c:289: ET2 = 1;						/* enable timer2 interrupt	   */
;     genAssign
	setb	_ET2
;nerd.c:290: TF2 = 0;						/* clear timer2 interrupt flag */
;     genAssign
	clr	_TF2
;nerd.c:291: TR2 = 1;						/* run timer2				   */
;     genAssign
	setb	_TR2
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enq_report'
;------------------------------------------------------------
;buf                       Allocated with name '_enq_report_buf_1_1'
;i                         Allocated to registers r6 
;next                      Allocated with name '_enq_report_next_1_1'
;same_report               Allocated to registers r2 
;------------------------------------------------------------
;nerd.c:304: static bool enq_report(const uchar *buf)
;	-----------------------------------------
;	 function enq_report
;	-----------------------------------------
_enq_report:
;     genReceive
	mov	_enq_report_buf_1_1,dpl
	mov	(_enq_report_buf_1_1 + 1),dph
	mov	(_enq_report_buf_1_1 + 2),b
;nerd.c:309: same_report = TRUE;
;     genAssign
	mov	r2,#0x01
;nerd.c:312: for(i=0; i<KBD_REPORT_SIZE; i++) {
;     genAssign
	mov	r6,#0x00
00103$:
;     genCmpLt
;     genCmp
	cjne	r6,#0x08,00124$
00124$:
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00106$
00125$:
;nerd.c:313: if(SendOld[i] == buf[i]) continue;
;     genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	add	a,#_SendOld
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_SendOld >> 8)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
	mov	r7,a
;     genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	add	a,_enq_report_buf_1_1
	mov	r0,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_enq_report_buf_1_1 + 1)
	mov	r1,a
	mov	r5,(_enq_report_buf_1_1 + 2)
;     genPointerGet
;     genGenPointerGet
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
;     genCmpEq
	mov	a,r7
	cjne	a,ar0,00126$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00105$
00126$:
;nerd.c:315: same_report = FALSE;
;     genAssign
	mov	r2,#0x00
;nerd.c:316: break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00106$
00105$:
;nerd.c:312: for(i=0; i<KBD_REPORT_SIZE; i++) {
;     genPlus
;     genPlusIncr
	inc	r6
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00103$
00106$:
;nerd.c:320: if(same_report == TRUE) return FALSE;
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r2,#0x01,00108$
;00127$:
;	Peephole 200	removed redundant sjmp
00128$:
;     genRet
	mov	dpl,#0x00
;	Peephole 251.a	replaced ljmp to ret with ret
	ret
00108$:
;nerd.c:322: next = (Report.tail + 1) & (REPORT_QUE_MAX - 1);
;     genPointerGet
;     genFarPointerGet
	mov	dptr,#(_Report + 0x0001)
	movx	a,@dptr
	mov	r5,a
;     genPlus
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r5 instead of ar5
	add	a,r5
;     genAnd
	anl	a,#0x07
	mov	_enq_report_next_1_1,a
;nerd.c:325: if(next == Report.head) return FALSE;
;     genPointerGet
;     genFarPointerGet
	mov	dptr,#_Report
	movx	a,@dptr
	mov	r6,a
;     genCmpEq
	mov	a,_enq_report_next_1_1
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	a,ar6,00123$
;00129$:
;	Peephole 200	removed redundant sjmp
00130$:
;     genRet
	mov	dpl,#0x00
;nerd.c:327: for(i=0; i<KBD_REPORT_SIZE; i++) {
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00123$:
;     genAssign
	mov	r6,#0x00
00111$:
;     genCmpLt
;     genCmp
	cjne	r6,#0x08,00131$
00131$:
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00114$
00132$:
;nerd.c:328: Report.rep[Report.tail].dat[i] = SendOld[i] = buf[i];
;     genPointerGet
;     genFarPointerGet
	mov	dptr,#(_Report + 0x0001)
	movx	a,@dptr
;     genMult
;     genMultOneByte
;	Peephole 105	removed redundant mov
	mov	r7,a
	mov	b,#0x08
	mul	ab
;     genPlus
	add	a,#(_Report + 0x0002)
	mov	r7,a
	mov	a,#((_Report + 0x0002) >> 8)
	addc	a,b
	mov	r0,a
;     genCast
	mov	ar1,r6
	mov	r5,#0x00
;     genPlus
;	Peephole 236.g	used r1 instead of ar1
	mov	a,r1
;	Peephole 236.a	used r7 instead of ar7
	add	a,r7
	mov	r7,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
;	Peephole 236.b	used r0 instead of ar0
	addc	a,r0
	mov	r0,a
;     genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	add	a,#_SendOld
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_SendOld >> 8)
	mov	r1,a
;     genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	add	a,_enq_report_buf_1_1
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_enq_report_buf_1_1 + 1)
	mov	r3,a
	mov	r4,(_enq_report_buf_1_1 + 2)
;     genPointerGet
;     genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;     genPointerSet
;     genFarPointerSet
;	Peephole 136	removed redundant moves
	mov	r2,a
	mov	dpl,r5
	mov	dph,r1
	movx	@dptr,a
;     genPointerSet
;     genFarPointerSet
	mov	dpl,r7
	mov	dph,r0
	mov	a,r2
	movx	@dptr,a
;nerd.c:330: __debug_out(buf[i]);
;     genCall
	mov	dpl,r2
	push	ar6
	lcall	_PutChar
	pop	ar6
;nerd.c:327: for(i=0; i<KBD_REPORT_SIZE; i++) {
;     genPlus
;     genPlusIncr
	inc	r6
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00111$
00114$:
;nerd.c:333: Report.tail = next; /* ﾗｲﾄﾎﾟｲﾝﾀ更新 */
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_Report + 0x0001)
	mov	a,_enq_report_next_1_1
	movx	@dptr,a
;nerd.c:335: return TRUE;
;     genRet
	mov	dpl,#0x01
00115$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_map_num'
;------------------------------------------------------------
;------------------------------------------------------------
;nerd.c:343: static uchar get_map_num(void)
;	-----------------------------------------
;	 function get_map_num
;	-----------------------------------------
_get_map_num:
;nerd.c:345: if(NerdStat >= KEYMAP_NLOCK) return KEYMAP_NLOCK; /* with Nerd Lock */
;     genCmpLt
	mov	r0,#_NerdStat
;     genCmp
	cjne	@r0,#0x05,00109$
00109$:
;     genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00102$
00110$:
;     genRet
	mov	dpl,#0x05
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00102$:
;nerd.c:346: if(NerdStat >= KEYMAP_NFUNC) return KEYMAP_NFUNC; /* with Nerd Func */
;     genCmpLt
	mov	r0,#_NerdStat
;     genCmp
	cjne	@r0,#0x04,00111$
00111$:
;     genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00104$
00112$:
;     genRet
	mov	dpl,#0x04
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00104$:
;nerd.c:348: return NerdStat;
;     genRet
	mov	r0,#_NerdStat
	mov	dpl,@r0
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'update_nerd_status'
;------------------------------------------------------------
;sw                        Allocated with name '_update_nerd_status_PARM_2'
;usage_id                  Allocated to registers r2 
;stat                      Allocated to registers r2 
;mask                      Allocated to registers r4 
;ret                       Allocated to registers r3 
;------------------------------------------------------------
;nerd.c:358: static bool update_nerd_status(const uchar usage_id, const uchar sw)
;	-----------------------------------------
;	 function update_nerd_status
;	-----------------------------------------
_update_nerd_status:
;     genReceive
	mov	r2,dpl
;nerd.c:362: ret = FALSE;
;     genAssign
	mov	r3,#0x00
;nerd.c:365: if((usage_id < USID_NERD_START) || (usage_id > USID_NERD_END)) return ret;
;     genCmpLt
;     genCmp
	cjne	r2,#0xE9,00120$
00120$:
;     genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00101$
00121$:
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r2
	add	a,#0xff - 0xEC
	jnc	00102$
00122$:
00101$:
;     genRet
	mov	dpl,#0x00
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00102$:
;nerd.c:367: mask = 1 << ((usage_id & 0x07) - 1);
;     genAnd
	mov	a,#0x07
	anl	a,r2
	mov	r4,a
;     genCast
	mov	r5,#0x00
;     genMinus
;     genMinusDec
	dec	r4
	cjne	r4,#0xff,00123$
	dec	r5
00123$:
;     genLeftShift
	mov	b,r4
	inc	b
	mov	r4,#0x01
	mov	r5,#0x00
	sjmp	00125$
00124$:
;	Peephole 254	optimized left shift
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00125$:
	djnz	b,00124$
;     genCast
;nerd.c:369: if(usage_id == USID_NERD_LOCK) {
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r2,#0xEC,00105$
;00126$:
;	Peephole 200	removed redundant sjmp
00127$:
;nerd.c:371: stat = (sw != KEY_SW_PRESSED)? NerdStat ^ mask : NerdStat;
;     genCmpEq
	mov	a,_update_nerd_status_PARM_2
	jnz	00128$
	mov	a,#0x01
	sjmp	00129$
00128$:
	clr	a
00129$:
;     genNot
;	Peephole 105	removed redundant mov
	mov	r2,a
	cjne	a,#0x01,00130$
00130$:
	clr	a
	rlc	a
;     genIfx
;	Peephole 105	removed redundant mov
	mov	r2,a
;     genIfxJump
;	Peephole 110	removed ljmp by inverse jump logic
	jz	00111$
00131$:
;     genXor
	mov	r0,#_NerdStat
	mov	a,r4
	xrl	a,@r0
	mov	r2,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00112$
00111$:
;     genAssign
	mov	r0,#_NerdStat
	mov	ar2,@r0
00112$:
;     genAssign
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00106$
00105$:
;nerd.c:374: stat = (sw == KEY_SW_PRESSED)? NerdStat | mask : NerdStat & ~mask;
;     genCmpEq
	mov	a,_update_nerd_status_PARM_2
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00133$
00132$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00113$
00133$:
;     genOr
	mov	r0,#_NerdStat
	mov	a,r4
	orl	a,@r0
	mov	r5,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00114$
00113$:
;	genCpl
	mov	a,r4
	cpl	a
;     genAnd
;	Peephole 177.d	removed redundant move
	mov	r4,a
	mov	r0,#_NerdStat
	anl	a,@r0
	mov	r5,a
00114$:
;     genAssign
	mov	ar2,r5
00106$:
;nerd.c:377: if(NerdStat != stat) {
;     genCmpEq
	mov	r0,#_NerdStat
	mov	a,@r0
	cjne	a,ar2,00134$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00108$
00134$:
;nerd.c:378: NerdStat = stat;	   /* 更新 */
;     genAssign
	mov	r0,#_NerdStat
	mov	@r0,ar2
;nerd.c:379: ret = TRUE;
;     genAssign
	mov	r3,#0x01
00108$:
;nerd.c:382: return ret;
;     genRet
	mov	dpl,r3
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'adjust_mod'
;------------------------------------------------------------
;new                       Allocated with name '_adjust_mod_PARM_2'
;stat                      Allocated with name '_adjust_mod_PARM_3'
;map_num                   Allocated to registers r2 
;ret                       Allocated to registers r2 
;curr                      Allocated to registers r3 
;cmd                       Allocated to registers r2 
;------------------------------------------------------------
;nerd.c:392: static uchar adjust_mod(uchar map_num, uchar new, uchar stat)
;	-----------------------------------------
;	 function adjust_mod
;	-----------------------------------------
_adjust_mod:
;     genReceive
	mov	r2,dpl
;nerd.c:396: __debug_out(map_num|0xD0);
;     genOr
	mov	a,#0xD0
	orl	a,r2
	mov	dpl,a
;     genCall
	push	ar2
	lcall	_PutChar
	pop	ar2
;nerd.c:397: __debug_out(new|0xE0);
;     genOr
	mov	a,#0xE0
	orl	a,_adjust_mod_PARM_2
	mov	dpl,a
;     genCall
	push	ar2
	lcall	_PutChar
	pop	ar2
;nerd.c:398: __debug_out(stat|0xF0);
;     genOr
	mov	a,#0xF0
	orl	a,_adjust_mod_PARM_3
	mov	dpl,a
;     genCall
	push	ar2
	lcall	_PutChar
	pop	ar2
;nerd.c:400: curr = SendCurr[0];
;     genPointerGet
;     genFarPointerGet
	mov	dptr,#_SendCurr
	movx	a,@dptr
	mov	r3,a
;nerd.c:402: switch(map_num) {
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r2
	add	a,#0xff - 0x05
	jnc	00154$
	ljmp	00137$
00154$:
;     genJumpTab
;	Peephole 254	optimized left shift
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#00155$
	jmp	@a+dptr
00155$:
	ljmp	00101$
	ljmp	00112$
	ljmp	00123$
	ljmp	00134$
	ljmp	00135$
	ljmp	00136$
;nerd.c:403: case KEYMAP_PLAIN:			/* Plain (without Nerd X)				*/
00101$:
;nerd.c:404: switch(stat) {
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,_adjust_mod_PARM_3
	add	a,#0xff - 0x07
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00110$
00156$:
;     genJumpTab
;	Peephole 254	optimized left shift
	mov	a,_adjust_mod_PARM_3
	add	a,_adjust_mod_PARM_3
	add	a,_adjust_mod_PARM_3
	mov	dptr,#00157$
	jmp	@a+dptr
00157$:
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
	ljmp	00106$
	ljmp	00107$
	ljmp	00108$
	ljmp	00109$
;nerd.c:405: case MODSTAT_MOD_PRESSED:		cmd = MODADJ_UPDATE;	break;
00102$:
;     genAssign
	mov	r2,#0x01
	ljmp	00138$
;nerd.c:406: case MODSTAT_MOD_RELEASED:		cmd = MODADJ_UPDATE;	break;
00103$:
;     genAssign
	mov	r2,#0x01
	ljmp	00138$
;nerd.c:407: case MODSTAT_INH_PRESSED:		cmd = MODADJ_NOTCHANGE;	break;
00104$:
;     genAssign
	mov	r2,#0x00
	ljmp	00138$
;nerd.c:408: case MODSTAT_INH_REL_NOT_FOUND:	cmd = MODADJ_NOTCHANGE;	break;
00105$:
;     genAssign
	mov	r2,#0x00
	ljmp	00138$
;nerd.c:409: case MODSTAT_INH_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
00106$:
;     genAssign
	mov	r2,#0x00
	ljmp	00138$
;nerd.c:410: case MODSTAT_GEN_PRESSED:		cmd = MODADJ_NOTCHANGE;	break;
00107$:
;     genAssign
	mov	r2,#0x00
	ljmp	00138$
;nerd.c:411: case MODSTAT_GEN_REL_NOT_FOUND: cmd = MODADJ_NOTCHANGE;	break;
00108$:
;     genAssign
	mov	r2,#0x00
	ljmp	00138$
;nerd.c:412: case MODSTAT_GEN_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
00109$:
;     genAssign
	mov	r2,#0x00
	ljmp	00138$
;nerd.c:413: default:						cmd = MODADJ_NOTCHANGE;
00110$:
;     genAssign
	mov	r2,#0x00
;nerd.c:415: break;
	ljmp	00138$
;nerd.c:416: case KEYMAP_NCTRL:			/* Nerd Control							*/
00112$:
;nerd.c:417: switch(stat) {
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,_adjust_mod_PARM_3
	add	a,#0xff - 0x07
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00121$
00158$:
;     genJumpTab
;	Peephole 254	optimized left shift
	mov	a,_adjust_mod_PARM_3
	add	a,_adjust_mod_PARM_3
	add	a,_adjust_mod_PARM_3
	mov	dptr,#00159$
	jmp	@a+dptr
00159$:
	ljmp	00113$
	ljmp	00114$
	ljmp	00115$
	ljmp	00116$
	ljmp	00117$
	ljmp	00118$
	ljmp	00119$
	ljmp	00120$
;nerd.c:418: case MODSTAT_MOD_PRESSED:		cmd = MODADJ_UPDATE;	break;
00113$:
;     genAssign
	mov	r2,#0x01
	ljmp	00138$
;nerd.c:419: case MODSTAT_MOD_RELEASED:		cmd = MODADJ_UPDATE;	break;
00114$:
;     genAssign
	mov	r2,#0x01
	ljmp	00138$
;nerd.c:420: case MODSTAT_INH_PRESSED:		cmd = MODADJ_REVERT;	break;
00115$:
;     genAssign
	mov	r2,#0x02
	ljmp	00138$
;nerd.c:421: case MODSTAT_INH_REL_NOT_FOUND:	cmd = MODADJ_NOTCHANGE;	break;
00116$:
;     genAssign
	mov	r2,#0x00
	ljmp	00138$
;nerd.c:422: case MODSTAT_INH_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
00117$:
;     genAssign
	mov	r2,#0x00
	ljmp	00138$
;nerd.c:423: case MODSTAT_GEN_PRESSED:		cmd = MODADJ_RESET;		break;
00118$:
;     genAssign
	mov	r2,#0x03
;nerd.c:424: case MODSTAT_GEN_REL_NOT_FOUND:	cmd = MODADJ_NOTCHANGE;	break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00119$:
;     genAssign
	mov	r2,#0x00
;nerd.c:425: case MODSTAT_GEN_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00120$:
;     genAssign
	mov	r2,#0x00
;nerd.c:426: default:						cmd = MODADJ_NOTCHANGE;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00121$:
;     genAssign
	mov	r2,#0x00
;nerd.c:428: break;
;nerd.c:429: case KEYMAP_NMETA:			/* Nerd Meta							*/
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00123$:
;nerd.c:430: switch(stat) {
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,_adjust_mod_PARM_3
	add	a,#0xff - 0x07
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00132$
00160$:
;     genJumpTab
;	Peephole 254	optimized left shift
	mov	a,_adjust_mod_PARM_3
	add	a,_adjust_mod_PARM_3
	add	a,_adjust_mod_PARM_3
	mov	dptr,#00161$
	jmp	@a+dptr
00161$:
	ljmp	00124$
	ljmp	00125$
	ljmp	00126$
	ljmp	00127$
	ljmp	00128$
	ljmp	00129$
	ljmp	00130$
	ljmp	00131$
;nerd.c:431: case MODSTAT_MOD_PRESSED:		cmd = MODADJ_UPDATE;	break;
00124$:
;     genAssign
	mov	r2,#0x01
;nerd.c:432: case MODSTAT_MOD_RELEASED:		cmd = MODADJ_UPDATE;	break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00125$:
;     genAssign
	mov	r2,#0x01
;nerd.c:433: case MODSTAT_INH_PRESSED:		cmd = MODADJ_REVERT;	break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00126$:
;     genAssign
	mov	r2,#0x02
;nerd.c:434: case MODSTAT_INH_REL_NOT_FOUND:	cmd = MODADJ_NOTCHANGE;	break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00127$:
;     genAssign
	mov	r2,#0x00
;nerd.c:435: case MODSTAT_INH_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00128$:
;     genAssign
	mov	r2,#0x00
;nerd.c:436: case MODSTAT_GEN_PRESSED:		cmd = MODADJ_RESET;		break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00129$:
;     genAssign
	mov	r2,#0x03
;nerd.c:437: case MODSTAT_GEN_REL_NOT_FOUND:	cmd = MODADJ_NOTCHANGE;	break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00130$:
;     genAssign
	mov	r2,#0x00
;nerd.c:438: case MODSTAT_GEN_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00131$:
;     genAssign
	mov	r2,#0x00
;nerd.c:439: default:						cmd = MODADJ_NOTCHANGE;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00132$:
;     genAssign
	mov	r2,#0x00
;nerd.c:441: break;
;nerd.c:442: case KEYMAP_NCTRL_NMETA:	/* Nerd Control + Nerd Meta				*/
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00134$:
;nerd.c:443: cmd = MODADJ_UPDATE;
;     genAssign
	mov	r2,#0x01
;nerd.c:444: break;
;nerd.c:445: case KEYMAP_NFUNC:			/* Nerd Function						*/
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00135$:
;nerd.c:446: cmd = MODADJ_UPDATE;
;     genAssign
	mov	r2,#0x01
;nerd.c:447: break;
;nerd.c:448: case KEYMAP_NLOCK:			/* Nerd Lock							*/
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00136$:
;nerd.c:449: cmd = MODADJ_UPDATE;
;     genAssign
	mov	r2,#0x01
;nerd.c:450: break;
;nerd.c:451: default:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00137$:
;nerd.c:452: cmd = MODADJ_UPDATE;
;     genAssign
	mov	r2,#0x01
;nerd.c:453: }
00138$:
;nerd.c:455: switch(cmd) {
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r2
	add	a,#0xff - 0x05
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00146$
00162$:
;     genJumpTab
;	Peephole 254	optimized left shift
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#00163$
	jmp	@a+dptr
00163$:
	ljmp	00139$
	ljmp	00140$
	ljmp	00141$
	ljmp	00142$
	ljmp	00143$
	ljmp	00144$
;nerd.c:456: case MODADJ_NOTCHANGE:	 /* 変更なし */
00139$:
;nerd.c:457: ret = curr;
;     genAssign
	mov	ar2,r3
;nerd.c:458: break;
;nerd.c:459: case MODADJ_UPDATE:		 /* 更新 */
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00146$
00140$:
;nerd.c:460: ModSave = ret = new;
;     genAssign
	mov	r2,_adjust_mod_PARM_2
;     genAssign
	mov	r0,#_ModSave
	mov	@r0,ar2
;nerd.c:461: break;
;nerd.c:462: case MODADJ_REVERT:		 /* UPDATEした時の値に戻す */
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00146$
00141$:
;nerd.c:463: ret = ModSave;
;     genAssign
	mov	r0,#_ModSave
	mov	ar2,@r0
;nerd.c:464: break;
;nerd.c:465: case MODADJ_RESET:		 /* ﾘｾｯﾄ */
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00146$
00142$:
;nerd.c:467: ret = 0x00;
;     genAssign
	mov	r2,#0x00
;nerd.c:468: break;
;nerd.c:469: case MODADJ_SAVE_RESET:	 /* 保存してﾘｾｯﾄする */
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00146$
00143$:
;nerd.c:470: ModSave = new;
;     genAssign
	mov	r3,_adjust_mod_PARM_2
;     genAssign
	mov	r0,#_ModSave
	mov	@r0,ar3
;nerd.c:471: ret = 0x00;
;     genAssign
	mov	r2,#0x00
;nerd.c:472: case MODADJ_OTHER:
00144$:
;nerd.c:474: }
00146$:
;nerd.c:478: return ret;
;     genRet
	mov	dpl,r2
00147$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_mapset_num'
;------------------------------------------------------------
;wait                      Allocated to registers r3 r4 
;scan                      Allocated to registers r5 
;sw                        Allocated to registers r6 
;ret                       Allocated to registers r2 
;------------------------------------------------------------
;nerd.c:486: static uchar get_mapset_num(void)
;	-----------------------------------------
;	 function get_mapset_num
;	-----------------------------------------
_get_mapset_num:
;nerd.c:491: __debug_hi();
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
	mov	dptr,#_OUTA
	movx	a,@dptr
	mov	r2,a
	orl	a,#0x10
	movx	@dptr,a
;nerd.c:493: ret = 0;				  /* 初期状態は Keymap0 */
;     genAssign
	mov	r2,#0x00
;nerd.c:497: while(wait-- > 0) {
;     genAssign
	mov	r3,#0xFF
	mov	r4,#0xFF
00108$:
;     genAssign
	mov	ar5,r3
	mov	ar6,r4
;     genMinus
;     genMinusDec
	dec	r3
	cjne	r3,#0xff,00118$
	dec	r4
00118$:
;     genIfx
	mov	a,r5
	orl	a,r6
;     genIfxJump
;	Peephole 110	removed ljmp by inverse jump logic
	jz	00110$
00119$:
;nerd.c:499: if(UpdatedKeys.head == UpdatedKeys.tail) continue;
;     genPointerGet
;     genNearPointerGet
	mov	r0,#_UpdatedKeys
	mov	ar5,@r0
;     genPointerGet
;     genNearPointerGet
	mov	r0,#(_UpdatedKeys + 0x0001)
	mov	ar6,@r0
;     genCmpEq
	mov	a,r5
	cjne	a,ar6,00120$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00108$
00120$:
;nerd.c:502: scan = UpdatedKeys.dat[UpdatedKeys.head].scan;
;     genLeftShift
;     genLeftShiftLiteral
;     genlshOne
;	Peephole 254	optimized left shift
	mov	a,r5
	add	a,r5
;     genPlus
;	Peephole 177.b	removed redundant mov
	mov	r5,a
	add	a,#(_UpdatedKeys + 0x0002)
	mov	r0,a
;     genPointerGet
;     genNearPointerGet
	mov	ar5,@r0
;nerd.c:503: sw =   UpdatedKeys.dat[UpdatedKeys.head].sw;
;     genPlus
;     genPlusIncr
	inc	r0
;     genPointerGet
;     genNearPointerGet
	mov	ar6,@r0
;nerd.c:506: if((scan == SCAN_KMAPSET_SELECT) && (sw == KEY_SW_PRESSED)) {
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r5,#0x1F,00104$
;00121$:
;	Peephole 200	removed redundant sjmp
00122$:
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r6,#0x00,00104$
;00123$:
;	Peephole 200	removed redundant sjmp
00124$:
;nerd.c:507: ret = 1;
;     genAssign
	mov	r2,#0x01
00104$:
;nerd.c:511: UpdatedKeys.head = (++UpdatedKeys.head) & (UPDATE_KEYS_MAX - 1);
;     genPointerGet
;     genNearPointerGet
;     genPlus
;     genPlusIncr
;     genPointerSet
;     genNearPointerSet
;	Peephole 133	removed redundant moves
	mov	r0,#_UpdatedKeys
	inc	@r0
	mov	ar5,@r0
;     genAnd
	mov	a,#0x0F
	anl	a,r5
;     genPointerSet
;     genNearPointerSet
	mov	r0,#_UpdatedKeys
	mov	@r0,acc
;nerd.c:514: if(ret==1) break;
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r2,#0x01,00108$
;00125$:
;	Peephole 200	removed redundant sjmp
00126$:
00110$:
;nerd.c:517: UpdatedKeys.head = UpdatedKeys.tail; /* ｽｷｬﾝｷｭｰを空にする */
;     genPointerGet
;     genNearPointerGet
	mov	r0,#(_UpdatedKeys + 0x0001)
	mov	ar3,@r0
;     genPointerSet
;     genNearPointerSet
	mov	r0,#_UpdatedKeys
	mov	@r0,ar3
;nerd.c:521: __debug_lo();
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
	mov	dptr,#_OUTA
	movx	a,@dptr
	mov	r3,a
	anl	a,#0xEF
	movx	@dptr,a
;nerd.c:523: return ret;
;     genRet
	mov	dpl,r2
00111$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_parent_map_num'
;------------------------------------------------------------
;usage_id                  Allocated to registers r2 
;map                       Allocated to registers r2 
;------------------------------------------------------------
;nerd.c:531: static uchar get_parent_map_num(const uchar usage_id)
;	-----------------------------------------
;	 function get_parent_map_num
;	-----------------------------------------
_get_parent_map_num:
;     genReceive
	mov	r2,dpl
;nerd.c:535: switch(usage_id) {
;     genCmpEq
	cjne	r2,#0xEE,00109$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00109$:
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;nerd.c:536: case USID_INHERIT_CTRL:	 map = KEYMAP_NCTRL; break;
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r2,#0xEF,00103$
	sjmp	00102$
;00110$:
00101$:
;     genAssign
	mov	r2,#0x01
;nerd.c:537: case USID_INHERIT_META:	 map = KEYMAP_NMETA; break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00102$:
;     genAssign
	mov	r2,#0x02
;nerd.c:538: default:                 map = KEYMAP_PLAIN;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00103$:
;     genAssign
	mov	r2,#0x00
;nerd.c:539: }
00104$:
;nerd.c:541: return map;
;     genRet
	mov	dpl,r2
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_curr_empty'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;nerd.c:550: static void send_curr_empty(void)
;	-----------------------------------------
;	 function send_curr_empty
;	-----------------------------------------
_send_curr_empty:
;nerd.c:555: for(i=2; i<KBD_REPORT_SIZE; i++)
;     genAssign
	mov	r2,#0x02
00101$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x88
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00105$
00109$:
;nerd.c:556: SendCurr[i] = USID_NONE;
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_SendCurr
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_SendCurr >> 8)
	mov	dph,a
;     genPointerSet
;     genFarPointerSet
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;nerd.c:555: for(i=2; i<KBD_REPORT_SIZE; i++)
;     genPlus
;     genPlusIncr
	inc	r2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_curr_append_key'
;------------------------------------------------------------
;usage_id                  Allocated to registers r2 
;i                         Allocated to registers r4 
;ret                       Allocated to registers r3 
;------------------------------------------------------------
;nerd.c:565: static bool send_curr_append_key(const uchar usage_id)
;	-----------------------------------------
;	 function send_curr_append_key
;	-----------------------------------------
_send_curr_append_key:
;     genReceive
	mov	r2,dpl
;nerd.c:570: ret = FALSE;
;     genAssign
	mov	r3,#0x00
;nerd.c:572: for(i=2; i<KBD_REPORT_SIZE; i++) {
;     genAssign
	mov	r4,#0x02
00103$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x88
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00106$
00112$:
;nerd.c:573: if(SendCurr[i] == USID_NONE) {
;     genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,#_SendCurr
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_SendCurr >> 8)
	mov	r6,a
;     genPointerGet
;     genFarPointerGet
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
;     genCmpEq
;	Peephole 115.b	jump optimization
	mov	r7,a
	jz	00114$
00113$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00105$
00114$:
;nerd.c:575: SendCurr[i] = usage_id;
;     genPointerSet
;     genFarPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	a,r2
	movx	@dptr,a
;nerd.c:576: ret = TRUE;
;     genAssign
	mov	r3,#0x01
;nerd.c:577: break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00106$
00105$:
;nerd.c:572: for(i=2; i<KBD_REPORT_SIZE; i++) {
;     genPlus
;     genPlusIncr
	inc	r4
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00103$
00106$:
;nerd.c:581: return ret;
;     genRet
	mov	dpl,r3
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_curr_remove_key'
;------------------------------------------------------------
;usage_id                  Allocated to registers r2 
;i                         Allocated to registers r4 
;j                         Allocated to registers r6 
;ret                       Allocated to registers r3 
;------------------------------------------------------------
;nerd.c:590: static bool send_curr_remove_key(const uchar usage_id)
;	-----------------------------------------
;	 function send_curr_remove_key
;	-----------------------------------------
_send_curr_remove_key:
;     genReceive
	mov	r2,dpl
;nerd.c:595: ret = FALSE;
;     genAssign
	mov	r3,#0x00
;nerd.c:597: for(i=2; i<KBD_REPORT_SIZE; i++) {
;     genAssign
	mov	r4,#0x02
;     genAssign
	mov	r5,#0x02
00103$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x88
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00106$
00118$:
;nerd.c:598: if(SendCurr[i] != usage_id) continue;
;     genPlus
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	add	a,#_SendCurr
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_SendCurr >> 8)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genCmpEq
;	Peephole 105	removed redundant mov
	mov	r6,a
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	a,ar2,00105$
;00119$:
;	Peephole 200	removed redundant sjmp
00120$:
;nerd.c:601: for(j=i+1; j<KBD_REPORT_SIZE; j++) {
;     genPlus
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	mov	r6,a
;     genAssign
00107$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x88
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00110$
00121$:
;nerd.c:602: SendCurr[j-1] = SendCurr[j];
;     genMinus
;     genMinusDec
	mov	a,r6
	dec	a
;     genPlus
	add	a,#_SendCurr
	mov	r7,a
;	Peephole 240	use clr instead of addc a,#0
	clr	a
	addc	a,#(_SendCurr >> 8)
	mov	r0,a
;     genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	add	a,#_SendCurr
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_SendCurr >> 8)
	mov	dph,a
;     genPointerGet
;     genFarPointerGet
	movx	a,@dptr
;     genPointerSet
;     genFarPointerSet
;	Peephole 136	removed redundant moves
	mov	r1,a
	mov	dpl,r7
	mov	dph,r0
	movx	@dptr,a
;nerd.c:601: for(j=i+1; j<KBD_REPORT_SIZE; j++) {
;     genPlus
;     genPlusIncr
	inc	r6
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00107$
00110$:
;nerd.c:604: SendCurr[KBD_REPORT_SIZE-1] = USID_NONE; /* 末尾は"ｷｰなし"にする */
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_SendCurr + 0x0007)
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;nerd.c:605: ret = TRUE;
;     genAssign
	mov	r3,#0x01
;nerd.c:606: break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00106$
00105$:
;nerd.c:597: for(i=2; i<KBD_REPORT_SIZE; i++) {
;     genPlus
;     genPlusIncr
	inc	r5
;     genAssign
	mov	ar4,r5
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00103$
00106$:
;nerd.c:609: return ret;
;     genRet
	mov	dpl,r3
00111$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'is_mod_key'
;------------------------------------------------------------
;usage_id                  Allocated to registers r2 
;ret                       Allocated to registers r3 
;------------------------------------------------------------
;nerd.c:618: static bool is_mod_key(const uchar usage_id)
;	-----------------------------------------
;	 function is_mod_key
;	-----------------------------------------
_is_mod_key:
;     genReceive
	mov	r2,dpl
;nerd.c:622: ret = FALSE;
;     genAssign
	mov	r3,#0x00
;nerd.c:624: if((usage_id >= USID_MOD_START) && (usage_id <= USID_MOD_END))
;     genCmpLt
;     genCmp
	cjne	r2,#0xE0,00112$
00112$:
;     genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00104$
00113$:
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r2
	add	a,#0xff - 0xE7
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00104$
00114$:
;nerd.c:625: ret = TRUE;
;     genAssign
	mov	r3,#0x01
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00105$
00104$:
;nerd.c:626: else if(usage_id == USID_NERD_CTRL)
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r2,#0xE9,00105$
;00115$:
;	Peephole 200	removed redundant sjmp
00116$:
;nerd.c:627: ret = TRUE;
;     genAssign
	mov	r3,#0x01
00105$:
;nerd.c:631: return ret;
;     genRet
	mov	dpl,r3
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nerd_loop'
;------------------------------------------------------------
;scan                      Allocated to registers r2 
;sw                        Allocated with name '_nerd_loop_sw_1_1'
;usid                      Allocated to registers r4 
;usid_orig                 Allocated to registers r3 
;map                       Allocated to registers r5 
;mask                      Allocated to registers r3 
;mod_new                   Allocated to registers r2 
;mod_stat                  Allocated with name '_nerd_loop_mod_stat_1_1'
;map_old                   Allocated to registers r5 
;sloc0                     Allocated with name '_nerd_loop_sloc0_1_0'
;------------------------------------------------------------
;nerd.c:639: static void nerd_loop(void)
;	-----------------------------------------
;	 function nerd_loop
;	-----------------------------------------
_nerd_loop:
;nerd.c:644: while(1) {
00143$:
;nerd.c:646: if(UpdatedKeys.head == UpdatedKeys.tail) continue;
;     genPointerGet
;     genNearPointerGet
	mov	r0,#_UpdatedKeys
	mov	ar2,@r0
;     genPointerGet
;     genNearPointerGet
	mov	r0,#(_UpdatedKeys + 0x0001)
	mov	ar3,@r0
;     genCmpEq
	mov	a,r2
	cjne	a,ar3,00181$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00143$
00181$:
;nerd.c:649: scan = UpdatedKeys.dat[UpdatedKeys.head].scan;
;     genLeftShift
;     genLeftShiftLiteral
;     genlshOne
;	Peephole 254	optimized left shift
	mov	a,r2
	add	a,r2
;     genPlus
;	Peephole 177.b	removed redundant mov
	mov	r2,a
	add	a,#(_UpdatedKeys + 0x0002)
	mov	r0,a
;     genPointerGet
;     genNearPointerGet
	mov	ar2,@r0
;nerd.c:650: sw =   UpdatedKeys.dat[UpdatedKeys.head].sw;
;     genPlus
;     genPlusIncr
	inc	r0
;     genPointerGet
;     genNearPointerGet
	mov	_nerd_loop_sw_1_1,@r0
;nerd.c:653: usid = Keymap[MapSet][KEYMAP_PLAIN][scan];
;     genCast
	mov	r0,#_MapSet
	mov	ar4,@r0
	mov	r5,#0x00
;     genAssign
	mov	__mulint_PARM_2,#0x80
	mov	(__mulint_PARM_2 + 1),#0x01
;     genCall
	mov	dpl,r4
	mov	dph,r5
	push	ar2
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar2
;     genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,#_Keymap
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	addc	a,#(_Keymap >> 8)
	mov	r5,a
;     genCast
	mov	ar6,r2
	mov	r7,#0x00
;     genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	mov	dpl,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
;nerd.c:654: map_old = get_map_num(); /* 変更前のｷｰﾏｯﾌﾟ番号を保存 */
;     genCall
	push	ar2
	push	ar4
	lcall	_get_map_num
	mov	r5,dpl
	pop	ar4
	pop	ar2
;nerd.c:657: if(update_nerd_status(usid, sw) == TRUE) {
;     genAssign
	mov	_update_nerd_status_PARM_2,_nerd_loop_sw_1_1
;     genCall
	mov	dpl,r4
	push	ar2
	push	ar5
	lcall	_update_nerd_status
	mov	r6,dpl
	pop	ar5
	pop	ar2
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r6,#0x01,00104$
;00182$:
;	Peephole 200	removed redundant sjmp
00183$:
;nerd.c:659: send_curr_empty();			  /* 押下なしのﾚﾎﾟｰﾄを作成 */
;     genCall
	push	ar2
	push	ar5
	lcall	_send_curr_empty
	pop	ar5
	pop	ar2
;nerd.c:660: ScanWith[map_old] = SCAN_EMPTY;
;     genPlus
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	add	a,#_ScanWith
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_ScanWith >> 8)
	mov	dph,a
;     genPointerSet
;     genFarPointerSet
	mov	a,#0xFF
	movx	@dptr,a
00104$:
;nerd.c:662: map = get_map_num();			  /* ｷｰﾏｯﾌﾟ番号取得 */
;     genCall
	push	ar2
	lcall	_get_map_num
	mov	r5,dpl
	pop	ar2
;nerd.c:663: usid = Keymap[MapSet][map][scan]; /* ｷｰﾏｯﾌﾟに応じた usage id を取得 */
;     genCast
	mov	r0,#_MapSet
	mov	ar6,@r0
	mov	r7,#0x00
;     genAssign
	mov	__mulint_PARM_2,#0x80
	mov	(__mulint_PARM_2 + 1),#0x01
;     genCall
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar5
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar2
;     genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	add	a,#_Keymap
	mov	r6,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
	addc	a,#(_Keymap >> 8)
	mov	r7,a
;     genMult
;     genMultOneByte
	mov	a,r5
	mov	b,#0x40
	mul	ab
;     genPlus
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r6,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
	addc	a,b
	mov	r7,a
;     genCast
	mov	_nerd_loop_sloc0_1_0,r2
	mov	(_nerd_loop_sloc0_1_0 + 1),#0x00
;     genPlus
	mov	a,_nerd_loop_sloc0_1_0
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	dpl,a
	mov	a,(_nerd_loop_sloc0_1_0 + 1)
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
;nerd.c:666: if(is_inherit_key(usid) == TRUE) {
;     genCmpLt
;     genCmp
	cjne	r4,#0xED,00184$
00184$:
;     genNot
;	Peephole 105	removed redundant mov
;     genIfx
;	Peephole 105	removed redundant mov
;	Peephole 245	optimized complement (r6 and acc set needed?)
	cpl	c
	clr	a
	rlc	a
	mov	r6,a
;     genIfxJump
;	Peephole 110	removed ljmp by inverse jump logic
	jz	00149$
00186$:
;     genCmpGt
;     genCmp
	clr	c
	mov	a,#0xEF
	subb	a,r4
;     genNot
;	Peephole 105	removed redundant mov
;     genIfx
;	Peephole 105	removed redundant mov
;	Peephole 245	optimized complement (r6 and acc set needed?)
	cpl	c
	clr	a
	rlc	a
	mov	r6,a
;     genIfxJump
;	Peephole 109	removed ljmp by inverse jump logic
	jnz	00150$
00188$:
00149$:
;     genAssign
	mov	r6,#0x00
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00151$
00150$:
;     genAssign
	mov	r6,#0x01
00151$:
;     genIfx
	mov	a,r6
;     genIfxJump
;	Peephole 110	removed ljmp by inverse jump logic
	jz	00147$
00189$:
;     genAssign
	mov	r6,#0x01
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00148$
00147$:
;     genAssign
	mov	r6,#0x00
00148$:
;     genCmpEq
	cjne	r6,#0x01,00190$
	sjmp	00191$
00190$:
	ljmp	00133$
00191$:
;nerd.c:668: usid_orig = usid;
;     genAssign
	mov	ar3,r4
;nerd.c:671: while(is_inherit_key(usid) == TRUE)
00105$:
;     genCmpLt
;     genCmp
	cjne	r4,#0xED,00192$
00192$:
;     genNot
;	Peephole 105	removed redundant mov
;     genIfx
;	Peephole 105	removed redundant mov
;	Peephole 245	optimized complement (r7 and acc set needed?)
	cpl	c
	clr	a
	rlc	a
	mov	r7,a
;     genIfxJump
;	Peephole 110	removed ljmp by inverse jump logic
	jz	00154$
00194$:
;     genCmpGt
;     genCmp
	clr	c
	mov	a,#0xEF
	subb	a,r4
;     genNot
;	Peephole 105	removed redundant mov
;     genIfx
;	Peephole 105	removed redundant mov
;	Peephole 245	optimized complement (r7 and acc set needed?)
	cpl	c
	clr	a
	rlc	a
	mov	r7,a
;     genIfxJump
;	Peephole 109	removed ljmp by inverse jump logic
	jnz	00155$
00196$:
00154$:
;     genAssign
	mov	r7,#0x00
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00156$
00155$:
;     genAssign
	mov	r7,#0x01
00156$:
;     genIfx
	mov	a,r7
;     genIfxJump
;	Peephole 110	removed ljmp by inverse jump logic
	jz	00152$
00197$:
;     genAssign
	mov	r7,#0x01
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00153$
00152$:
;     genAssign
	mov	r7,#0x00
00153$:
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r7,#0x01,00107$
;00198$:
;	Peephole 200	removed redundant sjmp
00199$:
;nerd.c:672: usid = Keymap[MapSet][get_parent_map_num(usid)][scan];
;     genCast
	mov	r0,#_MapSet
	mov	ar7,@r0
	mov	r6,#0x00
;     genAssign
	mov	__mulint_PARM_2,#0x80
	mov	(__mulint_PARM_2 + 1),#0x01
;     genCall
	mov	dpl,r7
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;     genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	add	a,#_Keymap
	mov	r6,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
	addc	a,#(_Keymap >> 8)
	mov	r7,a
;     genCall
	mov	dpl,r4
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	lcall	_get_parent_map_num
	mov	a,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
;     genMult
;     genMultOneByte
	mov	b,#0x40
	mul	ab
;     genPlus
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r6,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
	addc	a,b
	mov	r7,a
;     genPlus
	mov	a,_nerd_loop_sloc0_1_0
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	dpl,a
	mov	a,(_nerd_loop_sloc0_1_0 + 1)
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	ljmp	00105$
00107$:
;nerd.c:674: if(is_mod_key(usid_orig) == FALSE) {
;     genCall
	mov	dpl,r3
	push	ar2
	push	ar4
	push	ar5
	lcall	_is_mod_key
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar2
;     genCmpEq
	cjne	r6,#0x00,00200$
	sjmp	00201$
00200$:
	ljmp	00134$
00201$:
;nerd.c:675: if(sw == KEY_SW_PRESSED) {
;     genCmpEq
	mov	a,_nerd_loop_sw_1_1
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00203$
00202$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00115$
00203$:
;nerd.c:677: if(send_curr_append_key(usid) == TRUE) {
;     genCall
	mov	dpl,r4
	push	ar2
	push	ar4
	push	ar5
	lcall	_send_curr_append_key
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar2
;     genCmpEq
	cjne	r6,#0x01,00204$
	sjmp	00205$
00204$:
	ljmp	00134$
00205$:
;nerd.c:680: ScanWith[map] = scan;
;     genPlus
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	add	a,#_ScanWith
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_ScanWith >> 8)
	mov	dph,a
;     genPointerSet
;     genFarPointerSet
	mov	a,r2
	movx	@dptr,a
;nerd.c:681: mod_stat = MODSTAT_INH_PRESSED;
;     genAssign
	mov	_nerd_loop_mod_stat_1_1,#0x02
	ljmp	00134$
00115$:
;nerd.c:685: mod_stat = MODSTAT_INH_REL_NOT_FOUND;
;     genAssign
	mov	_nerd_loop_mod_stat_1_1,#0x03
;nerd.c:686: if(send_curr_remove_key(usid) == TRUE) {
;     genCall
	mov	dpl,r4
	push	ar2
	push	ar4
	push	ar5
	lcall	_send_curr_remove_key
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar2
;     genCmpEq
	cjne	r6,#0x01,00206$
	sjmp	00207$
00206$:
	ljmp	00134$
00207$:
;nerd.c:689: if(scan == ScanWith[map])
;     genPlus
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	add	a,#_ScanWith
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_ScanWith >> 8)
	mov	r7,a
;     genPointerGet
;     genFarPointerGet
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r3,a
;     genCmpEq
	mov	a,r2
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	a,ar3,00111$
;00208$:
;	Peephole 200	removed redundant sjmp
00209$:
;nerd.c:690: ScanWith[map] = SCAN_EMPTY;
;     genPointerSet
;     genFarPointerSet
	mov	dpl,r6
	mov	dph,r7
	mov	a,#0xFF
	movx	@dptr,a
00111$:
;nerd.c:692: mod_stat = MODSTAT_INH_REL_FOUND;
;     genAssign
	mov	_nerd_loop_mod_stat_1_1,#0x04
	ljmp	00134$
00133$:
;nerd.c:696: } else if(usid != USID_NERD_LOCK) {
;     genCmpEq
	cjne	r4,#0xEC,00210$
	ljmp	00134$
00210$:
;nerd.c:698: if(is_mod_key(usid) == FALSE) {
;     genCall
	mov	dpl,r4
	push	ar2
	push	ar4
	push	ar5
	lcall	_is_mod_key
	mov	r3,dpl
	pop	ar5
	pop	ar4
	pop	ar2
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r3,#0x00,00134$
;00211$:
;	Peephole 200	removed redundant sjmp
00212$:
;nerd.c:699: if(sw == KEY_SW_PRESSED) {
;     genCmpEq
	mov	a,_nerd_loop_sw_1_1
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00214$
00213$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00126$
00214$:
;nerd.c:701: if(send_curr_append_key(usid) == TRUE) {
;     genCall
	mov	dpl,r4
	push	ar4
	push	ar5
	lcall	_send_curr_append_key
	mov	r3,dpl
	pop	ar5
	pop	ar4
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r3,#0x01,00134$
;00215$:
;	Peephole 200	removed redundant sjmp
00216$:
;nerd.c:703: mod_stat = MODSTAT_GEN_PRESSED;
;     genAssign
	mov	_nerd_loop_mod_stat_1_1,#0x05
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00134$
00126$:
;nerd.c:707: mod_stat = MODSTAT_GEN_REL_NOT_FOUND;
;     genAssign
	mov	_nerd_loop_mod_stat_1_1,#0x06
;nerd.c:708: if(send_curr_remove_key(usid) == TRUE) {
;     genCall
	mov	dpl,r4
	push	ar2
	push	ar4
	push	ar5
	lcall	_send_curr_remove_key
	mov	r3,dpl
	pop	ar5
	pop	ar4
	pop	ar2
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r3,#0x01,00134$
;00217$:
;	Peephole 200	removed redundant sjmp
00218$:
;nerd.c:711: if(scan == ScanWith[map])
;     genPlus
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	add	a,#_ScanWith
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_ScanWith >> 8)
	mov	r6,a
;     genPointerGet
;     genFarPointerGet
	mov	dpl,r3
	mov	dph,r6
	movx	a,@dptr
	mov	r7,a
;     genCmpEq
	mov	a,r2
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	a,ar7,00122$
;00219$:
;	Peephole 200	removed redundant sjmp
00220$:
;nerd.c:712: ScanWith[map] = SCAN_EMPTY;
;     genPointerSet
;     genFarPointerSet
	mov	dpl,r3
	mov	dph,r6
	mov	a,#0xFF
	movx	@dptr,a
00122$:
;nerd.c:714: mod_stat = MODSTAT_GEN_REL_FOUND;
;     genAssign
	mov	_nerd_loop_mod_stat_1_1,#0x07
00134$:
;nerd.c:721: mod_new = 0x00;
;     genAssign
	mov	r2,#0x00
;nerd.c:722: if(is_mod_key(usid) == TRUE) {
;     genCall
	mov	dpl,r4
	push	ar2
	push	ar4
	push	ar5
	lcall	_is_mod_key
	mov	r3,dpl
	pop	ar5
	pop	ar4
	pop	ar2
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r3,#0x01,00141$
;00221$:
;	Peephole 200	removed redundant sjmp
00222$:
;nerd.c:726: if(usid == USID_NERD_CTRL) usid = USID_MOD_CTRL_L;
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	r4,#0xE9,00136$
;00223$:
;	Peephole 200	removed redundant sjmp
00224$:
;     genAssign
	mov	r4,#0xE0
00136$:
;nerd.c:729: mask = 1 << (usid & 0x0F);
;     genAnd
	mov	a,#0x0F
	anl	a,r4
;     genLeftShift
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
	mov	b,a
	mov	a,#0x01
	sjmp	00227$
00225$:
	add	a,acc
00227$:
	djnz	b,00225$
	mov	r3,a
;nerd.c:730: if(sw == KEY_SW_PRESSED) {
;     genCmpEq
	mov	a,_nerd_loop_sw_1_1
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00229$
00228$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00229$:
;nerd.c:732: mod_new |= mask;  /* 押下時 ﾋﾞｯﾄON */
;     genOr
	mov	a,r3
	orl	ar2,a
;nerd.c:733: mod_stat = MODSTAT_MOD_PRESSED;
;     genAssign
	mov	_nerd_loop_mod_stat_1_1,#0x00
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00141$
00138$:
;nerd.c:736: mod_new &= ~mask; /* ﾘﾘｰｽ時 ﾋﾞｯﾄOFF */
;	genCpl
	mov	a,r3
	cpl	a
;     genAnd
;	Peephole 105	removed redundant mov
	mov	r3,a
	anl	ar2,a
;nerd.c:737: mod_stat = MODSTAT_MOD_RELEASED;
;     genAssign
	mov	_nerd_loop_mod_stat_1_1,#0x01
00141$:
;nerd.c:742: SendCurr[0] = adjust_mod(map, mod_new, mod_stat);
;     genAssign
	mov	_adjust_mod_PARM_2,r2
;     genAssign
	mov	_adjust_mod_PARM_3,_nerd_loop_mod_stat_1_1
;     genCall
	mov	dpl,r5
	lcall	_adjust_mod
	mov	r2,dpl
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#_SendCurr
	mov	a,r2
	movx	@dptr,a
;nerd.c:745: enq_report(&SendCurr[0]);
;     genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_SendCurr
	mov	b,#0x01
	lcall	_enq_report
;nerd.c:748: UpdatedKeys.head = (++UpdatedKeys.head) & (UPDATE_KEYS_MAX - 1);
;     genPointerGet
;     genNearPointerGet
;     genPlus
;     genPlusIncr
;     genPointerSet
;     genNearPointerSet
;	Peephole 133	removed redundant moves
	mov	r0,#_UpdatedKeys
	inc	@r0
	mov	ar2,@r0
;     genAnd
	mov	a,#0x0F
	anl	a,r2
;     genPointerSet
;     genNearPointerSet
	mov	r0,#_UpdatedKeys
	mov	@r0,acc
	ljmp	00143$
00145$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EnqPreSend'
;------------------------------------------------------------
;MAX                       Allocated to registers 
;wait                      Allocated with name '_EnqPreSend_wait_1_1'
;i                         Allocated to registers r3 
;j                         Allocated to registers r3 
;n                         Allocated to registers 
;usid                      Allocated to registers r5 
;en                        Allocated to registers r2 
;------------------------------------------------------------
;nerd.c:758: static void EnqPreSend(void)
;	-----------------------------------------
;	 function EnqPreSend
;	-----------------------------------------
_EnqPreSend:
;nerd.c:761: volatile ulong wait = 65535 * 2;		/* approx. (350 * 2) ms */
;     genAssign
	mov	_EnqPreSend_wait_1_1,#0xFE
	mov	(_EnqPreSend_wait_1_1 + 1),#0xFF
	mov	(_EnqPreSend_wait_1_1 + 2),#0x01
	mov	(_EnqPreSend_wait_1_1 + 3),#0x00
;nerd.c:768: en = FALSE;
;     genAssign
	mov	r2,#0x00
;nerd.c:770: for(i=0; i<MAX; i++) {
;     genAssign
	mov	r3,#0x00
00114$:
;     genCmpLt
;     genCmp
	cjne	r3,#0x06,00135$
00135$:
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00103$
00136$:
;nerd.c:771: SendCurr[i] = USID_NONE;
;     genPlus
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	add	a,#_SendCurr
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_SendCurr >> 8)
	mov	dph,a
;     genPointerSet
;     genFarPointerSet
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;nerd.c:770: for(i=0; i<MAX; i++) {
;     genPlus
;     genPlusIncr
	inc	r3
;nerd.c:774: while(wait-- > 0) ;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00114$
00103$:
;     genAssign
	mov	r3,_EnqPreSend_wait_1_1
	mov	r4,(_EnqPreSend_wait_1_1 + 1)
	mov	r5,(_EnqPreSend_wait_1_1 + 2)
	mov	r6,(_EnqPreSend_wait_1_1 + 3)
;     genMinus
;     genMinusDec
	dec	_EnqPreSend_wait_1_1
	mov	a,#0xff
	cjne	a,_EnqPreSend_wait_1_1,00137$
	dec	(_EnqPreSend_wait_1_1 + 1)
	cjne	a,(_EnqPreSend_wait_1_1 + 1),00137$
	dec	(_EnqPreSend_wait_1_1 + 2)
	cjne	a,(_EnqPreSend_wait_1_1 + 2),00137$
	dec	(_EnqPreSend_wait_1_1 + 3)
00137$:
;     genIfx
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
;     genIfxJump
;	Peephole 109	removed ljmp by inverse jump logic
;nerd.c:776: for(i=0; i<n; i++) {
;     genAssign
;     genAssign
;	Peephole 256.d	loading r4 with zero from a
	jnz	00103$
00138$:
	mov	r3,#0x02
	mov	r4,a
00108$:
;     genCmpLt
;     genCmp
	cjne	r4,#0x01,00139$
00139$:
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00111$
00140$:
;nerd.c:777: usid = PreSend[i];
;     genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
;	Peephole 181	changed mov to clr
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
;	Peephole 186.d	optimized movc sequence
	mov	dptr,#_PreSend
	movc	a,@a+dptr
	mov	r5,a
;nerd.c:780: if(usid >= USID_MOD_START) continue;
;     genCmpLt
;     genCmp
	cjne	r5,#0xE0,00141$
00141$:
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00110$
00142$:
;nerd.c:782: SendCurr[j++] = usid;
;     genAssign
	mov	ar6,r3
;     genPlus
;     genPlusIncr
	inc	r3
;     genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	add	a,#_SendCurr
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_SendCurr >> 8)
	mov	dph,a
;     genPointerSet
;     genFarPointerSet
	mov	a,r5
	movx	@dptr,a
;nerd.c:783: en = TRUE;
;     genAssign
	mov	r2,#0x01
00110$:
;nerd.c:776: for(i=0; i<n; i++) {
;     genPlus
;     genPlusIncr
	inc	r4
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00108$
00111$:
;nerd.c:786: if(en) {
;     genIfx
	mov	a,r2
;     genIfxJump
;	Peephole 110	removed ljmp by inverse jump logic
	jz	00122$
00143$:
;nerd.c:787: enq_report(&SendCurr[0]);			  /* ﾚﾎﾟｰﾄｷｭｰに追加 */
;     genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_SendCurr
	mov	b,#0x01
	lcall	_enq_report
;nerd.c:789: for(i=0; i<8; i++) {
;     genAssign
	mov	r2,#0x00
00118$:
;     genCmpLt
;     genCmp
	cjne	r2,#0x08,00144$
00144$:
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00121$
00145$:
;nerd.c:790: SendCurr[i] = USID_NONE;
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_SendCurr
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_SendCurr >> 8)
	mov	dph,a
;     genPointerSet
;     genFarPointerSet
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;nerd.c:789: for(i=0; i<8; i++) {
;     genPlus
;     genPlusIncr
	inc	r2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00118$
00121$:
;nerd.c:792: enq_report(&SendCurr[0]);
;     genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_SendCurr
	mov	b,#0x01
;	Peephole 253.c	replaced lcall with ljmp
	ljmp	_enq_report
00122$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'core_apply_reset_values'
;------------------------------------------------------------
;------------------------------------------------------------
;nerd.c:801: void core_apply_reset_values(void) using 1
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
;nerd.c:803: kbd_idle_mode		  = FALSE;
;     genAssign
	clr	_kbd_idle_mode
;nerd.c:804: kbd_idle_duration	  = 125;
;     genAssign
	mov	_kbd_idle_duration,#0x7D
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setup_keyboard'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;nerd.c:811: static void setup_keyboard(void)
;	-----------------------------------------
;	 function setup_keyboard
;	-----------------------------------------
_setup_keyboard:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;nerd.c:815: ScanCode = 0;
;     genAssign
	mov	_ScanCode,#0x00
;nerd.c:818: for(i=0; i<sizeof(SendCurr); i++) {
;     genAssign
	mov	r2,#0x00
00101$:
;     genCmpLt
;     genCmp
	cjne	r2,#0x08,00121$
00121$:
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00118$
00122$:
;nerd.c:819: SendCurr[i] = 0;   /* 0: 空 */
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_SendCurr
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_SendCurr >> 8)
	mov	dph,a
;     genPointerSet
;     genFarPointerSet
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;nerd.c:818: for(i=0; i<sizeof(SendCurr); i++) {
;     genPlus
;     genPlusIncr
	inc	r2
;nerd.c:823: for(i=0; i<sizeof(ScanBuf); i++) {
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00118$:
;     genAssign
	mov	r2,#0x00
00105$:
;     genCmpLt
;     genCmp
	cjne	r2,#0x40,00123$
00123$:
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00108$
00124$:
;nerd.c:824: ScanBuf[i] = KEY_SW_RELEASED;			/* 全ﾘﾘｰｽ */
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_ScanBuf
;     genPointerSet
;     genNearPointerSet
;	Peephole 239	used a instead of acc
	mov	r0,a
	mov	@r0,#0x80
;nerd.c:823: for(i=0; i<sizeof(ScanBuf); i++) {
;     genPlus
;     genPlusIncr
	inc	r2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00105$
00108$:
;nerd.c:828: UpdatedKeys.head = UpdatedKeys.tail = 0;
;     genPointerSet
;     genNearPointerSet
	mov	r0,#(_UpdatedKeys + 0x0001)
	mov	@r0,#0x00
;     genPointerSet
;     genNearPointerSet
	mov	r0,#_UpdatedKeys
	mov	@r0,#0x00
;nerd.c:831: ModSave = 0x00;
;     genAssign
	mov	r0,#_ModSave
	mov	@r0,#0x00
;nerd.c:834: Report.head = Report.tail = 0;
;     genPointerSet
;     genFarPointerSet
	mov	dptr,#(_Report + 0x0001)
;	Peephole 181	changed mov to clr
;     genPointerSet
;     genFarPointerSet
;	Peephole 181	changed mov to clr
;	Peephole 219	removed redundant clear
	clr	a
	movx	@dptr,a
	mov	dptr,#_Report
	movx	@dptr,a
;nerd.c:837: for(i=0; i<KEYMAP_MAX; i++) {
;     genAssign
	mov	r2,#0x00
00109$:
;     genCmpLt
;     genCmp
	cjne	r2,#0x06,00125$
00125$:
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00113$
00126$:
;nerd.c:838: ScanWith[i] = SCAN_EMPTY;
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_ScanWith
	mov	dpl,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,#(_ScanWith >> 8)
	mov	dph,a
;     genPointerSet
;     genFarPointerSet
	mov	a,#0xFF
	movx	@dptr,a
;nerd.c:837: for(i=0; i<KEYMAP_MAX; i++) {
;     genPlus
;     genPlusIncr
	inc	r2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;nerd.c:848: uchar _sdcc_external_startup(void)
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
;nerd.c:856: for(i=2; i>0; i--) ;
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
;nerd.c:859: USBCS &= ~0x04;				/* tristate the Disconnect pin */
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
;nerd.c:860: USBCS |= 0x08;				/* disconnect USB core		   */
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
;nerd.c:863: return 0;
;     genRet
	mov	dpl,#0x00
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;wait                      Allocated to registers r2 r3 
;------------------------------------------------------------
;nerd.c:875: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;nerd.c:881: while(wait-- > 0) ;
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
;     genIfx
	mov	a,r4
	orl	a,r5
;     genIfxJump
;	Peephole 109	removed ljmp by inverse jump logic
	jnz	00101$
00113$:
;nerd.c:884: __di();						  /* disable global interrupt */
;     genAssign
	clr	_EA
;nerd.c:886: init_mcu();					  /* init ez-usb hardware */
;     genCall
	lcall	_init_mcu
;nerd.c:887: init_interrupt_usb();
;     genCall
	lcall	_init_interrupt_usb
;nerd.c:888: init_interrupt_timer0();
;     genCall
	lcall	_init_interrupt_timer0
;nerd.c:889: init_interrupt_timer2();
;     genCall
	lcall	_init_interrupt_timer2
;nerd.c:891: __debug_out_init();			  /* for serial debug */
;     genCall
	lcall	_InitSci1
;nerd.c:893: __ei();						  /* enable global interrupt */
;     genAssign
	setb	_EA
;nerd.c:895: apply_reset_values();		  /* initialize global variables */
;     genCall
	lcall	_apply_reset_values
;nerd.c:896: setup_keyboard();
;     genCall
	lcall	_setup_keyboard
;nerd.c:899: USBCS |= 0x02;				  /* activate RENUM						*/
;     genAssign
;     genOr
;	Peephole 248.a	optimized or to xdata
;nerd.c:900: USBCS &= ~0x08;				  /* deactivate DISCON					*/
;     genAssign
;     genAnd
;	Peephole 248.b	optimized and to xdata
;nerd.c:901: USBCS |= 0x04;				  /* release tristate on Disconnect pin */
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
;nerd.c:904: MapSet = get_mapset_num();	  /* select keymap set */
;     genCall
	lcall	_get_mapset_num
	mov	a,dpl
;     genAssign
	mov	r0,#_MapSet
	mov	@r0,a
;nerd.c:906: EnqPreSend();				  /* enqueue keys send automatic */
;     genCall
	lcall	_EnqPreSend
;nerd.c:908: nerd_loop();				  /* main loop of nerd */
;     genCall
	lcall	_nerd_loop
;nerd.c:910: while(1) ;					  /* dummy loop */
00105$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00105$
00107$:
	ret
	.area CSEG    (CODE)
_PreSend:
	.db #0x00
_Keymap:
	.db #0x1F
	.db #0x14
	.db #0x1A
	.db #0x16
	.db #0x04
	.db #0x1D
	.db #0x1B
	.db #0x06
	.db #0x20
	.db #0x21
	.db #0x15
	.db #0x08
	.db #0x07
	.db #0x09
	.db #0x19
	.db #0x05
	.db #0x22
	.db #0x23
	.db #0x1C
	.db #0x17
	.db #0x0A
	.db #0x0B
	.db #0x11
	.db #0x00
	.db #0x1E
	.db #0x29
	.db #0x2B
	.db #0x2C
	.db #0xE1
	.db #0xE2
	.db #0xEA
	.db #0xE9
	.db #0x24
	.db #0x25
	.db #0x18
	.db #0x0C
	.db #0x0E
	.db #0x0D
	.db #0x10
	.db #0x00
	.db #0x31
	.db #0x35
	.db #0x2A
	.db #0x28
	.db #0xEC
	.db #0xE5
	.db #0xEB
	.db #0x35
	.db #0x26
	.db #0x27
	.db #0x12
	.db #0x13
	.db #0x33
	.db #0x0F
	.db #0x36
	.db #0x00
	.db #0x2D
	.db #0x2E
	.db #0x30
	.db #0x2F
	.db #0x34
	.db #0x38
	.db #0x37
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x4A
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x4D
	.db #0x4C
	.db #0x4F
	.db #0xED
	.db #0x50
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x2A
	.db #0x51
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0x4C
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x52
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x4E
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x4B
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
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
	.db #0x1F
	.db #0x14
	.db #0x1A
	.db #0x16
	.db #0x04
	.db #0x1D
	.db #0x1B
	.db #0x06
	.db #0x20
	.db #0x21
	.db #0x15
	.db #0x08
	.db #0x07
	.db #0x09
	.db #0x19
	.db #0x05
	.db #0x22
	.db #0x23
	.db #0x1C
	.db #0x17
	.db #0x0A
	.db #0x0B
	.db #0x11
	.db #0x00
	.db #0x1E
	.db #0x29
	.db #0x2B
	.db #0x2C
	.db #0xE1
	.db #0xE2
	.db #0xEA
	.db #0xE9
	.db #0x24
	.db #0x25
	.db #0x18
	.db #0x0C
	.db #0x0E
	.db #0x0D
	.db #0x10
	.db #0x00
	.db #0x31
	.db #0x35
	.db #0x2A
	.db #0x28
	.db #0xEC
	.db #0xE5
	.db #0xEB
	.db #0x35
	.db #0x26
	.db #0x27
	.db #0x12
	.db #0x13
	.db #0x33
	.db #0x0F
	.db #0x36
	.db #0x00
	.db #0x2D
	.db #0x2E
	.db #0x30
	.db #0x2F
	.db #0x34
	.db #0x38
	.db #0x37
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x4A
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x4D
	.db #0x4C
	.db #0x4F
	.db #0xED
	.db #0x50
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x2A
	.db #0x51
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0x4C
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x52
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x4E
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x4B
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0xED
	.db #0x00
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
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
