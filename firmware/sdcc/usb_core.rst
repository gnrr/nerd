                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.5.0 #1020 (May  8 2005)
                              4 ; This file generated Sat Jun 24 00:55:50 2006
                              5 ;--------------------------------------------------------
                              6 	.module usb_core
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _string_prod
                             13 	.globl _string_if_keyboard
                             14 	.globl _string_mfg
                             15 	.globl _string_langid
                             16 	.globl _EUSB
                             17 	.globl _SMOD1
                             18 	.globl _TF2
                             19 	.globl _TR2
                             20 	.globl _TI_1
                             21 	.globl _RI_1
                             22 	.globl _ES1
                             23 	.globl _ET2
                             24 	.globl _ES0
                             25 	.globl _TI_0
                             26 	.globl _RI_0
                             27 	.globl _CY
                             28 	.globl _AC
                             29 	.globl _F0
                             30 	.globl _RS1
                             31 	.globl _RS0
                             32 	.globl _OV
                             33 	.globl _F1
                             34 	.globl _P
                             35 	.globl _PS
                             36 	.globl _PT1
                             37 	.globl _PX1
                             38 	.globl _PT0
                             39 	.globl _PX0
                             40 	.globl _RD
                             41 	.globl _WR
                             42 	.globl _T1
                             43 	.globl _T0
                             44 	.globl _INT1
                             45 	.globl _INT0
                             46 	.globl _TXD
                             47 	.globl _RXD
                             48 	.globl _P3_7
                             49 	.globl _P3_6
                             50 	.globl _P3_5
                             51 	.globl _P3_4
                             52 	.globl _P3_3
                             53 	.globl _P3_2
                             54 	.globl _P3_1
                             55 	.globl _P3_0
                             56 	.globl _EA
                             57 	.globl _ES
                             58 	.globl _ET1
                             59 	.globl _EX1
                             60 	.globl _ET0
                             61 	.globl _EX0
                             62 	.globl _P2_7
                             63 	.globl _P2_6
                             64 	.globl _P2_5
                             65 	.globl _P2_4
                             66 	.globl _P2_3
                             67 	.globl _P2_2
                             68 	.globl _P2_1
                             69 	.globl _P2_0
                             70 	.globl _SM0
                             71 	.globl _SM1
                             72 	.globl _SM2
                             73 	.globl _REN
                             74 	.globl _TB8
                             75 	.globl _RB8
                             76 	.globl _TI
                             77 	.globl _RI
                             78 	.globl _P1_7
                             79 	.globl _P1_6
                             80 	.globl _P1_5
                             81 	.globl _P1_4
                             82 	.globl _P1_3
                             83 	.globl _P1_2
                             84 	.globl _P1_1
                             85 	.globl _P1_0
                             86 	.globl _TF1
                             87 	.globl _TR1
                             88 	.globl _TF0
                             89 	.globl _TR0
                             90 	.globl _IE1
                             91 	.globl _IT1
                             92 	.globl _IE0
                             93 	.globl _IT0
                             94 	.globl _P0_7
                             95 	.globl _P0_6
                             96 	.globl _P0_5
                             97 	.globl _P0_4
                             98 	.globl _P0_3
                             99 	.globl _P0_2
                            100 	.globl _P0_1
                            101 	.globl _P0_0
                            102 	.globl _EIP
                            103 	.globl _EIE
                            104 	.globl _EICON
                            105 	.globl _TH2
                            106 	.globl _TL2
                            107 	.globl _RCAP2H
                            108 	.globl _RCAP2L
                            109 	.globl _T2CON
                            110 	.globl _SBUF1
                            111 	.globl _SCON1
                            112 	.globl _SBUF0
                            113 	.globl _SCON0
                            114 	.globl _MPAGE
                            115 	.globl _EXIF
                            116 	.globl _CKCON
                            117 	.globl _DPS
                            118 	.globl _DPH1
                            119 	.globl _DPL1
                            120 	.globl _DPH0
                            121 	.globl _DPL0
                            122 	.globl _B
                            123 	.globl _ACC
                            124 	.globl _PSW
                            125 	.globl _IP
                            126 	.globl _P3
                            127 	.globl _IE
                            128 	.globl _P2
                            129 	.globl _SBUF
                            130 	.globl _SCON
                            131 	.globl _P1
                            132 	.globl _TH1
                            133 	.globl _TH0
                            134 	.globl _TL1
                            135 	.globl _TL0
                            136 	.globl _TMOD
                            137 	.globl _TCON
                            138 	.globl _PCON
                            139 	.globl _DPH
                            140 	.globl _DPL
                            141 	.globl _SP
                            142 	.globl _P0
                            143 	.globl _AUTODATA
                            144 	.globl _AUTOPTRL
                            145 	.globl _AUTOPTRH
                            146 	.globl _FASTXFR
                            147 	.globl _OUT07VAL
                            148 	.globl _IN07VAL
                            149 	.globl _I2DAT
                            150 	.globl _I2CS
                            151 	.globl _SETUPDAT
                            152 	.globl _SUDPTRL
                            153 	.globl _SUDPTRH
                            154 	.globl _TOGCTL
                            155 	.globl _USBCS
                            156 	.globl _USBBAV
                            157 	.globl _USBPAIR
                            158 	.globl _USBIEN
                            159 	.globl _USBIRQ
                            160 	.globl _OUT07IEN
                            161 	.globl _IN07IEN
                            162 	.globl _OUT07IRQ
                            163 	.globl _IN07IRQ
                            164 	.globl _ISOCTL
                            165 	.globl _PORTCCFG
                            166 	.globl _PORTBCFG
                            167 	.globl _PORTACFG
                            168 	.globl _PINSC
                            169 	.globl _OUTC
                            170 	.globl _OEC
                            171 	.globl _PINSB
                            172 	.globl _OUTB
                            173 	.globl _OEB
                            174 	.globl _PINSA
                            175 	.globl _OUTA
                            176 	.globl _OEA
                            177 	.globl _OUT4BC
                            178 	.globl _IN4BC
                            179 	.globl _OUT4CS
                            180 	.globl _IN4CS
                            181 	.globl _OUT4BUF
                            182 	.globl _IN4BUF
                            183 	.globl _OUT3BC
                            184 	.globl _OUT3CS
                            185 	.globl _IN3BC
                            186 	.globl _IN3CS
                            187 	.globl _OUT3BUF
                            188 	.globl _IN3BUF
                            189 	.globl _OUT2BUF
                            190 	.globl _OUT2CS
                            191 	.globl _OUT2BC
                            192 	.globl _IN2CS
                            193 	.globl _IN2BC
                            194 	.globl _IN2BUF
                            195 	.globl _OUT1BC
                            196 	.globl _OUT1CS
                            197 	.globl _OUT1BUF
                            198 	.globl _IN1BC
                            199 	.globl _IN1BUF
                            200 	.globl _IN1CS
                            201 	.globl _OUT0BC
                            202 	.globl _OUT0BUF
                            203 	.globl _IN0BC
                            204 	.globl _IN0BUF
                            205 	.globl _EP0CS
                            206 	.globl _kbd_idle_mode
                            207 	.globl _in1_busy
                            208 	.globl _kbd_idle_counter
                            209 	.globl _kbd_idle_duration
                            210 	.globl _apply_reset_values
                            211 	.globl _isr_usb
                            212 	.globl _isr_resume
                            213 	.globl _init_interrupt_usb
                            214 ;--------------------------------------------------------
                            215 ; special function registers
                            216 ;--------------------------------------------------------
                            217 	.area RSEG    (DATA)
                    0080    218 _P0	=	0x0080
                    0081    219 _SP	=	0x0081
                    0082    220 _DPL	=	0x0082
                    0083    221 _DPH	=	0x0083
                    0087    222 _PCON	=	0x0087
                    0088    223 _TCON	=	0x0088
                    0089    224 _TMOD	=	0x0089
                    008A    225 _TL0	=	0x008a
                    008B    226 _TL1	=	0x008b
                    008C    227 _TH0	=	0x008c
                    008D    228 _TH1	=	0x008d
                    0090    229 _P1	=	0x0090
                    0098    230 _SCON	=	0x0098
                    0099    231 _SBUF	=	0x0099
                    00A0    232 _P2	=	0x00a0
                    00A8    233 _IE	=	0x00a8
                    00B0    234 _P3	=	0x00b0
                    00B8    235 _IP	=	0x00b8
                    00D0    236 _PSW	=	0x00d0
                    00E0    237 _ACC	=	0x00e0
                    00F0    238 _B	=	0x00f0
                    0082    239 _DPL0	=	0x0082
                    0083    240 _DPH0	=	0x0083
                    0084    241 _DPL1	=	0x0084
                    0085    242 _DPH1	=	0x0085
                    0086    243 _DPS	=	0x0086
                    008E    244 _CKCON	=	0x008e
                    0091    245 _EXIF	=	0x0091
                    0092    246 _MPAGE	=	0x0092
                    0098    247 _SCON0	=	0x0098
                    0099    248 _SBUF0	=	0x0099
                    00C0    249 _SCON1	=	0x00c0
                    00C1    250 _SBUF1	=	0x00c1
                    00C8    251 _T2CON	=	0x00c8
                    00CA    252 _RCAP2L	=	0x00ca
                    00CB    253 _RCAP2H	=	0x00cb
                    00CC    254 _TL2	=	0x00cc
                    00CD    255 _TH2	=	0x00cd
                    00D8    256 _EICON	=	0x00d8
                    00E8    257 _EIE	=	0x00e8
                    00F8    258 _EIP	=	0x00f8
                            259 ;--------------------------------------------------------
                            260 ; special function bits 
                            261 ;--------------------------------------------------------
                            262 	.area RSEG    (DATA)
                    0080    263 _P0_0	=	0x0080
                    0081    264 _P0_1	=	0x0081
                    0082    265 _P0_2	=	0x0082
                    0083    266 _P0_3	=	0x0083
                    0084    267 _P0_4	=	0x0084
                    0085    268 _P0_5	=	0x0085
                    0086    269 _P0_6	=	0x0086
                    0087    270 _P0_7	=	0x0087
                    0088    271 _IT0	=	0x0088
                    0089    272 _IE0	=	0x0089
                    008A    273 _IT1	=	0x008a
                    008B    274 _IE1	=	0x008b
                    008C    275 _TR0	=	0x008c
                    008D    276 _TF0	=	0x008d
                    008E    277 _TR1	=	0x008e
                    008F    278 _TF1	=	0x008f
                    0090    279 _P1_0	=	0x0090
                    0091    280 _P1_1	=	0x0091
                    0092    281 _P1_2	=	0x0092
                    0093    282 _P1_3	=	0x0093
                    0094    283 _P1_4	=	0x0094
                    0095    284 _P1_5	=	0x0095
                    0096    285 _P1_6	=	0x0096
                    0097    286 _P1_7	=	0x0097
                    0098    287 _RI	=	0x0098
                    0099    288 _TI	=	0x0099
                    009A    289 _RB8	=	0x009a
                    009B    290 _TB8	=	0x009b
                    009C    291 _REN	=	0x009c
                    009D    292 _SM2	=	0x009d
                    009E    293 _SM1	=	0x009e
                    009F    294 _SM0	=	0x009f
                    00A0    295 _P2_0	=	0x00a0
                    00A1    296 _P2_1	=	0x00a1
                    00A2    297 _P2_2	=	0x00a2
                    00A3    298 _P2_3	=	0x00a3
                    00A4    299 _P2_4	=	0x00a4
                    00A5    300 _P2_5	=	0x00a5
                    00A6    301 _P2_6	=	0x00a6
                    00A7    302 _P2_7	=	0x00a7
                    00A8    303 _EX0	=	0x00a8
                    00A9    304 _ET0	=	0x00a9
                    00AA    305 _EX1	=	0x00aa
                    00AB    306 _ET1	=	0x00ab
                    00AC    307 _ES	=	0x00ac
                    00AF    308 _EA	=	0x00af
                    00B0    309 _P3_0	=	0x00b0
                    00B1    310 _P3_1	=	0x00b1
                    00B2    311 _P3_2	=	0x00b2
                    00B3    312 _P3_3	=	0x00b3
                    00B4    313 _P3_4	=	0x00b4
                    00B5    314 _P3_5	=	0x00b5
                    00B6    315 _P3_6	=	0x00b6
                    00B7    316 _P3_7	=	0x00b7
                    00B0    317 _RXD	=	0x00b0
                    00B1    318 _TXD	=	0x00b1
                    00B2    319 _INT0	=	0x00b2
                    00B3    320 _INT1	=	0x00b3
                    00B4    321 _T0	=	0x00b4
                    00B5    322 _T1	=	0x00b5
                    00B6    323 _WR	=	0x00b6
                    00B7    324 _RD	=	0x00b7
                    00B8    325 _PX0	=	0x00b8
                    00B9    326 _PT0	=	0x00b9
                    00BA    327 _PX1	=	0x00ba
                    00BB    328 _PT1	=	0x00bb
                    00BC    329 _PS	=	0x00bc
                    00D0    330 _P	=	0x00d0
                    00D1    331 _F1	=	0x00d1
                    00D2    332 _OV	=	0x00d2
                    00D3    333 _RS0	=	0x00d3
                    00D4    334 _RS1	=	0x00d4
                    00D5    335 _F0	=	0x00d5
                    00D6    336 _AC	=	0x00d6
                    00D7    337 _CY	=	0x00d7
                    0098    338 _RI_0	=	0x0098
                    0099    339 _TI_0	=	0x0099
                    00AC    340 _ES0	=	0x00ac
                    00AD    341 _ET2	=	0x00ad
                    00AE    342 _ES1	=	0x00ae
                    00C0    343 _RI_1	=	0x00c0
                    00C1    344 _TI_1	=	0x00c1
                    00CA    345 _TR2	=	0x00ca
                    00CF    346 _TF2	=	0x00cf
                    00DF    347 _SMOD1	=	0x00df
                    00E8    348 _EUSB	=	0x00e8
                            349 ;--------------------------------------------------------
                            350 ; overlayable register banks 
                            351 ;--------------------------------------------------------
                            352 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     353 	.ds 8
                            354 	.area REG_BANK_1	(REL,OVR,DATA)
   0008                     355 	.ds 8
                            356 	.area REG_BANK_2	(REL,OVR,DATA)
   0010                     357 	.ds 8
                            358 ;--------------------------------------------------------
                            359 ; internal ram data
                            360 ;--------------------------------------------------------
                            361 	.area DSEG    (DATA)
   0030                     362 _kbd_idle_duration::
   0030                     363 	.ds 1
   0031                     364 _kbd_idle_counter::
   0031                     365 	.ds 1
   0032                     366 _sdat:
   0032                     367 	.ds 2
                            368 ;--------------------------------------------------------
                            369 ; overlayable items in internal ram 
                            370 ;--------------------------------------------------------
                            371 	.area OSEG    (OVR,DATA)
                            372 ;--------------------------------------------------------
                            373 ; indirectly addressable internal ram data
                            374 ;--------------------------------------------------------
                            375 	.area ISEG    (DATA)
                            376 ;--------------------------------------------------------
                            377 ; bit data
                            378 ;--------------------------------------------------------
                            379 	.area BSEG    (BIT)
   0000                     380 _is_ctrl_out0_kbd:
   0000                     381 	.ds 1
   0001                     382 _in1_busy::
   0001                     383 	.ds 1
   0002                     384 _kbd_idle_mode::
   0002                     385 	.ds 1
                            386 ;--------------------------------------------------------
                            387 ; paged external ram data
                            388 ;--------------------------------------------------------
                            389 	.area PSEG    (PAG,XDATA)
                            390 ;--------------------------------------------------------
                            391 ; external ram data
                            392 ;--------------------------------------------------------
                            393 	.area XSEG    (XDATA)
                    7FB4    394 _EP0CS	=	0x7fb4
                    7F00    395 _IN0BUF	=	0x7f00
                    7FB5    396 _IN0BC	=	0x7fb5
                    7EC0    397 _OUT0BUF	=	0x7ec0
                    7FC5    398 _OUT0BC	=	0x7fc5
                    7FB6    399 _IN1CS	=	0x7fb6
                    7E80    400 _IN1BUF	=	0x7e80
                    7FB7    401 _IN1BC	=	0x7fb7
                    7E40    402 _OUT1BUF	=	0x7e40
                    7FC6    403 _OUT1CS	=	0x7fc6
                    7FC7    404 _OUT1BC	=	0x7fc7
                    7E00    405 _IN2BUF	=	0x7e00
                    7FB9    406 _IN2BC	=	0x7fb9
                    7FB8    407 _IN2CS	=	0x7fb8
                    7FC9    408 _OUT2BC	=	0x7fc9
                    7FC8    409 _OUT2CS	=	0x7fc8
                    7DC0    410 _OUT2BUF	=	0x7dc0
                    7D80    411 _IN3BUF	=	0x7d80
                    7D40    412 _OUT3BUF	=	0x7d40
                    7FBA    413 _IN3CS	=	0x7fba
                    7FBB    414 _IN3BC	=	0x7fbb
                    7FCA    415 _OUT3CS	=	0x7fca
                    7FCB    416 _OUT3BC	=	0x7fcb
                    7D00    417 _IN4BUF	=	0x7d00
                    7CC0    418 _OUT4BUF	=	0x7cc0
                    7FBC    419 _IN4CS	=	0x7fbc
                    7FCC    420 _OUT4CS	=	0x7fcc
                    7FBD    421 _IN4BC	=	0x7fbd
                    7FCD    422 _OUT4BC	=	0x7fcd
                    7F9C    423 _OEA	=	0x7f9c
                    7F96    424 _OUTA	=	0x7f96
                    7F99    425 _PINSA	=	0x7f99
                    7F9D    426 _OEB	=	0x7f9d
                    7F97    427 _OUTB	=	0x7f97
                    7F9A    428 _PINSB	=	0x7f9a
                    7F9E    429 _OEC	=	0x7f9e
                    7F98    430 _OUTC	=	0x7f98
                    7F9B    431 _PINSC	=	0x7f9b
                    7F93    432 _PORTACFG	=	0x7f93
                    7F94    433 _PORTBCFG	=	0x7f94
                    7F95    434 _PORTCCFG	=	0x7f95
                    7FA1    435 _ISOCTL	=	0x7fa1
                    7FA9    436 _IN07IRQ	=	0x7fa9
                    7FAA    437 _OUT07IRQ	=	0x7faa
                    7FAC    438 _IN07IEN	=	0x7fac
                    7FAD    439 _OUT07IEN	=	0x7fad
                    7FAB    440 _USBIRQ	=	0x7fab
                    7FAE    441 _USBIEN	=	0x7fae
                    7FDD    442 _USBPAIR	=	0x7fdd
                    7FAF    443 _USBBAV	=	0x7faf
                    7FD6    444 _USBCS	=	0x7fd6
                    7FD7    445 _TOGCTL	=	0x7fd7
                    7FD4    446 _SUDPTRH	=	0x7fd4
                    7FD5    447 _SUDPTRL	=	0x7fd5
                    7FE8    448 _SETUPDAT	=	0x7fe8
                    7FA5    449 _I2CS	=	0x7fa5
                    7FA6    450 _I2DAT	=	0x7fa6
                    7FDE    451 _IN07VAL	=	0x7fde
                    7FDF    452 _OUT07VAL	=	0x7fdf
                    7FE2    453 _FASTXFR	=	0x7fe2
                    7FE3    454 _AUTOPTRH	=	0x7fe3
                    7FE4    455 _AUTOPTRL	=	0x7fe4
                    7FE5    456 _AUTODATA	=	0x7fe5
                            457 ;--------------------------------------------------------
                            458 ; external initialized ram data
                            459 ;--------------------------------------------------------
                            460 	.area XISEG   (XDATA)
                            461 	.area CSEG    (CODE)
                            462 	.area GSINIT0 (CODE)
                            463 	.area GSINIT1 (CODE)
                            464 	.area GSINIT2 (CODE)
                            465 	.area GSINIT3 (CODE)
                            466 	.area GSINIT4 (CODE)
                            467 	.area GSINIT5 (CODE)
                            468 ;--------------------------------------------------------
                            469 ; global & static initialisations
                            470 ;--------------------------------------------------------
                            471 	.area CSEG    (CODE)
                            472 	.area GSINIT  (CODE)
                            473 	.area GSFINAL (CODE)
                            474 	.area GSINIT  (CODE)
                            475 ;usb_core.c:77: * get_descriptor()
                            476 ;     genAssign
   14D7 75 32 E8            477 	mov	_sdat,#0xE8
   14DA 75 33 7F            478 	mov	(_sdat + 1),#0x7F
                            479 ;--------------------------------------------------------
                            480 ; Home
                            481 ;--------------------------------------------------------
                            482 	.area HOME    (CODE)
                            483 	.area CSEG    (CODE)
                            484 ;--------------------------------------------------------
                            485 ; code
                            486 ;--------------------------------------------------------
                            487 	.area CSEG    (CODE)
                            488 ;------------------------------------------------------------
                            489 ;Allocation info for local variables in function 'apply_reset_values'
                            490 ;------------------------------------------------------------
                            491 ;------------------------------------------------------------
                            492 ;usb_core.c:67: void apply_reset_values(void) using 1
                            493 ;	-----------------------------------------
                            494 ;	 function apply_reset_values
                            495 ;	-----------------------------------------
   0D2A                     496 _apply_reset_values:
                    000A    497 	ar2 = 0x0a
                    000B    498 	ar3 = 0x0b
                    000C    499 	ar4 = 0x0c
                    000D    500 	ar5 = 0x0d
                    000E    501 	ar6 = 0x0e
                    000F    502 	ar7 = 0x0f
                    0008    503 	ar0 = 0x08
                    0009    504 	ar1 = 0x09
                            505 ;usb_core.c:69: core_apply_reset_values();
                            506 ;     genCall
   0D2A 12 09 68            507 	lcall	_core_apply_reset_values
                            508 ;usb_core.c:71: is_ctrl_out0_kbd = 0;
                            509 ;     genAssign
   0D2D C2 00               510 	clr	_is_ctrl_out0_kbd
                            511 ;usb_core.c:72: in1_busy         = FALSE;
                            512 ;     genAssign
   0D2F C2 01               513 	clr	_in1_busy
   0D31                     514 00101$:
   0D31 22                  515 	ret
                            516 ;------------------------------------------------------------
                            517 ;Allocation info for local variables in function 'get_descriptor'
                            518 ;------------------------------------------------------------
                            519 ;------------------------------------------------------------
                            520 ;usb_core.c:89: static void get_descriptor(void) using 1
                            521 ;	-----------------------------------------
                            522 ;	 function get_descriptor
                            523 ;	-----------------------------------------
   0D32                     524 _get_descriptor:
                            525 ;usb_core.c:91: switch(sdat->wValueH) {
                            526 ;     genPlus
                            527 ;     genPlusIncr
   0D32 74 03               528 	mov	a,#0x03
   0D34 25 32               529 	add	a,_sdat
   0D36 F5 82               530 	mov	dpl,a
                            531 ;	Peephole 181	changed mov to clr
   0D38 E4                  532 	clr	a
   0D39 35 33               533 	addc	a,(_sdat + 1)
   0D3B F5 83               534 	mov	dph,a
                            535 ;     genPointerGet
                            536 ;     genFarPointerGet
   0D3D E0                  537 	movx	a,@dptr
   0D3E FA                  538 	mov	r2,a
                            539 ;     genCmpEq
   0D3F BA 01 02            540 	cjne	r2,#0x01,00123$
                            541 ;	Peephole 112.b	changed ljmp to sjmp
   0D42 80 19               542 	sjmp	00101$
   0D44                     543 00123$:
                            544 ;     genCmpEq
   0D44 BA 02 02            545 	cjne	r2,#0x02,00124$
                            546 ;	Peephole 112.b	changed ljmp to sjmp
   0D47 80 33               547 	sjmp	00102$
   0D49                     548 00124$:
                            549 ;     genCmpEq
   0D49 BA 03 02            550 	cjne	r2,#0x03,00125$
                            551 ;	Peephole 112.b	changed ljmp to sjmp
   0D4C 80 4D               552 	sjmp	00103$
   0D4E                     553 00125$:
                            554 ;     genCmpEq
   0D4E BA 21 03            555 	cjne	r2,#0x21,00126$
   0D51 02 0E 0E            556 	ljmp	00107$
   0D54                     557 00126$:
                            558 ;     genCmpEq
   0D54 BA 22 03            559 	cjne	r2,#0x22,00127$
   0D57 02 0E 34            560 	ljmp	00108$
   0D5A                     561 00127$:
   0D5A 02 0E 6B            562 	ljmp	00112$
                            563 ;usb_core.c:93: case USB_DT_DEVICE:
   0D5D                     564 00101$:
                            565 ;usb_core.c:94: EP0CS   = 0x02;                         /* clear HSNACK */
                            566 ;     genAssign
   0D5D 90 7F B4            567 	mov	dptr,#_EP0CS
   0D60 74 02               568 	mov	a,#0x02
   0D62 F0                  569 	movx	@dptr,a
                            570 ;usb_core.c:95: SUDPTRH = (uchar)((unsigned int)dev_desc >> 8);
                            571 ;     genCast
   0D63 7A FF               572 	mov	r2,#_dev_desc
   0D65 7B 12               573 	mov	r3,#(_dev_desc >> 8)
                            574 ;     genRightShift
                            575 ;     genRightShiftLiteral
                            576 ;     genrshTwo
   0D67 8B 0A               577 	mov	ar2,r3
   0D69 7B 00               578 	mov	r3,#0x00
                            579 ;     genCast
   0D6B 90 7F D4            580 	mov	dptr,#_SUDPTRH
   0D6E EA                  581 	mov	a,r2
   0D6F F0                  582 	movx	@dptr,a
                            583 ;usb_core.c:96: SUDPTRL = (unsigned int)dev_desc & 0xff;
                            584 ;     genCast
   0D70 7A FF               585 	mov	r2,#_dev_desc
   0D72 7B 12               586 	mov	r3,#(_dev_desc >> 8)
                            587 ;     genAnd
   0D74 7B 00               588 	mov	r3,#0x00
                            589 ;     genCast
   0D76 90 7F D5            590 	mov	dptr,#_SUDPTRL
   0D79 EA                  591 	mov	a,r2
   0D7A F0                  592 	movx	@dptr,a
                            593 ;usb_core.c:97: break;
                            594 ;	Peephole 251.a	replaced ljmp to ret with ret
   0D7B 22                  595 	ret
                            596 ;usb_core.c:100: case USB_DT_CONFIG:
   0D7C                     597 00102$:
                            598 ;usb_core.c:101: EP0CS   = 0x02;                         /* clear HSNACK */
                            599 ;     genAssign
   0D7C 90 7F B4            600 	mov	dptr,#_EP0CS
   0D7F 74 02               601 	mov	a,#0x02
   0D81 F0                  602 	movx	@dptr,a
                            603 ;usb_core.c:102: SUDPTRH = (uchar)((unsigned int)conf_desc >> 8);
                            604 ;     genCast
   0D82 7A 11               605 	mov	r2,#_conf_desc
   0D84 7B 13               606 	mov	r3,#(_conf_desc >> 8)
                            607 ;     genRightShift
                            608 ;     genRightShiftLiteral
                            609 ;     genrshTwo
   0D86 8B 0A               610 	mov	ar2,r3
   0D88 7B 00               611 	mov	r3,#0x00
                            612 ;     genCast
   0D8A 90 7F D4            613 	mov	dptr,#_SUDPTRH
   0D8D EA                  614 	mov	a,r2
   0D8E F0                  615 	movx	@dptr,a
                            616 ;usb_core.c:103: SUDPTRL = (unsigned int)conf_desc & 0xff;
                            617 ;     genCast
   0D8F 7A 11               618 	mov	r2,#_conf_desc
   0D91 7B 13               619 	mov	r3,#(_conf_desc >> 8)
                            620 ;     genAnd
   0D93 7B 00               621 	mov	r3,#0x00
                            622 ;     genCast
   0D95 90 7F D5            623 	mov	dptr,#_SUDPTRL
   0D98 EA                  624 	mov	a,r2
   0D99 F0                  625 	movx	@dptr,a
                            626 ;usb_core.c:104: break;
                            627 ;	Peephole 251.a	replaced ljmp to ret with ret
   0D9A 22                  628 	ret
                            629 ;usb_core.c:107: case USB_DT_STRING:
   0D9B                     630 00103$:
                            631 ;usb_core.c:108: if(sdat->wValueL < NUM_STRING) {
                            632 ;     genPlus
                            633 ;     genPlusIncr
   0D9B 74 02               634 	mov	a,#0x02
   0D9D 25 32               635 	add	a,_sdat
   0D9F F5 82               636 	mov	dpl,a
                            637 ;	Peephole 181	changed mov to clr
   0DA1 E4                  638 	clr	a
   0DA2 35 33               639 	addc	a,(_sdat + 1)
   0DA4 F5 83               640 	mov	dph,a
                            641 ;     genPointerGet
                            642 ;     genFarPointerGet
   0DA6 E0                  643 	movx	a,@dptr
   0DA7 FA                  644 	mov	r2,a
                            645 ;     genCmpLt
                            646 ;     genCmp
   0DA8 BA 04 00            647 	cjne	r2,#0x04,00128$
   0DAB                     648 00128$:
                            649 ;     genIfxJump
                            650 ;	Peephole 108	removed ljmp by inverse jump logic
   0DAB 50 5A               651 	jnc	00105$
   0DAD                     652 00129$:
                            653 ;usb_core.c:109: EP0CS   = 0x02;                     /* clear HSNACK */
                            654 ;     genAssign
   0DAD 90 7F B4            655 	mov	dptr,#_EP0CS
   0DB0 74 02               656 	mov	a,#0x02
   0DB2 F0                  657 	movx	@dptr,a
                            658 ;usb_core.c:110: SUDPTRH = (uchar)(string_index[sdat->wValueL] >> 8);
                            659 ;     genPlus
                            660 ;     genPlusIncr
   0DB3 74 02               661 	mov	a,#0x02
   0DB5 25 32               662 	add	a,_sdat
   0DB7 F5 82               663 	mov	dpl,a
                            664 ;	Peephole 181	changed mov to clr
   0DB9 E4                  665 	clr	a
   0DBA 35 33               666 	addc	a,(_sdat + 1)
   0DBC F5 83               667 	mov	dph,a
                            668 ;     genPointerGet
                            669 ;     genFarPointerGet
   0DBE E0                  670 	movx	a,@dptr
                            671 ;     genMult
                            672 ;     genMultOneByte
                            673 ;	Peephole 105	removed redundant mov
   0DBF FA                  674 	mov	r2,a
   0DC0 75 F0 02            675 	mov	b,#0x02
   0DC3 A4                  676 	mul	ab
                            677 ;     genPlus
   0DC4 24 DE               678 	add	a,#_string_index
   0DC6 F5 82               679 	mov	dpl,a
   0DC8 74 13               680 	mov	a,#(_string_index >> 8)
   0DCA 35 F0               681 	addc	a,b
   0DCC F5 83               682 	mov	dph,a
                            683 ;     genPointerGet
                            684 ;     genCodePointerGet
                            685 ;	Peephole 181	changed mov to clr
   0DCE E4                  686 	clr	a
   0DCF 93                  687 	movc	a,@a+dptr
   0DD0 FA                  688 	mov	r2,a
   0DD1 74 01               689 	mov	a,#0x01
   0DD3 93                  690 	movc	a,@a+dptr
   0DD4 FB                  691 	mov	r3,a
                            692 ;     genRightShift
                            693 ;     genRightShiftLiteral
                            694 ;     genrshTwo
   0DD5 8B 0A               695 	mov	ar2,r3
   0DD7 7B 00               696 	mov	r3,#0x00
                            697 ;     genCast
   0DD9 90 7F D4            698 	mov	dptr,#_SUDPTRH
   0DDC EA                  699 	mov	a,r2
   0DDD F0                  700 	movx	@dptr,a
                            701 ;usb_core.c:111: SUDPTRL = string_index[sdat->wValueL] & 0xff;
                            702 ;     genPlus
                            703 ;     genPlusIncr
   0DDE 74 02               704 	mov	a,#0x02
   0DE0 25 32               705 	add	a,_sdat
   0DE2 F5 82               706 	mov	dpl,a
                            707 ;	Peephole 181	changed mov to clr
   0DE4 E4                  708 	clr	a
   0DE5 35 33               709 	addc	a,(_sdat + 1)
   0DE7 F5 83               710 	mov	dph,a
                            711 ;     genPointerGet
                            712 ;     genFarPointerGet
   0DE9 E0                  713 	movx	a,@dptr
                            714 ;     genMult
                            715 ;     genMultOneByte
                            716 ;	Peephole 105	removed redundant mov
   0DEA FA                  717 	mov	r2,a
   0DEB 75 F0 02            718 	mov	b,#0x02
   0DEE A4                  719 	mul	ab
                            720 ;     genPlus
   0DEF 24 DE               721 	add	a,#_string_index
   0DF1 F5 82               722 	mov	dpl,a
   0DF3 74 13               723 	mov	a,#(_string_index >> 8)
   0DF5 35 F0               724 	addc	a,b
   0DF7 F5 83               725 	mov	dph,a
                            726 ;     genPointerGet
                            727 ;     genCodePointerGet
                            728 ;	Peephole 181	changed mov to clr
   0DF9 E4                  729 	clr	a
   0DFA 93                  730 	movc	a,@a+dptr
   0DFB FA                  731 	mov	r2,a
   0DFC 74 01               732 	mov	a,#0x01
   0DFE 93                  733 	movc	a,@a+dptr
                            734 ;     genAnd
                            735 ;	Peephole 177.c	removed redundant move
   0DFF 7B 00               736 	mov	r3,#0x00
                            737 ;     genCast
   0E01 90 7F D5            738 	mov	dptr,#_SUDPTRL
   0E04 EA                  739 	mov	a,r2
   0E05 F0                  740 	movx	@dptr,a
                            741 ;	Peephole 112.b	changed ljmp to sjmp
                            742 ;	Peephole 251.b	replaced sjmp to ret with ret
   0E06 22                  743 	ret
   0E07                     744 00105$:
                            745 ;usb_core.c:113: EP0CS   = 0x03;                     /* stall */
                            746 ;     genAssign
   0E07 90 7F B4            747 	mov	dptr,#_EP0CS
   0E0A 74 03               748 	mov	a,#0x03
   0E0C F0                  749 	movx	@dptr,a
                            750 ;usb_core.c:115: break;
                            751 ;usb_core.c:118: case USB_DT_HID:
                            752 ;	Peephole 112.b	changed ljmp to sjmp
                            753 ;	Peephole 251.b	replaced sjmp to ret with ret
   0E0D 22                  754 	ret
   0E0E                     755 00107$:
                            756 ;usb_core.c:119: EP0CS   = 0x02;                         /* clear HSNACK */
                            757 ;     genAssign
   0E0E 90 7F B4            758 	mov	dptr,#_EP0CS
   0E11 74 02               759 	mov	a,#0x02
   0E13 F0                  760 	movx	@dptr,a
                            761 ;usb_core.c:120: SUDPTRH = (uchar)(((unsigned int)conf_desc) + 18 >> 8);
                            762 ;     genCast
   0E14 7A 11               763 	mov	r2,#_conf_desc
   0E16 7B 13               764 	mov	r3,#(_conf_desc >> 8)
                            765 ;     genPlus
   0E18 74 12               766 	mov	a,#0x12
                            767 ;	Peephole 236.a	used r2 instead of ar2
   0E1A 2A                  768 	add	a,r2
   0E1B FA                  769 	mov	r2,a
                            770 ;	Peephole 181	changed mov to clr
   0E1C E4                  771 	clr	a
                            772 ;	Peephole 236.b	used r3 instead of ar3
   0E1D 3B                  773 	addc	a,r3
   0E1E FB                  774 	mov	r3,a
                            775 ;     genRightShift
                            776 ;     genRightShiftLiteral
                            777 ;     genrshTwo
   0E1F 8B 0A               778 	mov	ar2,r3
   0E21 7B 00               779 	mov	r3,#0x00
                            780 ;     genCast
   0E23 90 7F D4            781 	mov	dptr,#_SUDPTRH
   0E26 EA                  782 	mov	a,r2
   0E27 F0                  783 	movx	@dptr,a
                            784 ;usb_core.c:121: SUDPTRL = ((unsigned int)conf_desc) + 18 & 0xff;
                            785 ;     genCast
   0E28 7A 11               786 	mov	r2,#_conf_desc
   0E2A 7B 13               787 	mov	r3,#(_conf_desc >> 8)
                            788 ;     genCast
                            789 ;     genPlus
   0E2C 90 7F D5            790 	mov	dptr,#_SUDPTRL
   0E2F 74 12               791 	mov	a,#0x12
                            792 ;	Peephole 236.a	used r2 instead of ar2
   0E31 2A                  793 	add	a,r2
   0E32 F0                  794 	movx	@dptr,a
                            795 ;usb_core.c:122: break;
                            796 ;usb_core.c:125: case USB_DT_REPORT:
                            797 ;	Peephole 112.b	changed ljmp to sjmp
                            798 ;	Peephole 251.b	replaced sjmp to ret with ret
   0E33 22                  799 	ret
   0E34                     800 00108$:
                            801 ;usb_core.c:126: if(sdat->wIndexL == 0) {
                            802 ;     genPlus
                            803 ;     genPlusIncr
   0E34 74 04               804 	mov	a,#0x04
   0E36 25 32               805 	add	a,_sdat
   0E38 F5 82               806 	mov	dpl,a
                            807 ;	Peephole 181	changed mov to clr
   0E3A E4                  808 	clr	a
   0E3B 35 33               809 	addc	a,(_sdat + 1)
   0E3D F5 83               810 	mov	dph,a
                            811 ;     genPointerGet
                            812 ;     genFarPointerGet
   0E3F E0                  813 	movx	a,@dptr
                            814 ;     genCmpEq
                            815 ;	Peephole 115.b	jump optimization
   0E40 FA                  816 	mov	r2,a
   0E41 60 02               817 	jz	00131$
   0E43                     818 00130$:
                            819 ;	Peephole 112.b	changed ljmp to sjmp
   0E43 80 1F               820 	sjmp	00110$
   0E45                     821 00131$:
                            822 ;usb_core.c:127: EP0CS   = 0x02;                     /* clear HSNACK */
                            823 ;     genAssign
   0E45 90 7F B4            824 	mov	dptr,#_EP0CS
   0E48 74 02               825 	mov	a,#0x02
   0E4A F0                  826 	movx	@dptr,a
                            827 ;usb_core.c:128: SUDPTRH = (uchar)((unsigned int)(report_desc_keyboard) >> 8);
                            828 ;     genCast
   0E4B 7A 33               829 	mov	r2,#_report_desc_keyboard
   0E4D 7B 13               830 	mov	r3,#(_report_desc_keyboard >> 8)
                            831 ;     genRightShift
                            832 ;     genRightShiftLiteral
                            833 ;     genrshTwo
   0E4F 8B 0A               834 	mov	ar2,r3
   0E51 7B 00               835 	mov	r3,#0x00
                            836 ;     genCast
   0E53 90 7F D4            837 	mov	dptr,#_SUDPTRH
   0E56 EA                  838 	mov	a,r2
   0E57 F0                  839 	movx	@dptr,a
                            840 ;usb_core.c:129: SUDPTRL = (unsigned int)(report_desc_keyboard) & 0xff;
                            841 ;     genCast
   0E58 7A 33               842 	mov	r2,#_report_desc_keyboard
   0E5A 7B 13               843 	mov	r3,#(_report_desc_keyboard >> 8)
                            844 ;     genAnd
   0E5C 7B 00               845 	mov	r3,#0x00
                            846 ;     genCast
   0E5E 90 7F D5            847 	mov	dptr,#_SUDPTRL
   0E61 EA                  848 	mov	a,r2
   0E62 F0                  849 	movx	@dptr,a
                            850 ;	Peephole 112.b	changed ljmp to sjmp
                            851 ;	Peephole 251.b	replaced sjmp to ret with ret
   0E63 22                  852 	ret
   0E64                     853 00110$:
                            854 ;usb_core.c:131: EP0CS   = 0x03;                     /* stall */
                            855 ;     genAssign
   0E64 90 7F B4            856 	mov	dptr,#_EP0CS
   0E67 74 03               857 	mov	a,#0x03
   0E69 F0                  858 	movx	@dptr,a
                            859 ;usb_core.c:132: break;
                            860 ;usb_core.c:134: default:
                            861 ;	Peephole 112.b	changed ljmp to sjmp
                            862 ;	Peephole 251.b	replaced sjmp to ret with ret
   0E6A 22                  863 	ret
   0E6B                     864 00112$:
                            865 ;usb_core.c:135: EP0CS       = 0x03;                     /* stall */
                            866 ;     genAssign
   0E6B 90 7F B4            867 	mov	dptr,#_EP0CS
   0E6E 74 03               868 	mov	a,#0x03
   0E70 F0                  869 	movx	@dptr,a
                            870 ;usb_core.c:137: }
   0E71                     871 00114$:
   0E71 22                  872 	ret
                            873 ;------------------------------------------------------------
                            874 ;Allocation info for local variables in function 'isr_usb'
                            875 ;------------------------------------------------------------
                            876 ;i                         Allocated to registers r2 
                            877 ;------------------------------------------------------------
                            878 ;usb_core.c:154: void isr_usb(void) interrupt 8 using 1
                            879 ;	-----------------------------------------
                            880 ;	 function isr_usb
                            881 ;	-----------------------------------------
   0E72                     882 _isr_usb:
   0E72 C0 E0               883 	push	acc
   0E74 C0 F0               884 	push	b
   0E76 C0 82               885 	push	dpl
   0E78 C0 83               886 	push	dph
   0E7A C0 D0               887 	push	psw
   0E7C 75 D0 08            888 	mov	psw,#0x08
                            889 ;usb_core.c:158: EXIF &= 0xef;                           /* clear INT2 interrupt */
                            890 ;     genAnd
   0E7F 53 91 EF            891 	anl	_EXIF,#0xEF
                            892 ;usb_core.c:161: if(USBIRQ & 0x01) {
                            893 ;     genAssign
   0E82 90 7F AB            894 	mov	dptr,#_USBIRQ
   0E85 E0                  895 	movx	a,@dptr
                            896 ;     genAnd
                            897 ;	Peephole 105	removed redundant mov
   0E86 FA                  898 	mov	r2,a
                            899 ;     genIfxJump
   0E87 20 E0 03            900 	jb	acc.0,00237$
   0E8A 02 12 4B            901 	ljmp	00182$
   0E8D                     902 00237$:
                            903 ;usb_core.c:162: USBIRQ = 0x01;                     /* clear SUDAV interrupt */
                            904 ;     genAssign
   0E8D 90 7F AB            905 	mov	dptr,#_USBIRQ
   0E90 74 01               906 	mov	a,#0x01
   0E92 F0                  907 	movx	@dptr,a
                            908 ;usb_core.c:164: switch(sdat->bRequest) {
                            909 ;     genPlus
                            910 ;     genPlusIncr
   0E93 74 01               911 	mov	a,#0x01
   0E95 25 32               912 	add	a,_sdat
   0E97 F5 82               913 	mov	dpl,a
                            914 ;	Peephole 181	changed mov to clr
   0E99 E4                  915 	clr	a
   0E9A 35 33               916 	addc	a,(_sdat + 1)
   0E9C F5 83               917 	mov	dph,a
                            918 ;     genPointerGet
                            919 ;     genFarPointerGet
   0E9E E0                  920 	movx	a,@dptr
                            921 ;     genCmpGt
                            922 ;     genCmp
                            923 ;     genIfxJump
                            924 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
                            925 ;	Peephole 177.a	removed redundant mov
   0E9F FA                  926 	mov  r2,a
   0EA0 24 F4               927 	add	a,#0xff - 0x0B
   0EA2 50 03               928 	jnc	00238$
   0EA4 02 12 45            929 	ljmp	00179$
   0EA7                     930 00238$:
                            931 ;     genJumpTab
                            932 ;	Peephole 254	optimized left shift
   0EA7 EA                  933 	mov	a,r2
   0EA8 2A                  934 	add	a,r2
   0EA9 2A                  935 	add	a,r2
   0EAA 90 0E AE            936 	mov	dptr,#00239$
   0EAD 73                  937 	jmp	@a+dptr
   0EAE                     938 00239$:
   0EAE 02 0E D2            939 	ljmp	00101$
   0EB1 02 0F 08            940 	ljmp	00107$
   0EB4 02 0F E1            941 	ljmp	00125$
   0EB7 02 10 24            942 	ljmp	00132$
   0EBA 02 12 45            943 	ljmp	00179$
   0EBD 02 12 45            944 	ljmp	00179$
   0EC0 02 11 09            945 	ljmp	00147$
   0EC3 02 12 45            946 	ljmp	00179$
   0EC6 02 11 0F            947 	ljmp	00148$
   0EC9 02 11 38            948 	ljmp	00152$
   0ECC 02 11 63            949 	ljmp	00157$
   0ECF 02 11 D8            950 	ljmp	00168$
                            951 ;usb_core.c:166: case 0x00:
   0ED2                     952 00101$:
                            953 ;usb_core.c:167: switch(sdat->bmRequestType) {
                            954 ;     genAssign
   0ED2 85 32 82            955 	mov	dpl,_sdat
   0ED5 85 33 83            956 	mov	dph,(_sdat + 1)
                            957 ;     genPointerGet
                            958 ;     genFarPointerGet
   0ED8 E0                  959 	movx	a,@dptr
   0ED9 FA                  960 	mov	r2,a
                            961 ;     genCmpEq
   0EDA BA 80 02            962 	cjne	r2,#0x80,00240$
                            963 ;	Peephole 112.b	changed ljmp to sjmp
   0EDD 80 08               964 	sjmp	00104$
   0EDF                     965 00240$:
                            966 ;     genCmpEq
   0EDF BA 81 02            967 	cjne	r2,#0x81,00241$
                            968 ;	Peephole 112.b	changed ljmp to sjmp
   0EE2 80 03               969 	sjmp	00104$
   0EE4                     970 00241$:
                            971 ;     genCmpEq
                            972 ;	Peephole 112.b	changed ljmp to sjmp
                            973 ;	Peephole 199	optimized misc jump sequence
   0EE4 BA 82 18            974 	cjne	r2,#0x82,00105$
                            975 ;00242$:
                            976 ;	Peephole 200	removed redundant sjmp
   0EE7                     977 00243$:
                            978 ;usb_core.c:173: case 0x82:
   0EE7                     979 00104$:
                            980 ;usb_core.c:174: in0buf(0) = 0x00;
                            981 ;     genPointerSet
                            982 ;     genFarPointerSet
   0EE7 90 7F 00            983 	mov	dptr,#_IN0BUF
                            984 ;	Peephole 181	changed mov to clr
                            985 ;usb_core.c:175: in0buf(1) = 0x00;
                            986 ;     genPointerSet
                            987 ;     genFarPointerSet
                            988 ;	Peephole 181	changed mov to clr
                            989 ;	Peephole 219	removed redundant clear
   0EEA E4                  990 	clr	a
   0EEB F0                  991 	movx	@dptr,a
   0EEC 90 7F 01            992 	mov	dptr,#(_IN0BUF + 0x0001)
   0EEF F0                  993 	movx	@dptr,a
                            994 ;usb_core.c:176: IN0BC     = 0x02;
                            995 ;     genAssign
   0EF0 90 7F B5            996 	mov	dptr,#_IN0BC
   0EF3 74 02               997 	mov	a,#0x02
   0EF5 F0                  998 	movx	@dptr,a
                            999 ;usb_core.c:177: EP0CS     = 0x02;           /* clear HSNACK */
                           1000 ;     genAssign
   0EF6 90 7F B4           1001 	mov	dptr,#_EP0CS
   0EF9 74 02              1002 	mov	a,#0x02
   0EFB F0                 1003 	movx	@dptr,a
                           1004 ;usb_core.c:178: break;
   0EFC 02 12 4B           1005 	ljmp	00182$
                           1006 ;usb_core.c:180: default:
   0EFF                    1007 00105$:
                           1008 ;usb_core.c:181: EP0CS     = 0x03;           /* stall */
                           1009 ;     genAssign
   0EFF 90 7F B4           1010 	mov	dptr,#_EP0CS
   0F02 74 03              1011 	mov	a,#0x03
   0F04 F0                 1012 	movx	@dptr,a
                           1013 ;usb_core.c:184: break;
   0F05 02 12 4B           1014 	ljmp	00182$
                           1015 ;usb_core.c:187: case 0x01:
   0F08                    1016 00107$:
                           1017 ;usb_core.c:188: switch(sdat->bmRequestType) {
                           1018 ;     genAssign
   0F08 85 32 82           1019 	mov	dpl,_sdat
   0F0B 85 33 83           1020 	mov	dph,(_sdat + 1)
                           1021 ;     genPointerGet
                           1022 ;     genFarPointerGet
   0F0E E0                 1023 	movx	a,@dptr
                           1024 ;     genCmpEq
                           1025 ;	Peephole 112.b	changed ljmp to sjmp
                           1026 ;	Peephole 115.b	jump optimization
   0F0F FA                 1027 	mov	r2,a
   0F10 60 13              1028 	jz	00108$
   0F12                    1029 00244$:
                           1030 ;     genCmpEq
   0F12 BA 01 02           1031 	cjne	r2,#0x01,00245$
                           1032 ;	Peephole 112.b	changed ljmp to sjmp
   0F15 80 17              1033 	sjmp	00109$
   0F17                    1034 00245$:
                           1035 ;     genCmpEq
   0F17 BA 02 02           1036 	cjne	r2,#0x02,00246$
                           1037 ;	Peephole 112.b	changed ljmp to sjmp
   0F1A 80 1B              1038 	sjmp	00110$
   0F1C                    1039 00246$:
                           1040 ;     genCmpEq
   0F1C BA A1 03           1041 	cjne	r2,#0xA1,00247$
   0F1F 02 0F 96           1042 	ljmp	00116$
   0F22                    1043 00247$:
   0F22 02 0F D8           1044 	ljmp	00123$
                           1045 ;usb_core.c:190: case 0x00:
   0F25                    1046 00108$:
                           1047 ;usb_core.c:191: EP0CS = 0x02;               /* clear HSNACK */
                           1048 ;     genAssign
   0F25 90 7F B4           1049 	mov	dptr,#_EP0CS
   0F28 74 02              1050 	mov	a,#0x02
   0F2A F0                 1051 	movx	@dptr,a
                           1052 ;usb_core.c:192: break;
   0F2B 02 12 4B           1053 	ljmp	00182$
                           1054 ;usb_core.c:194: case 0x01:
   0F2E                    1055 00109$:
                           1056 ;usb_core.c:195: EP0CS = 0x02;               /* clear HSNACK */
                           1057 ;     genAssign
   0F2E 90 7F B4           1058 	mov	dptr,#_EP0CS
   0F31 74 02              1059 	mov	a,#0x02
   0F33 F0                 1060 	movx	@dptr,a
                           1061 ;usb_core.c:196: break;
   0F34 02 12 4B           1062 	ljmp	00182$
                           1063 ;usb_core.c:198: case 0x02:
   0F37                    1064 00110$:
                           1065 ;usb_core.c:199: switch(sdat->wIndexL) {
                           1066 ;     genPlus
                           1067 ;     genPlusIncr
   0F37 74 04              1068 	mov	a,#0x04
   0F39 25 32              1069 	add	a,_sdat
   0F3B F5 82              1070 	mov	dpl,a
                           1071 ;	Peephole 181	changed mov to clr
   0F3D E4                 1072 	clr	a
   0F3E 35 33              1073 	addc	a,(_sdat + 1)
   0F40 F5 83              1074 	mov	dph,a
                           1075 ;     genPointerGet
                           1076 ;     genFarPointerGet
   0F42 E0                 1077 	movx	a,@dptr
                           1078 ;     genCmpEq
                           1079 ;	Peephole 112.b	changed ljmp to sjmp
                           1080 ;	Peephole 115.b	jump optimization
   0F43 FA                 1081 	mov	r2,a
   0F44 60 0A              1082 	jz	00111$
   0F46                    1083 00248$:
                           1084 ;     genCmpEq
   0F46 BA 80 02           1085 	cjne	r2,#0x80,00249$
                           1086 ;	Peephole 112.b	changed ljmp to sjmp
   0F49 80 16              1087 	sjmp	00112$
   0F4B                    1088 00249$:
                           1089 ;     genCmpEq
                           1090 ;	Peephole 112.b	changed ljmp to sjmp
                           1091 ;usb_core.c:202: case 0x00:              /* OUT0 */
                           1092 ;	Peephole 112.b	changed ljmp to sjmp
                           1093 ;	Peephole 199	optimized misc jump sequence
   0F4B BA 81 3F           1094 	cjne	r2,#0x81,00114$
   0F4E 80 23              1095 	sjmp	00113$
                           1096 ;00250$:
   0F50                    1097 00111$:
                           1098 ;usb_core.c:203: TOGCTL = 0x00;
                           1099 ;     genAssign
                           1100 ;usb_core.c:204: TOGCTL = 0x20;
                           1101 ;     genAssign
                           1102 ;	Peephole 180.a	removed redundant mov to dptr
   0F50 90 7F D7           1103 	mov	dptr,#_TOGCTL
                           1104 ;	Peephole 181	changed mov to clr
   0F53 E4                 1105 	clr	a
   0F54 F0                 1106 	movx	@dptr,a
   0F55 74 20              1107 	mov	a,#0x20
   0F57 F0                 1108 	movx	@dptr,a
                           1109 ;usb_core.c:205: EP0CS  = 0x02;      /* clear HSNACK */
                           1110 ;     genAssign
   0F58 90 7F B4           1111 	mov	dptr,#_EP0CS
   0F5B 74 02              1112 	mov	a,#0x02
   0F5D F0                 1113 	movx	@dptr,a
                           1114 ;usb_core.c:206: break;
   0F5E 02 12 4B           1115 	ljmp	00182$
                           1116 ;usb_core.c:207: case 0x80:              /* IN0  */
   0F61                    1117 00112$:
                           1118 ;usb_core.c:208: TOGCTL = 0x10;
                           1119 ;     genAssign
                           1120 ;usb_core.c:209: TOGCTL = 0x30;
                           1121 ;     genAssign
                           1122 ;	Peephole 180.a	removed redundant mov to dptr
   0F61 90 7F D7           1123 	mov	dptr,#_TOGCTL
   0F64 74 10              1124 	mov	a,#0x10
   0F66 F0                 1125 	movx	@dptr,a
   0F67 74 30              1126 	mov	a,#0x30
   0F69 F0                 1127 	movx	@dptr,a
                           1128 ;usb_core.c:210: EP0CS  = 0x02;      /* clear HSNACK */
                           1129 ;     genAssign
   0F6A 90 7F B4           1130 	mov	dptr,#_EP0CS
   0F6D 74 02              1131 	mov	a,#0x02
   0F6F F0                 1132 	movx	@dptr,a
                           1133 ;usb_core.c:211: break;
   0F70 02 12 4B           1134 	ljmp	00182$
                           1135 ;usb_core.c:212: case 0x81:              /* IN1  */
   0F73                    1136 00113$:
                           1137 ;usb_core.c:213: IN1CS &= 0xfe;      /* unstall endpoint */
                           1138 ;     genAssign
                           1139 ;     genAnd
                           1140 ;	Peephole 248.b	optimized and to xdata
   0F73 90 7F B6           1141 	mov	dptr,#_IN1CS
   0F76 E0                 1142 	movx	a,@dptr
   0F77 FA                 1143 	mov	r2,a
   0F78 54 FE              1144 	anl	a,#0xFE
   0F7A F0                 1145 	movx	@dptr,a
                           1146 ;usb_core.c:214: TOGCTL = 0x11;
                           1147 ;     genAssign
                           1148 ;usb_core.c:215: TOGCTL = 0x31;
                           1149 ;     genAssign
                           1150 ;	Peephole 180.a	removed redundant mov to dptr
   0F7B 90 7F D7           1151 	mov	dptr,#_TOGCTL
   0F7E 74 11              1152 	mov	a,#0x11
   0F80 F0                 1153 	movx	@dptr,a
   0F81 74 31              1154 	mov	a,#0x31
   0F83 F0                 1155 	movx	@dptr,a
                           1156 ;usb_core.c:216: EP0CS  = 0x02;      /* clear HSNACK */;
                           1157 ;     genAssign
   0F84 90 7F B4           1158 	mov	dptr,#_EP0CS
   0F87 74 02              1159 	mov	a,#0x02
   0F89 F0                 1160 	movx	@dptr,a
                           1161 ;usb_core.c:217: break;
   0F8A 02 12 4B           1162 	ljmp	00182$
                           1163 ;usb_core.c:218: default:
   0F8D                    1164 00114$:
                           1165 ;usb_core.c:219: EP0CS  = 0x03;      /* stall */
                           1166 ;     genAssign
   0F8D 90 7F B4           1167 	mov	dptr,#_EP0CS
   0F90 74 03              1168 	mov	a,#0x03
   0F92 F0                 1169 	movx	@dptr,a
                           1170 ;usb_core.c:222: break;
   0F93 02 12 4B           1171 	ljmp	00182$
                           1172 ;usb_core.c:225: case 0xa1:
   0F96                    1173 00116$:
                           1174 ;usb_core.c:228: if(sdat->wIndexL == 0) {
                           1175 ;     genPlus
                           1176 ;     genPlusIncr
   0F96 74 04              1177 	mov	a,#0x04
   0F98 25 32              1178 	add	a,_sdat
   0F9A F5 82              1179 	mov	dpl,a
                           1180 ;	Peephole 181	changed mov to clr
   0F9C E4                 1181 	clr	a
   0F9D 35 33              1182 	addc	a,(_sdat + 1)
   0F9F F5 83              1183 	mov	dph,a
                           1184 ;     genPointerGet
                           1185 ;     genFarPointerGet
   0FA1 E0                 1186 	movx	a,@dptr
                           1187 ;     genCmpEq
                           1188 ;	Peephole 115.b	jump optimization
   0FA2 FA                 1189 	mov	r2,a
   0FA3 60 02              1190 	jz	00252$
   0FA5                    1191 00251$:
                           1192 ;	Peephole 112.b	changed ljmp to sjmp
   0FA5 80 28              1193 	sjmp	00121$
   0FA7                    1194 00252$:
                           1195 ;usb_core.c:229: while(i-- > 0)
                           1196 ;     genAssign
   0FA7 7A 07              1197 	mov	r2,#0x07
   0FA9                    1198 00117$:
                           1199 ;     genAssign
   0FA9 8A 0B              1200 	mov	ar3,r2
                           1201 ;     genMinus
                           1202 ;     genMinusDec
   0FAB 1A                 1203 	dec	r2
                           1204 ;     genCmpGt
                           1205 ;     genCmp
                           1206 ;     genIfxJump
                           1207 ;	Peephole 108	removed ljmp by inverse jump logic
                           1208 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   0FAC EB                 1209 	mov	a,r3
   0FAD 24 FF              1210 	add	a,#0xff - 0x00
   0FAF 50 0F              1211 	jnc	00119$
   0FB1                    1212 00253$:
                           1213 ;usb_core.c:230: in0buf(i) = SendCurr[i];
                           1214 ;     genPlus
                           1215 ;     genPlus aligned array
   0FB1 8A 82              1216 	mov	dpl,r2
   0FB3 75 83 7F           1217 	mov	dph,#(_IN0BUF >> 8)
                           1218 ;     genPlus
                           1219 ;	Peephole 236.g	used r2 instead of ar2
   0FB6 EA                 1220 	mov	a,r2
   0FB7 24 00              1221 	add	a,#_SendCurr
   0FB9 F8                 1222 	mov	r0,a
                           1223 ;     genPointerGet
                           1224 ;     genNearPointerGet
   0FBA 86 0B              1225 	mov	ar3,@r0
                           1226 ;     genPointerSet
                           1227 ;     genFarPointerSet
   0FBC EB                 1228 	mov	a,r3
   0FBD F0                 1229 	movx	@dptr,a
                           1230 ;	Peephole 112.b	changed ljmp to sjmp
   0FBE 80 E9              1231 	sjmp	00117$
   0FC0                    1232 00119$:
                           1233 ;usb_core.c:233: IN0BC = 0x08;
                           1234 ;     genAssign
   0FC0 90 7F B5           1235 	mov	dptr,#_IN0BC
   0FC3 74 08              1236 	mov	a,#0x08
   0FC5 F0                 1237 	movx	@dptr,a
                           1238 ;usb_core.c:234: EP0CS = 0x02;           /* clear HSNACK */
                           1239 ;     genAssign
   0FC6 90 7F B4           1240 	mov	dptr,#_EP0CS
   0FC9 74 02              1241 	mov	a,#0x02
   0FCB F0                 1242 	movx	@dptr,a
   0FCC 02 12 4B           1243 	ljmp	00182$
   0FCF                    1244 00121$:
                           1245 ;usb_core.c:236: EP0CS = 0x03;           /* stall */
                           1246 ;     genAssign
   0FCF 90 7F B4           1247 	mov	dptr,#_EP0CS
   0FD2 74 03              1248 	mov	a,#0x03
   0FD4 F0                 1249 	movx	@dptr,a
                           1250 ;usb_core.c:237: break;
   0FD5 02 12 4B           1251 	ljmp	00182$
                           1252 ;usb_core.c:239: default:
   0FD8                    1253 00123$:
                           1254 ;usb_core.c:240: EP0CS     = 0x03;           /* stall */
                           1255 ;     genAssign
   0FD8 90 7F B4           1256 	mov	dptr,#_EP0CS
   0FDB 74 03              1257 	mov	a,#0x03
   0FDD F0                 1258 	movx	@dptr,a
                           1259 ;usb_core.c:243: break;
   0FDE 02 12 4B           1260 	ljmp	00182$
                           1261 ;usb_core.c:246: case 0x02:
   0FE1                    1262 00125$:
                           1263 ;usb_core.c:247: switch(sdat->bmRequestType) {
                           1264 ;     genAssign
   0FE1 85 32 82           1265 	mov	dpl,_sdat
   0FE4 85 33 83           1266 	mov	dph,(_sdat + 1)
                           1267 ;     genPointerGet
                           1268 ;     genFarPointerGet
   0FE7 E0                 1269 	movx	a,@dptr
   0FE8 FA                 1270 	mov	r2,a
                           1271 ;     genCmpEq
                           1272 ;	Peephole 112.b	changed ljmp to sjmp
                           1273 ;	Peephole 199	optimized misc jump sequence
   0FE9 BA A1 2F           1274 	cjne	r2,#0xA1,00130$
                           1275 ;00254$:
                           1276 ;	Peephole 200	removed redundant sjmp
   0FEC                    1277 00255$:
                           1278 ;usb_core.c:250: if(sdat->wIndexL == 0) {
                           1279 ;     genPlus
                           1280 ;     genPlusIncr
   0FEC 74 04              1281 	mov	a,#0x04
   0FEE 25 32              1282 	add	a,_sdat
   0FF0 F5 82              1283 	mov	dpl,a
                           1284 ;	Peephole 181	changed mov to clr
   0FF2 E4                 1285 	clr	a
   0FF3 35 33              1286 	addc	a,(_sdat + 1)
   0FF5 F5 83              1287 	mov	dph,a
                           1288 ;     genPointerGet
                           1289 ;     genFarPointerGet
   0FF7 E0                 1290 	movx	a,@dptr
                           1291 ;     genCmpEq
                           1292 ;	Peephole 115.b	jump optimization
   0FF8 FA                 1293 	mov	r2,a
   0FF9 60 02              1294 	jz	00257$
   0FFB                    1295 00256$:
                           1296 ;	Peephole 112.b	changed ljmp to sjmp
   0FFB 80 15              1297 	sjmp	00128$
   0FFD                    1298 00257$:
                           1299 ;usb_core.c:251: in0buf(0) = kbd_idle_duration;
                           1300 ;     genPointerSet
                           1301 ;     genFarPointerSet
   0FFD 90 7F 00           1302 	mov	dptr,#_IN0BUF
   1000 E5 30              1303 	mov	a,_kbd_idle_duration
   1002 F0                 1304 	movx	@dptr,a
                           1305 ;usb_core.c:252: IN0BC     = 0x01;
                           1306 ;     genAssign
   1003 90 7F B5           1307 	mov	dptr,#_IN0BC
   1006 74 01              1308 	mov	a,#0x01
   1008 F0                 1309 	movx	@dptr,a
                           1310 ;usb_core.c:253: EP0CS     = 0x02;       /* clear HSNACK */
                           1311 ;     genAssign
   1009 90 7F B4           1312 	mov	dptr,#_EP0CS
   100C 74 02              1313 	mov	a,#0x02
   100E F0                 1314 	movx	@dptr,a
   100F 02 12 4B           1315 	ljmp	00182$
   1012                    1316 00128$:
                           1317 ;usb_core.c:255: EP0CS     = 0x03;       /* stall */
                           1318 ;     genAssign
   1012 90 7F B4           1319 	mov	dptr,#_EP0CS
   1015 74 03              1320 	mov	a,#0x03
   1017 F0                 1321 	movx	@dptr,a
                           1322 ;usb_core.c:256: break;
   1018 02 12 4B           1323 	ljmp	00182$
                           1324 ;usb_core.c:258: default:
   101B                    1325 00130$:
                           1326 ;usb_core.c:259: EP0CS         = 0x03;       /* stall */
                           1327 ;     genAssign
   101B 90 7F B4           1328 	mov	dptr,#_EP0CS
   101E 74 03              1329 	mov	a,#0x03
   1020 F0                 1330 	movx	@dptr,a
                           1331 ;usb_core.c:262: break;
   1021 02 12 4B           1332 	ljmp	00182$
                           1333 ;usb_core.c:265: case 0x03:
   1024                    1334 00132$:
                           1335 ;usb_core.c:266: switch(sdat->bmRequestType) {
                           1336 ;     genAssign
   1024 85 32 82           1337 	mov	dpl,_sdat
   1027 85 33 83           1338 	mov	dph,(_sdat + 1)
                           1339 ;     genPointerGet
                           1340 ;     genFarPointerGet
   102A E0                 1341 	movx	a,@dptr
                           1342 ;     genCmpEq
                           1343 ;	Peephole 112.b	changed ljmp to sjmp
                           1344 ;	Peephole 115.b	jump optimization
   102B FA                 1345 	mov	r2,a
   102C 60 13              1346 	jz	00133$
   102E                    1347 00258$:
                           1348 ;     genCmpEq
   102E BA 01 02           1349 	cjne	r2,#0x01,00259$
                           1350 ;	Peephole 112.b	changed ljmp to sjmp
   1031 80 17              1351 	sjmp	00134$
   1033                    1352 00259$:
                           1353 ;     genCmpEq
   1033 BA 02 02           1354 	cjne	r2,#0x02,00260$
                           1355 ;	Peephole 112.b	changed ljmp to sjmp
   1036 80 1B              1356 	sjmp	00135$
   1038                    1357 00260$:
                           1358 ;     genCmpEq
   1038 BA A1 03           1359 	cjne	r2,#0xA1,00261$
   103B 02 10 D1           1360 	ljmp	00141$
   103E                    1361 00261$:
   103E 02 11 00           1362 	ljmp	00145$
                           1363 ;usb_core.c:268: case 0x00:
   1041                    1364 00133$:
                           1365 ;usb_core.c:269: EP0CS     = 0x02;           /* clear HSNACK */
                           1366 ;     genAssign
   1041 90 7F B4           1367 	mov	dptr,#_EP0CS
   1044 74 02              1368 	mov	a,#0x02
   1046 F0                 1369 	movx	@dptr,a
                           1370 ;usb_core.c:270: break;
   1047 02 12 4B           1371 	ljmp	00182$
                           1372 ;usb_core.c:273: case 0x01:
   104A                    1373 00134$:
                           1374 ;usb_core.c:274: EP0CS     = 0x02;           /* clear HSNACK */
                           1375 ;     genAssign
   104A 90 7F B4           1376 	mov	dptr,#_EP0CS
   104D 74 02              1377 	mov	a,#0x02
   104F F0                 1378 	movx	@dptr,a
                           1379 ;usb_core.c:275: break;
   1050 02 12 4B           1380 	ljmp	00182$
                           1381 ;usb_core.c:278: case 0x02:
   1053                    1382 00135$:
                           1383 ;usb_core.c:279: switch(sdat->wIndexL) {
                           1384 ;     genPlus
                           1385 ;     genPlusIncr
   1053 74 04              1386 	mov	a,#0x04
   1055 25 32              1387 	add	a,_sdat
   1057 F5 82              1388 	mov	dpl,a
                           1389 ;	Peephole 181	changed mov to clr
   1059 E4                 1390 	clr	a
   105A 35 33              1391 	addc	a,(_sdat + 1)
   105C F5 83              1392 	mov	dph,a
                           1393 ;     genPointerGet
                           1394 ;     genFarPointerGet
   105E E0                 1395 	movx	a,@dptr
                           1396 ;     genCmpEq
                           1397 ;	Peephole 112.b	changed ljmp to sjmp
                           1398 ;	Peephole 115.b	jump optimization
   105F FA                 1399 	mov	r2,a
   1060 60 0A              1400 	jz	00136$
   1062                    1401 00262$:
                           1402 ;     genCmpEq
   1062 BA 80 02           1403 	cjne	r2,#0x80,00263$
                           1404 ;	Peephole 112.b	changed ljmp to sjmp
   1065 80 25              1405 	sjmp	00137$
   1067                    1406 00263$:
                           1407 ;     genCmpEq
                           1408 ;	Peephole 112.b	changed ljmp to sjmp
                           1409 ;usb_core.c:280: case 0x00:              /* OUT0 */
                           1410 ;	Peephole 112.b	changed ljmp to sjmp
                           1411 ;	Peephole 199	optimized misc jump sequence
   1067 BA 81 5E           1412 	cjne	r2,#0x81,00139$
   106A 80 3C              1413 	sjmp	00138$
                           1414 ;00264$:
   106C                    1415 00136$:
                           1416 ;usb_core.c:281: EP0CS  |= 0x01;     /* stall endpoint */
                           1417 ;     genAssign
                           1418 ;     genOr
                           1419 ;	Peephole 248.a	optimized or to xdata
   106C 90 7F B4           1420 	mov	dptr,#_EP0CS
   106F E0                 1421 	movx	a,@dptr
   1070 FA                 1422 	mov	r2,a
   1071 44 01              1423 	orl	a,#0x01
   1073 F0                 1424 	movx	@dptr,a
                           1425 ;usb_core.c:282: TOGCTL  = 0x00;
                           1426 ;     genAssign
                           1427 ;usb_core.c:283: TOGCTL  = 0x20;
                           1428 ;     genAssign
                           1429 ;	Peephole 180.a	removed redundant mov to dptr
   1074 90 7F D7           1430 	mov	dptr,#_TOGCTL
                           1431 ;	Peephole 181	changed mov to clr
   1077 E4                 1432 	clr	a
   1078 F0                 1433 	movx	@dptr,a
   1079 74 20              1434 	mov	a,#0x20
   107B F0                 1435 	movx	@dptr,a
                           1436 ;usb_core.c:284: OUT0BC  = 0x00;
                           1437 ;     genAssign
   107C 90 7F C5           1438 	mov	dptr,#_OUT0BC
                           1439 ;	Peephole 181	changed mov to clr
   107F E4                 1440 	clr	a
   1080 F0                 1441 	movx	@dptr,a
                           1442 ;usb_core.c:285: EP0CS  |= 0x02;     /* clear HSNACK */
                           1443 ;     genAssign
                           1444 ;     genOr
                           1445 ;	Peephole 248.a	optimized or to xdata
   1081 90 7F B4           1446 	mov	dptr,#_EP0CS
   1084 E0                 1447 	movx	a,@dptr
   1085 FA                 1448 	mov	r2,a
   1086 44 02              1449 	orl	a,#0x02
   1088 F0                 1450 	movx	@dptr,a
                           1451 ;usb_core.c:286: break;
   1089 02 12 4B           1452 	ljmp	00182$
                           1453 ;usb_core.c:287: case 0x80:              /* IN0  */
   108C                    1454 00137$:
                           1455 ;usb_core.c:288: EP0CS  |= 0x01;     /* stall endpoint */
                           1456 ;     genAssign
                           1457 ;     genOr
                           1458 ;	Peephole 248.a	optimized or to xdata
   108C 90 7F B4           1459 	mov	dptr,#_EP0CS
   108F E0                 1460 	movx	a,@dptr
   1090 FA                 1461 	mov	r2,a
   1091 44 01              1462 	orl	a,#0x01
   1093 F0                 1463 	movx	@dptr,a
                           1464 ;usb_core.c:289: TOGCTL  = 0x10;
                           1465 ;     genAssign
                           1466 ;usb_core.c:290: TOGCTL  = 0x30;
                           1467 ;     genAssign
                           1468 ;	Peephole 180.a	removed redundant mov to dptr
   1094 90 7F D7           1469 	mov	dptr,#_TOGCTL
   1097 74 10              1470 	mov	a,#0x10
   1099 F0                 1471 	movx	@dptr,a
   109A 74 30              1472 	mov	a,#0x30
   109C F0                 1473 	movx	@dptr,a
                           1474 ;usb_core.c:291: EP0CS  |= 0x02;     /* clear HSNACK */
                           1475 ;     genAssign
                           1476 ;     genOr
                           1477 ;	Peephole 248.a	optimized or to xdata
   109D 90 7F B4           1478 	mov	dptr,#_EP0CS
   10A0 E0                 1479 	movx	a,@dptr
   10A1 FA                 1480 	mov	r2,a
   10A2 44 02              1481 	orl	a,#0x02
   10A4 F0                 1482 	movx	@dptr,a
                           1483 ;usb_core.c:292: break;
   10A5 02 12 4B           1484 	ljmp	00182$
                           1485 ;usb_core.c:293: case 0x81:              /* IN1  */
   10A8                    1486 00138$:
                           1487 ;usb_core.c:294: IN1CS   = 0x01;     /* stall endpoint */
                           1488 ;     genAssign
   10A8 90 7F B6           1489 	mov	dptr,#_IN1CS
   10AB 74 01              1490 	mov	a,#0x01
   10AD F0                 1491 	movx	@dptr,a
                           1492 ;usb_core.c:295: TOGCTL  = 0x11;
                           1493 ;     genAssign
                           1494 ;usb_core.c:296: TOGCTL  = 0x31;
                           1495 ;     genAssign
                           1496 ;	Peephole 180.a	removed redundant mov to dptr
   10AE 90 7F D7           1497 	mov	dptr,#_TOGCTL
   10B1 74 11              1498 	mov	a,#0x11
   10B3 F0                 1499 	movx	@dptr,a
   10B4 74 31              1500 	mov	a,#0x31
   10B6 F0                 1501 	movx	@dptr,a
                           1502 ;usb_core.c:297: IN1CS  |= 0x02;
                           1503 ;     genAssign
                           1504 ;     genOr
                           1505 ;	Peephole 248.a	optimized or to xdata
   10B7 90 7F B6           1506 	mov	dptr,#_IN1CS
   10BA E0                 1507 	movx	a,@dptr
   10BB FA                 1508 	mov	r2,a
   10BC 44 02              1509 	orl	a,#0x02
   10BE F0                 1510 	movx	@dptr,a
                           1511 ;usb_core.c:298: EP0CS   = 0x02;     /* clear HSNACK */;
                           1512 ;     genAssign
   10BF 90 7F B4           1513 	mov	dptr,#_EP0CS
   10C2 74 02              1514 	mov	a,#0x02
   10C4 F0                 1515 	movx	@dptr,a
                           1516 ;usb_core.c:299: break;
   10C5 02 12 4B           1517 	ljmp	00182$
                           1518 ;usb_core.c:300: default:
   10C8                    1519 00139$:
                           1520 ;usb_core.c:301: EP0CS   = 0x03;     /* stall */
                           1521 ;     genAssign
   10C8 90 7F B4           1522 	mov	dptr,#_EP0CS
   10CB 74 03              1523 	mov	a,#0x03
   10CD F0                 1524 	movx	@dptr,a
                           1525 ;usb_core.c:304: break;
   10CE 02 12 4B           1526 	ljmp	00182$
                           1527 ;usb_core.c:307: case 0xa1:
   10D1                    1528 00141$:
                           1529 ;usb_core.c:308: if(sdat->wIndexL == 0) {
                           1530 ;     genPlus
                           1531 ;     genPlusIncr
   10D1 74 04              1532 	mov	a,#0x04
   10D3 25 32              1533 	add	a,_sdat
   10D5 F5 82              1534 	mov	dpl,a
                           1535 ;	Peephole 181	changed mov to clr
   10D7 E4                 1536 	clr	a
   10D8 35 33              1537 	addc	a,(_sdat + 1)
   10DA F5 83              1538 	mov	dph,a
                           1539 ;     genPointerGet
                           1540 ;     genFarPointerGet
   10DC E0                 1541 	movx	a,@dptr
                           1542 ;     genCmpEq
                           1543 ;	Peephole 115.b	jump optimization
   10DD FA                 1544 	mov	r2,a
   10DE 60 02              1545 	jz	00266$
   10E0                    1546 00265$:
                           1547 ;	Peephole 112.b	changed ljmp to sjmp
   10E0 80 15              1548 	sjmp	00143$
   10E2                    1549 00266$:
                           1550 ;usb_core.c:309: in0buf(0) = 1;      /* always send Report protocol */
                           1551 ;     genPointerSet
                           1552 ;     genFarPointerSet
   10E2 90 7F 00           1553 	mov	dptr,#_IN0BUF
   10E5 74 01              1554 	mov	a,#0x01
   10E7 F0                 1555 	movx	@dptr,a
                           1556 ;usb_core.c:310: IN0BC     = 0x01;
                           1557 ;     genAssign
   10E8 90 7F B5           1558 	mov	dptr,#_IN0BC
   10EB 74 01              1559 	mov	a,#0x01
   10ED F0                 1560 	movx	@dptr,a
                           1561 ;usb_core.c:311: EP0CS     = 0x02;   /* clear HSNACK */
                           1562 ;     genAssign
   10EE 90 7F B4           1563 	mov	dptr,#_EP0CS
   10F1 74 02              1564 	mov	a,#0x02
   10F3 F0                 1565 	movx	@dptr,a
   10F4 02 12 4B           1566 	ljmp	00182$
   10F7                    1567 00143$:
                           1568 ;usb_core.c:313: EP0CS     = 0x03;   /* stall */
                           1569 ;     genAssign
   10F7 90 7F B4           1570 	mov	dptr,#_EP0CS
   10FA 74 03              1571 	mov	a,#0x03
   10FC F0                 1572 	movx	@dptr,a
                           1573 ;usb_core.c:314: break;
   10FD 02 12 4B           1574 	ljmp	00182$
                           1575 ;usb_core.c:316: default:
   1100                    1576 00145$:
                           1577 ;usb_core.c:317: EP0CS         = 0x03;   /* stall */
                           1578 ;     genAssign
   1100 90 7F B4           1579 	mov	dptr,#_EP0CS
   1103 74 03              1580 	mov	a,#0x03
   1105 F0                 1581 	movx	@dptr,a
                           1582 ;usb_core.c:320: break;
   1106 02 12 4B           1583 	ljmp	00182$
                           1584 ;usb_core.c:323: case 0x06:
   1109                    1585 00147$:
                           1586 ;usb_core.c:324: get_descriptor(/*sdat*/);
                           1587 ;     genCall
   1109 12 0D 32           1588 	lcall	_get_descriptor
                           1589 ;usb_core.c:325: break;
   110C 02 12 4B           1590 	ljmp	00182$
                           1591 ;usb_core.c:328: case 0x08:
   110F                    1592 00148$:
                           1593 ;usb_core.c:329: if(sdat->bmRequestType == 0x80) {
                           1594 ;     genAssign
   110F 85 32 82           1595 	mov	dpl,_sdat
   1112 85 33 83           1596 	mov	dph,(_sdat + 1)
                           1597 ;     genPointerGet
                           1598 ;     genFarPointerGet
   1115 E0                 1599 	movx	a,@dptr
   1116 FA                 1600 	mov	r2,a
                           1601 ;     genCmpEq
                           1602 ;	Peephole 112.b	changed ljmp to sjmp
                           1603 ;	Peephole 199	optimized misc jump sequence
   1117 BA 80 15           1604 	cjne	r2,#0x80,00150$
                           1605 ;00267$:
                           1606 ;	Peephole 200	removed redundant sjmp
   111A                    1607 00268$:
                           1608 ;usb_core.c:330: in0buf(0) = 0x01;
                           1609 ;     genPointerSet
                           1610 ;     genFarPointerSet
   111A 90 7F 00           1611 	mov	dptr,#_IN0BUF
   111D 74 01              1612 	mov	a,#0x01
   111F F0                 1613 	movx	@dptr,a
                           1614 ;usb_core.c:331: IN0BC     = 0x01;
                           1615 ;     genAssign
   1120 90 7F B5           1616 	mov	dptr,#_IN0BC
   1123 74 01              1617 	mov	a,#0x01
   1125 F0                 1618 	movx	@dptr,a
                           1619 ;usb_core.c:332: EP0CS     = 0x02;               /* clear HSNACK */
                           1620 ;     genAssign
   1126 90 7F B4           1621 	mov	dptr,#_EP0CS
   1129 74 02              1622 	mov	a,#0x02
   112B F0                 1623 	movx	@dptr,a
   112C 02 12 4B           1624 	ljmp	00182$
   112F                    1625 00150$:
                           1626 ;usb_core.c:334: EP0CS     = 0x03;               /* stall */
                           1627 ;     genAssign
   112F 90 7F B4           1628 	mov	dptr,#_EP0CS
   1132 74 03              1629 	mov	a,#0x03
   1134 F0                 1630 	movx	@dptr,a
                           1631 ;usb_core.c:336: break;
   1135 02 12 4B           1632 	ljmp	00182$
                           1633 ;usb_core.c:339: case 0x09:
   1138                    1634 00152$:
                           1635 ;usb_core.c:340: switch(sdat->bmRequestType) {
                           1636 ;     genAssign
   1138 85 32 82           1637 	mov	dpl,_sdat
   113B 85 33 83           1638 	mov	dph,(_sdat + 1)
                           1639 ;     genPointerGet
                           1640 ;     genFarPointerGet
   113E E0                 1641 	movx	a,@dptr
                           1642 ;     genCmpEq
                           1643 ;	Peephole 112.b	changed ljmp to sjmp
                           1644 ;	Peephole 115.b	jump optimization
   113F FA                 1645 	mov	r2,a
   1140 60 05              1646 	jz	00153$
   1142                    1647 00269$:
                           1648 ;     genCmpEq
                           1649 ;	Peephole 112.b	changed ljmp to sjmp
                           1650 ;usb_core.c:342: case 0x00:
                           1651 ;	Peephole 112.b	changed ljmp to sjmp
                           1652 ;	Peephole 199	optimized misc jump sequence
   1142 BA 21 15           1653 	cjne	r2,#0x21,00155$
   1145 80 09              1654 	sjmp	00154$
                           1655 ;00270$:
   1147                    1656 00153$:
                           1657 ;usb_core.c:343: EP0CS  = 0x02;              /* clear HSNACK */
                           1658 ;     genAssign
   1147 90 7F B4           1659 	mov	dptr,#_EP0CS
   114A 74 02              1660 	mov	a,#0x02
   114C F0                 1661 	movx	@dptr,a
                           1662 ;usb_core.c:344: break;
   114D 02 12 4B           1663 	ljmp	00182$
                           1664 ;usb_core.c:347: case 0x21:
   1150                    1665 00154$:
                           1666 ;usb_core.c:349: is_ctrl_out0_kbd = TRUE;
                           1667 ;     genAssign
   1150 D2 00              1668 	setb	_is_ctrl_out0_kbd
                           1669 ;usb_core.c:350: OUT0BC = 0x00;         /* arm endpoint OUT0 */
                           1670 ;     genAssign
   1152 90 7F C5           1671 	mov	dptr,#_OUT0BC
                           1672 ;	Peephole 181	changed mov to clr
   1155 E4                 1673 	clr	a
   1156 F0                 1674 	movx	@dptr,a
                           1675 ;usb_core.c:352: break;
   1157 02 12 4B           1676 	ljmp	00182$
                           1677 ;usb_core.c:354: default:
   115A                    1678 00155$:
                           1679 ;usb_core.c:355: EP0CS  = 0x03;              /* stall */
                           1680 ;     genAssign
   115A 90 7F B4           1681 	mov	dptr,#_EP0CS
   115D 74 03              1682 	mov	a,#0x03
   115F F0                 1683 	movx	@dptr,a
                           1684 ;usb_core.c:358: break;
   1160 02 12 4B           1685 	ljmp	00182$
                           1686 ;usb_core.c:361: case 0x0a:
   1163                    1687 00157$:
                           1688 ;usb_core.c:362: switch(sdat->bmRequestType) {
                           1689 ;     genAssign
   1163 85 32 82           1690 	mov	dpl,_sdat
   1166 85 33 83           1691 	mov	dph,(_sdat + 1)
                           1692 ;     genPointerGet
                           1693 ;     genFarPointerGet
   1169 E0                 1694 	movx	a,@dptr
   116A FA                 1695 	mov	r2,a
                           1696 ;     genCmpEq
   116B BA 21 02           1697 	cjne	r2,#0x21,00271$
                           1698 ;	Peephole 112.b	changed ljmp to sjmp
   116E 80 17              1699 	sjmp	00159$
   1170                    1700 00271$:
                           1701 ;     genCmpEq
                           1702 ;	Peephole 112.b	changed ljmp to sjmp
                           1703 ;	Peephole 199	optimized misc jump sequence
   1170 BA 81 5C           1704 	cjne	r2,#0x81,00166$
                           1705 ;00272$:
                           1706 ;	Peephole 200	removed redundant sjmp
   1173                    1707 00273$:
                           1708 ;usb_core.c:365: in0buf(0) = 0x00;
                           1709 ;     genPointerSet
                           1710 ;     genFarPointerSet
   1173 90 7F 00           1711 	mov	dptr,#_IN0BUF
                           1712 ;	Peephole 181	changed mov to clr
   1176 E4                 1713 	clr	a
   1177 F0                 1714 	movx	@dptr,a
                           1715 ;usb_core.c:366: IN0BC     = 0x01;
                           1716 ;     genAssign
   1178 90 7F B5           1717 	mov	dptr,#_IN0BC
   117B 74 01              1718 	mov	a,#0x01
   117D F0                 1719 	movx	@dptr,a
                           1720 ;usb_core.c:367: EP0CS     = 0x02;       /* clear HSNACK */
                           1721 ;     genAssign
   117E 90 7F B4           1722 	mov	dptr,#_EP0CS
   1181 74 02              1723 	mov	a,#0x02
   1183 F0                 1724 	movx	@dptr,a
                           1725 ;usb_core.c:368: break;
   1184 02 12 4B           1726 	ljmp	00182$
                           1727 ;usb_core.c:371: case 0x21:
   1187                    1728 00159$:
                           1729 ;usb_core.c:372: if(sdat->wIndexL == 0) {
                           1730 ;     genPlus
                           1731 ;     genPlusIncr
   1187 74 04              1732 	mov	a,#0x04
   1189 25 32              1733 	add	a,_sdat
   118B F5 82              1734 	mov	dpl,a
                           1735 ;	Peephole 181	changed mov to clr
   118D E4                 1736 	clr	a
   118E 35 33              1737 	addc	a,(_sdat + 1)
   1190 F5 83              1738 	mov	dph,a
                           1739 ;     genPointerGet
                           1740 ;     genFarPointerGet
   1192 E0                 1741 	movx	a,@dptr
                           1742 ;     genCmpEq
                           1743 ;	Peephole 115.b	jump optimization
   1193 FA                 1744 	mov	r2,a
   1194 60 02              1745 	jz	00275$
   1196                    1746 00274$:
                           1747 ;	Peephole 112.b	changed ljmp to sjmp
   1196 80 2E              1748 	sjmp	00164$
   1198                    1749 00275$:
                           1750 ;usb_core.c:373: if(sdat->wValueH > 0) {
                           1751 ;     genPlus
                           1752 ;     genPlusIncr
   1198 74 03              1753 	mov	a,#0x03
   119A 25 32              1754 	add	a,_sdat
   119C F5 82              1755 	mov	dpl,a
                           1756 ;	Peephole 181	changed mov to clr
   119E E4                 1757 	clr	a
   119F 35 33              1758 	addc	a,(_sdat + 1)
   11A1 F5 83              1759 	mov	dph,a
                           1760 ;     genPointerGet
                           1761 ;     genFarPointerGet
   11A3 E0                 1762 	movx	a,@dptr
                           1763 ;     genCmpGt
                           1764 ;     genCmp
                           1765 ;     genIfxJump
                           1766 ;	Peephole 108	removed ljmp by inverse jump logic
                           1767 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
                           1768 ;	Peephole 177.a	removed redundant mov
   11A4 FA                 1769 	mov  r2,a
   11A5 24 FF              1770 	add	a,#0xff - 0x00
   11A7 50 12              1771 	jnc	00161$
   11A9                    1772 00276$:
                           1773 ;usb_core.c:374: kbd_idle_mode     = FALSE;
                           1774 ;     genAssign
   11A9 C2 02              1775 	clr	_kbd_idle_mode
                           1776 ;usb_core.c:375: kbd_idle_duration = sdat->wValueH;
                           1777 ;     genPlus
                           1778 ;     genPlusIncr
   11AB 74 03              1779 	mov	a,#0x03
   11AD 25 32              1780 	add	a,_sdat
   11AF F5 82              1781 	mov	dpl,a
                           1782 ;	Peephole 181	changed mov to clr
   11B1 E4                 1783 	clr	a
   11B2 35 33              1784 	addc	a,(_sdat + 1)
   11B4 F5 83              1785 	mov	dph,a
                           1786 ;     genPointerGet
                           1787 ;     genFarPointerGet
   11B6 E0                 1788 	movx	a,@dptr
   11B7 F5 30              1789 	mov	_kbd_idle_duration,a
                           1790 ;	Peephole 112.b	changed ljmp to sjmp
   11B9 80 02              1791 	sjmp	00162$
   11BB                    1792 00161$:
                           1793 ;usb_core.c:377: kbd_idle_mode     = TRUE;
                           1794 ;     genAssign
   11BB D2 02              1795 	setb	_kbd_idle_mode
   11BD                    1796 00162$:
                           1797 ;usb_core.c:380: EP0CS = 0x02;           /* clear HSNACK */
                           1798 ;     genAssign
   11BD 90 7F B4           1799 	mov	dptr,#_EP0CS
   11C0 74 02              1800 	mov	a,#0x02
   11C2 F0                 1801 	movx	@dptr,a
   11C3 02 12 4B           1802 	ljmp	00182$
   11C6                    1803 00164$:
                           1804 ;usb_core.c:382: EP0CS = 0x03;           /* stall */
                           1805 ;     genAssign
   11C6 90 7F B4           1806 	mov	dptr,#_EP0CS
   11C9 74 03              1807 	mov	a,#0x03
   11CB F0                 1808 	movx	@dptr,a
                           1809 ;usb_core.c:383: break;
   11CC 02 12 4B           1810 	ljmp	00182$
                           1811 ;usb_core.c:385: default:
   11CF                    1812 00166$:
                           1813 ;usb_core.c:386: EP0CS     = 0x03;           /* stall */
                           1814 ;     genAssign
   11CF 90 7F B4           1815 	mov	dptr,#_EP0CS
   11D2 74 03              1816 	mov	a,#0x03
   11D4 F0                 1817 	movx	@dptr,a
                           1818 ;usb_core.c:389: break;
   11D5 02 12 4B           1819 	ljmp	00182$
                           1820 ;usb_core.c:392: case 0x0b:
   11D8                    1821 00168$:
                           1822 ;usb_core.c:393: switch(sdat->bmRequestType) {
                           1823 ;     genAssign
   11D8 85 32 82           1824 	mov	dpl,_sdat
   11DB 85 33 83           1825 	mov	dph,(_sdat + 1)
                           1826 ;     genPointerGet
                           1827 ;     genFarPointerGet
   11DE E0                 1828 	movx	a,@dptr
   11DF FA                 1829 	mov	r2,a
                           1830 ;     genCmpEq
   11E0 BA 01 02           1831 	cjne	r2,#0x01,00277$
                           1832 ;	Peephole 112.b	changed ljmp to sjmp
   11E3 80 05              1833 	sjmp	00169$
   11E5                    1834 00277$:
                           1835 ;     genCmpEq
                           1836 ;	Peephole 112.b	changed ljmp to sjmp
                           1837 ;usb_core.c:395: case 0x01:
                           1838 ;	Peephole 112.b	changed ljmp to sjmp
                           1839 ;	Peephole 199	optimized misc jump sequence
   11E5 BA 21 55           1840 	cjne	r2,#0x21,00177$
   11E8 80 4B              1841 	sjmp	00176$
                           1842 ;00278$:
   11EA                    1843 00169$:
                           1844 ;usb_core.c:396: if(sdat->wValueL == 0) { /* only AS 0 supported */
                           1845 ;     genPlus
                           1846 ;     genPlusIncr
   11EA 74 02              1847 	mov	a,#0x02
   11EC 25 32              1848 	add	a,_sdat
   11EE F5 82              1849 	mov	dpl,a
                           1850 ;	Peephole 181	changed mov to clr
   11F0 E4                 1851 	clr	a
   11F1 35 33              1852 	addc	a,(_sdat + 1)
   11F3 F5 83              1853 	mov	dph,a
                           1854 ;     genPointerGet
                           1855 ;     genFarPointerGet
   11F5 E0                 1856 	movx	a,@dptr
                           1857 ;     genCmpEq
                           1858 ;	Peephole 115.b	jump optimization
   11F6 FA                 1859 	mov	r2,a
   11F7 60 02              1860 	jz	00280$
   11F9                    1861 00279$:
                           1862 ;	Peephole 112.b	changed ljmp to sjmp
   11F9 80 32              1863 	sjmp	00174$
   11FB                    1864 00280$:
                           1865 ;usb_core.c:397: if(sdat->wIndexL == 0) {
                           1866 ;     genPlus
                           1867 ;     genPlusIncr
   11FB 74 04              1868 	mov	a,#0x04
   11FD 25 32              1869 	add	a,_sdat
   11FF F5 82              1870 	mov	dpl,a
                           1871 ;	Peephole 181	changed mov to clr
   1201 E4                 1872 	clr	a
   1202 35 33              1873 	addc	a,(_sdat + 1)
   1204 F5 83              1874 	mov	dph,a
                           1875 ;     genPointerGet
                           1876 ;     genFarPointerGet
   1206 E0                 1877 	movx	a,@dptr
                           1878 ;     genCmpEq
                           1879 ;	Peephole 115.b	jump optimization
   1207 FA                 1880 	mov	r2,a
   1208 60 02              1881 	jz	00282$
   120A                    1882 00281$:
                           1883 ;	Peephole 112.b	changed ljmp to sjmp
   120A 80 19              1884 	sjmp	00171$
   120C                    1885 00282$:
                           1886 ;usb_core.c:398: TOGCTL = 0x11;
                           1887 ;     genAssign
                           1888 ;usb_core.c:399: TOGCTL = 0x31;      /* reset toggle of IN1 */
                           1889 ;     genAssign
                           1890 ;	Peephole 180.a	removed redundant mov to dptr
   120C 90 7F D7           1891 	mov	dptr,#_TOGCTL
   120F 74 11              1892 	mov	a,#0x11
   1211 F0                 1893 	movx	@dptr,a
   1212 74 31              1894 	mov	a,#0x31
   1214 F0                 1895 	movx	@dptr,a
                           1896 ;usb_core.c:400: IN1CS |= 0x02;      /* remove busy */
                           1897 ;     genAssign
                           1898 ;     genOr
                           1899 ;	Peephole 248.a	optimized or to xdata
   1215 90 7F B6           1900 	mov	dptr,#_IN1CS
   1218 E0                 1901 	movx	a,@dptr
   1219 FA                 1902 	mov	r2,a
   121A 44 02              1903 	orl	a,#0x02
   121C F0                 1904 	movx	@dptr,a
                           1905 ;usb_core.c:402: EP0CS  = 0x02;      /* clear HSNACK */
                           1906 ;     genAssign
   121D 90 7F B4           1907 	mov	dptr,#_EP0CS
   1220 74 02              1908 	mov	a,#0x02
   1222 F0                 1909 	movx	@dptr,a
                           1910 ;	Peephole 112.b	changed ljmp to sjmp
   1223 80 26              1911 	sjmp	00182$
   1225                    1912 00171$:
                           1913 ;usb_core.c:404: EP0CS  = 0x03;      /* stall */
                           1914 ;     genAssign
   1225 90 7F B4           1915 	mov	dptr,#_EP0CS
   1228 74 03              1916 	mov	a,#0x03
   122A F0                 1917 	movx	@dptr,a
                           1918 ;	Peephole 112.b	changed ljmp to sjmp
   122B 80 1E              1919 	sjmp	00182$
   122D                    1920 00174$:
                           1921 ;usb_core.c:406: EP0CS      = 0x03;      /* stall */
                           1922 ;     genAssign
   122D 90 7F B4           1923 	mov	dptr,#_EP0CS
   1230 74 03              1924 	mov	a,#0x03
   1232 F0                 1925 	movx	@dptr,a
                           1926 ;usb_core.c:407: break;
                           1927 ;usb_core.c:410: case 0x21:
                           1928 ;	Peephole 112.b	changed ljmp to sjmp
   1233 80 16              1929 	sjmp	00182$
   1235                    1930 00176$:
                           1931 ;usb_core.c:411: EP0CS          = 0x02;      /* clear HSNACK */
                           1932 ;     genAssign
   1235 90 7F B4           1933 	mov	dptr,#_EP0CS
   1238 74 02              1934 	mov	a,#0x02
   123A F0                 1935 	movx	@dptr,a
                           1936 ;usb_core.c:412: break;
                           1937 ;usb_core.c:414: default:
                           1938 ;	Peephole 112.b	changed ljmp to sjmp
   123B 80 0E              1939 	sjmp	00182$
   123D                    1940 00177$:
                           1941 ;usb_core.c:415: EP0CS          = 0x03;      /* stall */
                           1942 ;     genAssign
   123D 90 7F B4           1943 	mov	dptr,#_EP0CS
   1240 74 03              1944 	mov	a,#0x03
   1242 F0                 1945 	movx	@dptr,a
                           1946 ;usb_core.c:418: break;
                           1947 ;usb_core.c:420: default:
                           1948 ;	Peephole 112.b	changed ljmp to sjmp
   1243 80 06              1949 	sjmp	00182$
   1245                    1950 00179$:
                           1951 ;usb_core.c:421: EP0CS                  = 0x03;      /* stall */
                           1952 ;     genAssign
   1245 90 7F B4           1953 	mov	dptr,#_EP0CS
   1248 74 03              1954 	mov	a,#0x03
   124A F0                 1955 	movx	@dptr,a
                           1956 ;usb_core.c:423: }
   124B                    1957 00182$:
                           1958 ;usb_core.c:427: if(IN07IRQ & 0x01) {
                           1959 ;     genAssign
   124B 90 7F A9           1960 	mov	dptr,#_IN07IRQ
   124E E0                 1961 	movx	a,@dptr
                           1962 ;     genAnd
                           1963 ;	Peephole 105	removed redundant mov
   124F FA                 1964 	mov	r2,a
                           1965 ;     genIfxJump
                           1966 ;	Peephole 111	removed ljmp by inverse jump logic
   1250 30 E0 06           1967 	jnb	acc.0,00184$
   1253                    1968 00283$:
                           1969 ;usb_core.c:428: IN07IRQ = 0x01;         /* clear IN0 interrupt */
                           1970 ;     genAssign
   1253 90 7F A9           1971 	mov	dptr,#_IN07IRQ
   1256 74 01              1972 	mov	a,#0x01
   1258 F0                 1973 	movx	@dptr,a
   1259                    1974 00184$:
                           1975 ;usb_core.c:432: if(OUT07IRQ & 0x01) {
                           1976 ;     genAssign
   1259 90 7F AA           1977 	mov	dptr,#_OUT07IRQ
   125C E0                 1978 	movx	a,@dptr
                           1979 ;     genAnd
                           1980 ;	Peephole 105	removed redundant mov
   125D FA                 1981 	mov	r2,a
                           1982 ;     genIfxJump
                           1983 ;	Peephole 111	removed ljmp by inverse jump logic
   125E 30 E0 16           1984 	jnb	acc.0,00188$
   1261                    1985 00284$:
                           1986 ;usb_core.c:433: OUT07IRQ = 0x01;        /* clear OUT0 interrupt */
                           1987 ;     genAssign
   1261 90 7F AA           1988 	mov	dptr,#_OUT07IRQ
   1264 74 01              1989 	mov	a,#0x01
   1266 F0                 1990 	movx	@dptr,a
                           1991 ;usb_core.c:436: if(is_ctrl_out0_kbd) {
                           1992 ;     genIfx
                           1993 ;     genIfxJump
                           1994 ;	Peephole 111	removed ljmp by inverse jump logic
                           1995 ;usb_core.c:453: is_ctrl_out0_kbd = FALSE;
                           1996 ;     genAssign
                           1997 ;	Peephole 250.a	using atomic test and clear
   1267 10 00 02           1998 	jbc	_is_ctrl_out0_kbd,00285$
   126A 80 06              1999 	sjmp	00186$
   126C                    2000 00285$:
                           2001 ;usb_core.c:454: EP0CS            = 0x02;   /* clear HSNACK */
                           2002 ;     genAssign
   126C 90 7F B4           2003 	mov	dptr,#_EP0CS
   126F 74 02              2004 	mov	a,#0x02
   1271 F0                 2005 	movx	@dptr,a
   1272                    2006 00186$:
                           2007 ;usb_core.c:456: OUT0BC = 0x00;          /* arm endpoint again */
                           2008 ;     genAssign
   1272 90 7F C5           2009 	mov	dptr,#_OUT0BC
                           2010 ;	Peephole 181	changed mov to clr
   1275 E4                 2011 	clr	a
   1276 F0                 2012 	movx	@dptr,a
   1277                    2013 00188$:
                           2014 ;usb_core.c:461: if(USBIRQ & 0x10) {
                           2015 ;     genAssign
   1277 90 7F AB           2016 	mov	dptr,#_USBIRQ
   127A E0                 2017 	movx	a,@dptr
                           2018 ;     genAnd
                           2019 ;	Peephole 105	removed redundant mov
   127B FA                 2020 	mov	r2,a
                           2021 ;     genIfxJump
                           2022 ;	Peephole 111	removed ljmp by inverse jump logic
   127C 30 E4 06           2023 	jnb	acc.4,00190$
   127F                    2024 00286$:
                           2025 ;usb_core.c:462: USBIRQ = 0x10;          /* clear request */
                           2026 ;     genAssign
   127F 90 7F AB           2027 	mov	dptr,#_USBIRQ
   1282 74 10              2028 	mov	a,#0x10
   1284 F0                 2029 	movx	@dptr,a
   1285                    2030 00190$:
                           2031 ;usb_core.c:470: if(USBIRQ & 0x08) {
                           2032 ;     genAssign
   1285 90 7F AB           2033 	mov	dptr,#_USBIRQ
   1288 E0                 2034 	movx	a,@dptr
                           2035 ;     genAnd
                           2036 ;	Peephole 105	removed redundant mov
   1289 FA                 2037 	mov	r2,a
                           2038 ;     genIfxJump
                           2039 ;	Peephole 111	removed ljmp by inverse jump logic
   128A 30 E3 09           2040 	jnb	acc.3,00192$
   128D                    2041 00287$:
                           2042 ;usb_core.c:471: USBIRQ = 0x08;          /* clear request */
                           2043 ;     genAssign
   128D 90 7F AB           2044 	mov	dptr,#_USBIRQ
   1290 74 08              2045 	mov	a,#0x08
   1292 F0                 2046 	movx	@dptr,a
                           2047 ;usb_core.c:472: PCON |= 0x01;           /* enter idle mode */
                           2048 ;     genOr
   1293 43 87 01           2049 	orl	_PCON,#0x01
   1296                    2050 00192$:
                           2051 ;usb_core.c:476: if(IN07IRQ & 0x02) {
                           2052 ;     genAssign
   1296 90 7F A9           2053 	mov	dptr,#_IN07IRQ
   1299 E0                 2054 	movx	a,@dptr
                           2055 ;     genAnd
                           2056 ;	Peephole 105	removed redundant mov
   129A FA                 2057 	mov	r2,a
                           2058 ;     genIfxJump
                           2059 ;	Peephole 111	removed ljmp by inverse jump logic
   129B 30 E1 08           2060 	jnb	acc.1,00195$
   129E                    2061 00288$:
                           2062 ;usb_core.c:477: IN07IRQ = 0x02;         /* clear IN1 interrupt */
                           2063 ;     genAssign
   129E 90 7F A9           2064 	mov	dptr,#_IN07IRQ
   12A1 74 02              2065 	mov	a,#0x02
   12A3 F0                 2066 	movx	@dptr,a
                           2067 ;usb_core.c:478: in1_busy = FALSE;       /* clear busy flag */
                           2068 ;     genAssign
   12A4 C2 01              2069 	clr	_in1_busy
   12A6                    2070 00195$:
   12A6 D0 D0              2071 	pop	psw
   12A8 D0 83              2072 	pop	dph
   12AA D0 82              2073 	pop	dpl
   12AC D0 F0              2074 	pop	b
   12AE D0 E0              2075 	pop	acc
   12B0 32                 2076 	reti
                           2077 ;------------------------------------------------------------
                           2078 ;Allocation info for local variables in function 'isr_resume'
                           2079 ;------------------------------------------------------------
                           2080 ;------------------------------------------------------------
                           2081 ;usb_core.c:484: void isr_resume(void) interrupt 6 using 2
                           2082 ;	-----------------------------------------
                           2083 ;	 function isr_resume
                           2084 ;	-----------------------------------------
   12B1                    2085 _isr_resume:
                    0012   2086 	ar2 = 0x12
                    0013   2087 	ar3 = 0x13
                    0014   2088 	ar4 = 0x14
                    0015   2089 	ar5 = 0x15
                    0016   2090 	ar6 = 0x16
                    0017   2091 	ar7 = 0x17
                    0010   2092 	ar0 = 0x10
                    0011   2093 	ar1 = 0x11
   12B1 C0 D0              2094 	push	psw
   12B3 75 D0 10           2095 	mov	psw,#0x10
                           2096 ;usb_core.c:486: EICON &= ~0x10;             /* clear resume interrupt */
                           2097 ;     genAnd
   12B6 53 D8 EF           2098 	anl	_EICON,#0xEF
   12B9                    2099 00101$:
   12B9 D0 D0              2100 	pop	psw
   12BB 32                 2101 	reti
                           2102 ;	eliminated unneeded push/pop dpl
                           2103 ;	eliminated unneeded push/pop dph
                           2104 ;	eliminated unneeded push/pop b
                           2105 ;	eliminated unneeded push/pop acc
                           2106 ;------------------------------------------------------------
                           2107 ;Allocation info for local variables in function 'init_interrupt_usb'
                           2108 ;------------------------------------------------------------
                           2109 ;------------------------------------------------------------
                           2110 ;usb_core.c:493: void init_interrupt_usb(void)
                           2111 ;	-----------------------------------------
                           2112 ;	 function init_interrupt_usb
                           2113 ;	-----------------------------------------
   12BC                    2114 _init_interrupt_usb:
                    0002   2115 	ar2 = 0x02
                    0003   2116 	ar3 = 0x03
                    0004   2117 	ar4 = 0x04
                    0005   2118 	ar5 = 0x05
                    0006   2119 	ar6 = 0x06
                    0007   2120 	ar7 = 0x07
                    0000   2121 	ar0 = 0x00
                    0001   2122 	ar1 = 0x01
                           2123 ;usb_core.c:495: USBBAV   = 0x00;            /* clear autovector enable */
                           2124 ;     genAssign
   12BC 90 7F AF           2125 	mov	dptr,#_USBBAV
                           2126 ;	Peephole 181	changed mov to clr
   12BF E4                 2127 	clr	a
   12C0 F0                 2128 	movx	@dptr,a
                           2129 ;usb_core.c:497: USBIRQ   = 0xff; /* clear SUDAV interrupt and all other interrupts */
                           2130 ;     genAssign
   12C1 90 7F AB           2131 	mov	dptr,#_USBIRQ
   12C4 74 FF              2132 	mov	a,#0xFF
   12C6 F0                 2133 	movx	@dptr,a
                           2134 ;usb_core.c:500: USBIEN   = 0x19;      /* enable SUDAV, SUSP and URES interrupts */
                           2135 ;     genAssign
   12C7 90 7F AE           2136 	mov	dptr,#_USBIEN
   12CA 74 19              2137 	mov	a,#0x19
   12CC F0                 2138 	movx	@dptr,a
                           2139 ;usb_core.c:502: IN07IRQ  = 0x03;            /* clear IN0 and IN1 interrupts */
                           2140 ;     genAssign
   12CD 90 7F A9           2141 	mov	dptr,#_IN07IRQ
   12D0 74 03              2142 	mov	a,#0x03
   12D2 F0                 2143 	movx	@dptr,a
                           2144 ;usb_core.c:504: IN07IEN  = 0x03;            /* enable IN0 and IN1 interrupts */
                           2145 ;     genAssign
   12D3 90 7F AC           2146 	mov	dptr,#_IN07IEN
   12D6 74 03              2147 	mov	a,#0x03
   12D8 F0                 2148 	movx	@dptr,a
                           2149 ;usb_core.c:506: OUT07IRQ = 0x01;            /* clear OUT0 interrupt */
                           2150 ;     genAssign
   12D9 90 7F AA           2151 	mov	dptr,#_OUT07IRQ
   12DC 74 01              2152 	mov	a,#0x01
   12DE F0                 2153 	movx	@dptr,a
                           2154 ;usb_core.c:508: OUT07IEN = 0x01;            /* enable OUT0 interrupt */
                           2155 ;     genAssign
   12DF 90 7F AD           2156 	mov	dptr,#_OUT07IEN
   12E2 74 01              2157 	mov	a,#0x01
   12E4 F0                 2158 	movx	@dptr,a
                           2159 ;usb_core.c:511: IN1CS    = 0x00;            /* unstall endpoints */
                           2160 ;     genAssign
   12E5 90 7F B6           2161 	mov	dptr,#_IN1CS
                           2162 ;	Peephole 181	changed mov to clr
   12E8 E4                 2163 	clr	a
   12E9 F0                 2164 	movx	@dptr,a
                           2165 ;usb_core.c:515: IN07VAL  = 3;
                           2166 ;     genAssign
   12EA 90 7F DE           2167 	mov	dptr,#_IN07VAL
   12ED 74 03              2168 	mov	a,#0x03
   12EF F0                 2169 	movx	@dptr,a
                           2170 ;usb_core.c:516: OUT07VAL = 1;
                           2171 ;     genAssign
   12F0 90 7F DF           2172 	mov	dptr,#_OUT07VAL
   12F3 74 01              2173 	mov	a,#0x01
   12F5 F0                 2174 	movx	@dptr,a
                           2175 ;usb_core.c:518: EUSB     = 1;               /* enable external 2 interrupt */
                           2176 ;     genAssign
   12F6 D2 E8              2177 	setb	_EUSB
                           2178 ;usb_core.c:520: EICON   &= ~0x10;           /* clear pending resume interrupt */
                           2179 ;     genAnd
   12F8 53 D8 EF           2180 	anl	_EICON,#0xEF
                           2181 ;usb_core.c:521: EICON   |= 0x20;            /* enable resume interrupt */
                           2182 ;     genOr
   12FB 43 D8 20           2183 	orl	_EICON,#0x20
   12FE                    2184 00101$:
   12FE 22                 2185 	ret
                           2186 	.area CSEG    (CODE)
   12FF                    2187 _dev_desc:
   12FF 12                 2188 	.db #0x12
   1300 01                 2189 	.db #0x01
   1301 10                 2190 	.db #0x10
   1302 01                 2191 	.db #0x01
   1303 00                 2192 	.db #0x00
   1304 00                 2193 	.db #0x00
   1305 00                 2194 	.db #0x00
   1306 40                 2195 	.db #0x40
   1307 CD                 2196 	.db #0xCD
   1308 06                 2197 	.db #0x06
   1309 04                 2198 	.db #0x04
   130A C0                 2199 	.db #0xC0
   130B 00                 2200 	.db #0x00
   130C 01                 2201 	.db #0x01
   130D 01                 2202 	.db #0x01
   130E 02                 2203 	.db #0x02
   130F 00                 2204 	.db #0x00
   1310 01                 2205 	.db #0x01
   1311                    2206 _conf_desc:
   1311 09                 2207 	.db #0x09
   1312 02                 2208 	.db #0x02
   1313 22                 2209 	.db #0x22
   1314 00                 2210 	.db #0x00
   1315 01                 2211 	.db #0x01
   1316 01                 2212 	.db #0x01
   1317 00                 2213 	.db #0x00
   1318 80                 2214 	.db #0x80
   1319 32                 2215 	.db #0x32
   131A 09                 2216 	.db #0x09
   131B 04                 2217 	.db #0x04
   131C 00                 2218 	.db #0x00
   131D 00                 2219 	.db #0x00
   131E 01                 2220 	.db #0x01
   131F 03                 2221 	.db #0x03
   1320 01                 2222 	.db #0x01
   1321 01                 2223 	.db #0x01
   1322 03                 2224 	.db #0x03
   1323 09                 2225 	.db #0x09
   1324 21                 2226 	.db #0x21
   1325 00                 2227 	.db #0x00
   1326 01                 2228 	.db #0x01
   1327 21                 2229 	.db #0x21
   1328 01                 2230 	.db #0x01
   1329 22                 2231 	.db #0x22
   132A 3F                 2232 	.db #0x3F
   132B 00                 2233 	.db #0x00
   132C 07                 2234 	.db #0x07
   132D 05                 2235 	.db #0x05
   132E 81                 2236 	.db #0x81
   132F 03                 2237 	.db #0x03
   1330 08                 2238 	.db #0x08
   1331 00                 2239 	.db #0x00
   1332 0A                 2240 	.db #0x0A
   1333                    2241 _report_desc_keyboard:
   1333 05                 2242 	.db #0x05
   1334 01                 2243 	.db #0x01
   1335 09                 2244 	.db #0x09
   1336 06                 2245 	.db #0x06
   1337 A1                 2246 	.db #0xA1
   1338 01                 2247 	.db #0x01
   1339 05                 2248 	.db #0x05
   133A 07                 2249 	.db #0x07
   133B 19                 2250 	.db #0x19
   133C E0                 2251 	.db #0xE0
   133D 29                 2252 	.db #0x29
   133E E7                 2253 	.db #0xE7
   133F 15                 2254 	.db #0x15
   1340 00                 2255 	.db #0x00
   1341 25                 2256 	.db #0x25
   1342 01                 2257 	.db #0x01
   1343 75                 2258 	.db #0x75
   1344 01                 2259 	.db #0x01
   1345 95                 2260 	.db #0x95
   1346 08                 2261 	.db #0x08
   1347 81                 2262 	.db #0x81
   1348 02                 2263 	.db #0x02
   1349 95                 2264 	.db #0x95
   134A 01                 2265 	.db #0x01
   134B 75                 2266 	.db #0x75
   134C 08                 2267 	.db #0x08
   134D 81                 2268 	.db #0x81
   134E 01                 2269 	.db #0x01
   134F 95                 2270 	.db #0x95
   1350 05                 2271 	.db #0x05
   1351 75                 2272 	.db #0x75
   1352 01                 2273 	.db #0x01
   1353 05                 2274 	.db #0x05
   1354 08                 2275 	.db #0x08
   1355 19                 2276 	.db #0x19
   1356 01                 2277 	.db #0x01
   1357 29                 2278 	.db #0x29
   1358 05                 2279 	.db #0x05
   1359 91                 2280 	.db #0x91
   135A 02                 2281 	.db #0x02
   135B 95                 2282 	.db #0x95
   135C 01                 2283 	.db #0x01
   135D 75                 2284 	.db #0x75
   135E 03                 2285 	.db #0x03
   135F 91                 2286 	.db #0x91
   1360 01                 2287 	.db #0x01
   1361 95                 2288 	.db #0x95
   1362 06                 2289 	.db #0x06
   1363 75                 2290 	.db #0x75
   1364 08                 2291 	.db #0x08
   1365 15                 2292 	.db #0x15
   1366 00                 2293 	.db #0x00
   1367 25                 2294 	.db #0x25
   1368 65                 2295 	.db #0x65
   1369 05                 2296 	.db #0x05
   136A 07                 2297 	.db #0x07
   136B 19                 2298 	.db #0x19
   136C 00                 2299 	.db #0x00
   136D 29                 2300 	.db #0x29
   136E 65                 2301 	.db #0x65
   136F 81                 2302 	.db #0x81
   1370 00                 2303 	.db #0x00
   1371 C0                 2304 	.db #0xC0
   1372                    2305 _string_langid:
   1372 04                 2306 	.db #0x04
   1373 03                 2307 	.db #0x03
   1374 00                 2308 	.db #0x00
   1375 00                 2309 	.db #0x00
   1376                    2310 _string_mfg:
   1376 18                 2311 	.db #0x18
   1377 03                 2312 	.db #0x03
   1378 61                 2313 	.db #0x61
   1379 00                 2314 	.db #0x00
   137A 75                 2315 	.db #0x75
   137B 00                 2316 	.db #0x00
   137C 74                 2317 	.db #0x74
   137D 00                 2318 	.db #0x00
   137E 6F                 2319 	.db #0x6F
   137F 00                 2320 	.db #0x00
   1380 6D                 2321 	.db #0x6D
   1381 00                 2322 	.db #0x00
   1382 65                 2323 	.db #0x65
   1383 00                 2324 	.db #0x00
   1384 74                 2325 	.db #0x74
   1385 00                 2326 	.db #0x00
   1386 61                 2327 	.db #0x61
   1387 00                 2328 	.db #0x00
   1388 2E                 2329 	.db #0x2E
   1389 00                 2330 	.db #0x00
   138A 72                 2331 	.db #0x72
   138B 00                 2332 	.db #0x00
   138C 6F                 2333 	.db #0x6F
   138D 00                 2334 	.db #0x00
   138E                    2335 _string_if_keyboard:
   138E 0E                 2336 	.db #0x0E
   138F 03                 2337 	.db #0x03
   1390 6B                 2338 	.db #0x6B
   1391 00                 2339 	.db #0x00
   1392 62                 2340 	.db #0x62
   1393 00                 2341 	.db #0x00
   1394 64                 2342 	.db #0x64
   1395 00                 2343 	.db #0x00
   1396 2D                 2344 	.db #0x2D
   1397 00                 2345 	.db #0x00
   1398 69                 2346 	.db #0x69
   1399 00                 2347 	.db #0x00
   139A 66                 2348 	.db #0x66
   139B 00                 2349 	.db #0x00
   139C                    2350 _string_prod:
   139C 42                 2351 	.db #0x42
   139D 03                 2352 	.db #0x03
   139E 6E                 2353 	.db #0x6E
   139F 00                 2354 	.db #0x00
   13A0 65                 2355 	.db #0x65
   13A1 00                 2356 	.db #0x00
   13A2 72                 2357 	.db #0x72
   13A3 00                 2358 	.db #0x00
   13A4 64                 2359 	.db #0x64
   13A5 00                 2360 	.db #0x00
   13A6 20                 2361 	.db #0x20
   13A7 00                 2362 	.db #0x00
   13A8 2D                 2363 	.db #0x2D
   13A9 00                 2364 	.db #0x00
   13AA 20                 2365 	.db #0x20
   13AB 00                 2366 	.db #0x00
   13AC 62                 2367 	.db #0x62
   13AD 00                 2368 	.db #0x00
   13AE 75                 2369 	.db #0x75
   13AF 00                 2370 	.db #0x00
   13B0 69                 2371 	.db #0x69
   13B1 00                 2372 	.db #0x00
   13B2 6C                 2373 	.db #0x6C
   13B3 00                 2374 	.db #0x00
   13B4 74                 2375 	.db #0x74
   13B5 00                 2376 	.db #0x00
   13B6 3A                 2377 	.db #0x3A
   13B7 00                 2378 	.db #0x00
   13B8 32                 2379 	.db #0x32
   13B9 00                 2380 	.db #0x00
   13BA 30                 2381 	.db #0x30
   13BB 00                 2382 	.db #0x00
   13BC 30                 2383 	.db #0x30
   13BD 00                 2384 	.db #0x00
   13BE 36                 2385 	.db #0x36
   13BF 00                 2386 	.db #0x00
   13C0 2E                 2387 	.db #0x2E
   13C1 00                 2388 	.db #0x00
   13C2 30                 2389 	.db #0x30
   13C3 00                 2390 	.db #0x00
   13C4 36                 2391 	.db #0x36
   13C5 00                 2392 	.db #0x00
   13C6 2E                 2393 	.db #0x2E
   13C7 00                 2394 	.db #0x00
   13C8 32                 2395 	.db #0x32
   13C9 00                 2396 	.db #0x00
   13CA 34                 2397 	.db #0x34
   13CB 00                 2398 	.db #0x00
   13CC 20                 2399 	.db #0x20
   13CD 00                 2400 	.db #0x00
   13CE 30                 2401 	.db #0x30
   13CF 00                 2402 	.db #0x00
   13D0 30                 2403 	.db #0x30
   13D1 00                 2404 	.db #0x00
   13D2 3A                 2405 	.db #0x3A
   13D3 00                 2406 	.db #0x00
   13D4 35                 2407 	.db #0x35
   13D5 00                 2408 	.db #0x00
   13D6 35                 2409 	.db #0x35
   13D7 00                 2410 	.db #0x00
   13D8 3A                 2411 	.db #0x3A
   13D9 00                 2412 	.db #0x00
   13DA 34                 2413 	.db #0x34
   13DB 00                 2414 	.db #0x00
   13DC 39                 2415 	.db #0x39
   13DD 00                 2416 	.db #0x00
                           2417 	.area XINIT   (CODE)
