                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.5.0 #1020 (May  8 2005)
                              4 ; This file generated Mon Aug 22 21:21:56 2005
                              5 ;--------------------------------------------------------
                              6 	.module usb_core
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _string_if_keyboard
                             13 	.globl _string_prod
                             14 	.globl _string_mfg
                             15 	.globl _string_langid
                             16 	.globl _setup_usb_int
                             17 	.globl _resume_isr
                             18 	.globl _usb_isr
                             19 	.globl _apply_reset_values
                             20 	.globl _SMOD1
                             21 	.globl _ET2
                             22 	.globl _TF2
                             23 	.globl _TR2
                             24 	.globl _TI_1
                             25 	.globl _RI_1
                             26 	.globl _TI_0
                             27 	.globl _RI_0
                             28 	.globl _ES1
                             29 	.globl _ES0
                             30 	.globl _EUSB
                             31 	.globl _CY
                             32 	.globl _AC
                             33 	.globl _F0
                             34 	.globl _RS1
                             35 	.globl _RS0
                             36 	.globl _OV
                             37 	.globl _F1
                             38 	.globl _P
                             39 	.globl _PS
                             40 	.globl _PT1
                             41 	.globl _PX1
                             42 	.globl _PT0
                             43 	.globl _PX0
                             44 	.globl _RD
                             45 	.globl _WR
                             46 	.globl _T1
                             47 	.globl _T0
                             48 	.globl _INT1
                             49 	.globl _INT0
                             50 	.globl _TXD
                             51 	.globl _RXD
                             52 	.globl _P3_7
                             53 	.globl _P3_6
                             54 	.globl _P3_5
                             55 	.globl _P3_4
                             56 	.globl _P3_3
                             57 	.globl _P3_2
                             58 	.globl _P3_1
                             59 	.globl _P3_0
                             60 	.globl _EA
                             61 	.globl _ES
                             62 	.globl _ET1
                             63 	.globl _EX1
                             64 	.globl _ET0
                             65 	.globl _EX0
                             66 	.globl _P2_7
                             67 	.globl _P2_6
                             68 	.globl _P2_5
                             69 	.globl _P2_4
                             70 	.globl _P2_3
                             71 	.globl _P2_2
                             72 	.globl _P2_1
                             73 	.globl _P2_0
                             74 	.globl _SM0
                             75 	.globl _SM1
                             76 	.globl _SM2
                             77 	.globl _REN
                             78 	.globl _TB8
                             79 	.globl _RB8
                             80 	.globl _TI
                             81 	.globl _RI
                             82 	.globl _P1_7
                             83 	.globl _P1_6
                             84 	.globl _P1_5
                             85 	.globl _P1_4
                             86 	.globl _P1_3
                             87 	.globl _P1_2
                             88 	.globl _P1_1
                             89 	.globl _P1_0
                             90 	.globl _TF1
                             91 	.globl _TR1
                             92 	.globl _TF0
                             93 	.globl _TR0
                             94 	.globl _IE1
                             95 	.globl _IT1
                             96 	.globl _IE0
                             97 	.globl _IT0
                             98 	.globl _P0_7
                             99 	.globl _P0_6
                            100 	.globl _P0_5
                            101 	.globl _P0_4
                            102 	.globl _P0_3
                            103 	.globl _P0_2
                            104 	.globl _P0_1
                            105 	.globl _P0_0
                            106 	.globl _DPH1
                            107 	.globl _DPL1
                            108 	.globl _DPH0
                            109 	.globl _DPL0
                            110 	.globl _EICON
                            111 	.globl _TH2
                            112 	.globl _TL2
                            113 	.globl _RCAP2H
                            114 	.globl _RCAP2L
                            115 	.globl _T2CON
                            116 	.globl _CKCON
                            117 	.globl _SBUF1
                            118 	.globl _SBUF0
                            119 	.globl _SCON1
                            120 	.globl _SCON0
                            121 	.globl _EIE
                            122 	.globl _MPAGE
                            123 	.globl _EXIF
                            124 	.globl _DPS
                            125 	.globl _B
                            126 	.globl _ACC
                            127 	.globl _PSW
                            128 	.globl _IP
                            129 	.globl _P3
                            130 	.globl _IE
                            131 	.globl _P2
                            132 	.globl _SBUF
                            133 	.globl _SCON
                            134 	.globl _P1
                            135 	.globl _TH1
                            136 	.globl _TH0
                            137 	.globl _TL1
                            138 	.globl _TL0
                            139 	.globl _TMOD
                            140 	.globl _TCON
                            141 	.globl _PCON
                            142 	.globl _DPH
                            143 	.globl _DPL
                            144 	.globl _SP
                            145 	.globl _P0
                            146 	.globl _AUTODATA
                            147 	.globl _AUTOPTRL
                            148 	.globl _AUTOPTRH
                            149 	.globl _FASTXFR
                            150 	.globl _OUT07VAL
                            151 	.globl _IN07VAL
                            152 	.globl _I2DAT
                            153 	.globl _I2CS
                            154 	.globl _SETUPDAT
                            155 	.globl _SUDPTRL
                            156 	.globl _SUDPTRH
                            157 	.globl _TOGCTL
                            158 	.globl _USBCS
                            159 	.globl _USBBAV
                            160 	.globl _USBPAIR
                            161 	.globl _USBIEN
                            162 	.globl _USBIRQ
                            163 	.globl _OUT07IEN
                            164 	.globl _IN07IEN
                            165 	.globl _OUT07IRQ
                            166 	.globl _IN07IRQ
                            167 	.globl _ISOCTL
                            168 	.globl _PORTCCFG
                            169 	.globl _PORTBCFG
                            170 	.globl _PORTACFG
                            171 	.globl _PINSC
                            172 	.globl _OUTC
                            173 	.globl _OEC
                            174 	.globl _PINSB
                            175 	.globl _OUTB
                            176 	.globl _OEB
                            177 	.globl _PINSA
                            178 	.globl _OUTA
                            179 	.globl _OEA
                            180 	.globl _OUT4BC
                            181 	.globl _IN4BC
                            182 	.globl _OUT4CS
                            183 	.globl _IN4CS
                            184 	.globl _OUT4BUF
                            185 	.globl _IN4BUF
                            186 	.globl _OUT3BC
                            187 	.globl _OUT3CS
                            188 	.globl _IN3BC
                            189 	.globl _IN3CS
                            190 	.globl _OUT3BUF
                            191 	.globl _IN3BUF
                            192 	.globl _OUT2BUF
                            193 	.globl _OUT2CS
                            194 	.globl _OUT2BC
                            195 	.globl _IN2CS
                            196 	.globl _IN2BC
                            197 	.globl _IN2BUF
                            198 	.globl _OUT1BC
                            199 	.globl _OUT1CS
                            200 	.globl _OUT1BUF
                            201 	.globl _IN1BC
                            202 	.globl _IN1BUF
                            203 	.globl _IN1CS
                            204 	.globl _OUT0BC
                            205 	.globl _OUT0BUF
                            206 	.globl _IN0BC
                            207 	.globl _IN0BUF
                            208 	.globl _EP0CS
                            209 	.globl _in1_busy
                            210 ;--------------------------------------------------------
                            211 ; special function registers
                            212 ;--------------------------------------------------------
                            213 	.area RSEG    (DATA)
                    0080    214 _P0	=	0x0080
                    0081    215 _SP	=	0x0081
                    0082    216 _DPL	=	0x0082
                    0083    217 _DPH	=	0x0083
                    0087    218 _PCON	=	0x0087
                    0088    219 _TCON	=	0x0088
                    0089    220 _TMOD	=	0x0089
                    008A    221 _TL0	=	0x008a
                    008B    222 _TL1	=	0x008b
                    008C    223 _TH0	=	0x008c
                    008D    224 _TH1	=	0x008d
                    0090    225 _P1	=	0x0090
                    0098    226 _SCON	=	0x0098
                    0099    227 _SBUF	=	0x0099
                    00A0    228 _P2	=	0x00a0
                    00A8    229 _IE	=	0x00a8
                    00B0    230 _P3	=	0x00b0
                    00B8    231 _IP	=	0x00b8
                    00D0    232 _PSW	=	0x00d0
                    00E0    233 _ACC	=	0x00e0
                    00F0    234 _B	=	0x00f0
                    0086    235 _DPS	=	0x0086
                    0091    236 _EXIF	=	0x0091
                    0092    237 _MPAGE	=	0x0092
                    00E8    238 _EIE	=	0x00e8
                    0098    239 _SCON0	=	0x0098
                    00C0    240 _SCON1	=	0x00c0
                    0099    241 _SBUF0	=	0x0099
                    00C1    242 _SBUF1	=	0x00c1
                    008E    243 _CKCON	=	0x008e
                    00C8    244 _T2CON	=	0x00c8
                    00CA    245 _RCAP2L	=	0x00ca
                    00CB    246 _RCAP2H	=	0x00cb
                    00CC    247 _TL2	=	0x00cc
                    00CD    248 _TH2	=	0x00cd
                    00D8    249 _EICON	=	0x00d8
                    0082    250 _DPL0	=	0x0082
                    0083    251 _DPH0	=	0x0083
                    0084    252 _DPL1	=	0x0084
                    0085    253 _DPH1	=	0x0085
                            254 ;--------------------------------------------------------
                            255 ; special function bits 
                            256 ;--------------------------------------------------------
                            257 	.area RSEG    (DATA)
                    0080    258 _P0_0	=	0x0080
                    0081    259 _P0_1	=	0x0081
                    0082    260 _P0_2	=	0x0082
                    0083    261 _P0_3	=	0x0083
                    0084    262 _P0_4	=	0x0084
                    0085    263 _P0_5	=	0x0085
                    0086    264 _P0_6	=	0x0086
                    0087    265 _P0_7	=	0x0087
                    0088    266 _IT0	=	0x0088
                    0089    267 _IE0	=	0x0089
                    008A    268 _IT1	=	0x008a
                    008B    269 _IE1	=	0x008b
                    008C    270 _TR0	=	0x008c
                    008D    271 _TF0	=	0x008d
                    008E    272 _TR1	=	0x008e
                    008F    273 _TF1	=	0x008f
                    0090    274 _P1_0	=	0x0090
                    0091    275 _P1_1	=	0x0091
                    0092    276 _P1_2	=	0x0092
                    0093    277 _P1_3	=	0x0093
                    0094    278 _P1_4	=	0x0094
                    0095    279 _P1_5	=	0x0095
                    0096    280 _P1_6	=	0x0096
                    0097    281 _P1_7	=	0x0097
                    0098    282 _RI	=	0x0098
                    0099    283 _TI	=	0x0099
                    009A    284 _RB8	=	0x009a
                    009B    285 _TB8	=	0x009b
                    009C    286 _REN	=	0x009c
                    009D    287 _SM2	=	0x009d
                    009E    288 _SM1	=	0x009e
                    009F    289 _SM0	=	0x009f
                    00A0    290 _P2_0	=	0x00a0
                    00A1    291 _P2_1	=	0x00a1
                    00A2    292 _P2_2	=	0x00a2
                    00A3    293 _P2_3	=	0x00a3
                    00A4    294 _P2_4	=	0x00a4
                    00A5    295 _P2_5	=	0x00a5
                    00A6    296 _P2_6	=	0x00a6
                    00A7    297 _P2_7	=	0x00a7
                    00A8    298 _EX0	=	0x00a8
                    00A9    299 _ET0	=	0x00a9
                    00AA    300 _EX1	=	0x00aa
                    00AB    301 _ET1	=	0x00ab
                    00AC    302 _ES	=	0x00ac
                    00AF    303 _EA	=	0x00af
                    00B0    304 _P3_0	=	0x00b0
                    00B1    305 _P3_1	=	0x00b1
                    00B2    306 _P3_2	=	0x00b2
                    00B3    307 _P3_3	=	0x00b3
                    00B4    308 _P3_4	=	0x00b4
                    00B5    309 _P3_5	=	0x00b5
                    00B6    310 _P3_6	=	0x00b6
                    00B7    311 _P3_7	=	0x00b7
                    00B0    312 _RXD	=	0x00b0
                    00B1    313 _TXD	=	0x00b1
                    00B2    314 _INT0	=	0x00b2
                    00B3    315 _INT1	=	0x00b3
                    00B4    316 _T0	=	0x00b4
                    00B5    317 _T1	=	0x00b5
                    00B6    318 _WR	=	0x00b6
                    00B7    319 _RD	=	0x00b7
                    00B8    320 _PX0	=	0x00b8
                    00B9    321 _PT0	=	0x00b9
                    00BA    322 _PX1	=	0x00ba
                    00BB    323 _PT1	=	0x00bb
                    00BC    324 _PS	=	0x00bc
                    00D0    325 _P	=	0x00d0
                    00D1    326 _F1	=	0x00d1
                    00D2    327 _OV	=	0x00d2
                    00D3    328 _RS0	=	0x00d3
                    00D4    329 _RS1	=	0x00d4
                    00D5    330 _F0	=	0x00d5
                    00D6    331 _AC	=	0x00d6
                    00D7    332 _CY	=	0x00d7
                    00E8    333 _EUSB	=	0x00e8
                    00AC    334 _ES0	=	0x00ac
                    00AE    335 _ES1	=	0x00ae
                    0098    336 _RI_0	=	0x0098
                    0099    337 _TI_0	=	0x0099
                    00C0    338 _RI_1	=	0x00c0
                    00C1    339 _TI_1	=	0x00c1
                    00CA    340 _TR2	=	0x00ca
                    00CF    341 _TF2	=	0x00cf
                    00AD    342 _ET2	=	0x00ad
                    00DF    343 _SMOD1	=	0x00df
                            344 ;--------------------------------------------------------
                            345 ; overlayable register banks 
                            346 ;--------------------------------------------------------
                            347 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     348 	.ds 8
                            349 	.area REG_BANK_1	(REL,OVR,DATA)
   0008                     350 	.ds 8
                            351 	.area REG_BANK_2	(REL,OVR,DATA)
   0010                     352 	.ds 8
                            353 ;--------------------------------------------------------
                            354 ; internal ram data
                            355 ;--------------------------------------------------------
                            356 	.area DSEG    (DATA)
   002B                     357 _sdat:
   002B                     358 	.ds 2
                            359 ;--------------------------------------------------------
                            360 ; overlayable items in internal ram 
                            361 ;--------------------------------------------------------
                            362 	.area OSEG    (OVR,DATA)
                            363 ;--------------------------------------------------------
                            364 ; indirectly addressable internal ram data
                            365 ;--------------------------------------------------------
                            366 	.area ISEG    (DATA)
                            367 ;--------------------------------------------------------
                            368 ; bit data
                            369 ;--------------------------------------------------------
                            370 	.area BSEG    (BIT)
   0006                     371 _is_ctrl_out0_kbd:
   0006                     372 	.ds 1
   0007                     373 _in1_busy::
   0007                     374 	.ds 1
                            375 ;--------------------------------------------------------
                            376 ; paged external ram data
                            377 ;--------------------------------------------------------
                            378 	.area PSEG    (PAG,XDATA)
                            379 ;--------------------------------------------------------
                            380 ; external ram data
                            381 ;--------------------------------------------------------
                            382 	.area XSEG    (XDATA)
                    7FB4    383 _EP0CS	=	0x7fb4
                    7F00    384 _IN0BUF	=	0x7f00
                    7FB5    385 _IN0BC	=	0x7fb5
                    7EC0    386 _OUT0BUF	=	0x7ec0
                    7FC5    387 _OUT0BC	=	0x7fc5
                    7FB6    388 _IN1CS	=	0x7fb6
                    7E80    389 _IN1BUF	=	0x7e80
                    7FB7    390 _IN1BC	=	0x7fb7
                    7E40    391 _OUT1BUF	=	0x7e40
                    7FC6    392 _OUT1CS	=	0x7fc6
                    7FC7    393 _OUT1BC	=	0x7fc7
                    7E00    394 _IN2BUF	=	0x7e00
                    7FB9    395 _IN2BC	=	0x7fb9
                    7FB8    396 _IN2CS	=	0x7fb8
                    7FC9    397 _OUT2BC	=	0x7fc9
                    7FC8    398 _OUT2CS	=	0x7fc8
                    7DC0    399 _OUT2BUF	=	0x7dc0
                    7D80    400 _IN3BUF	=	0x7d80
                    7D40    401 _OUT3BUF	=	0x7d40
                    7FBA    402 _IN3CS	=	0x7fba
                    7FBB    403 _IN3BC	=	0x7fbb
                    7FCA    404 _OUT3CS	=	0x7fca
                    7FCB    405 _OUT3BC	=	0x7fcb
                    7D00    406 _IN4BUF	=	0x7d00
                    7CC0    407 _OUT4BUF	=	0x7cc0
                    7FBC    408 _IN4CS	=	0x7fbc
                    7FCC    409 _OUT4CS	=	0x7fcc
                    7FBD    410 _IN4BC	=	0x7fbd
                    7FCD    411 _OUT4BC	=	0x7fcd
                    7F9C    412 _OEA	=	0x7f9c
                    7F96    413 _OUTA	=	0x7f96
                    7F99    414 _PINSA	=	0x7f99
                    7F9D    415 _OEB	=	0x7f9d
                    7F97    416 _OUTB	=	0x7f97
                    7F9A    417 _PINSB	=	0x7f9a
                    7F9E    418 _OEC	=	0x7f9e
                    7F98    419 _OUTC	=	0x7f98
                    7F9B    420 _PINSC	=	0x7f9b
                    7F93    421 _PORTACFG	=	0x7f93
                    7F94    422 _PORTBCFG	=	0x7f94
                    7F95    423 _PORTCCFG	=	0x7f95
                    7FA1    424 _ISOCTL	=	0x7fa1
                    7FA9    425 _IN07IRQ	=	0x7fa9
                    7FAA    426 _OUT07IRQ	=	0x7faa
                    7FAC    427 _IN07IEN	=	0x7fac
                    7FAD    428 _OUT07IEN	=	0x7fad
                    7FAB    429 _USBIRQ	=	0x7fab
                    7FAE    430 _USBIEN	=	0x7fae
                    7FDD    431 _USBPAIR	=	0x7fdd
                    7FAF    432 _USBBAV	=	0x7faf
                    7FD6    433 _USBCS	=	0x7fd6
                    7FD7    434 _TOGCTL	=	0x7fd7
                    7FD4    435 _SUDPTRH	=	0x7fd4
                    7FD5    436 _SUDPTRL	=	0x7fd5
                    7FE8    437 _SETUPDAT	=	0x7fe8
                    7FA5    438 _I2CS	=	0x7fa5
                    7FA6    439 _I2DAT	=	0x7fa6
                    7FDE    440 _IN07VAL	=	0x7fde
                    7FDF    441 _OUT07VAL	=	0x7fdf
                    7FE2    442 _FASTXFR	=	0x7fe2
                    7FE3    443 _AUTOPTRH	=	0x7fe3
                    7FE4    444 _AUTOPTRL	=	0x7fe4
                    7FE5    445 _AUTODATA	=	0x7fe5
                            446 ;--------------------------------------------------------
                            447 ; external initialized ram data
                            448 ;--------------------------------------------------------
                            449 	.area XISEG   (XDATA)
                            450 	.area CSEG    (CODE)
                            451 	.area GSINIT0 (CODE)
                            452 	.area GSINIT1 (CODE)
                            453 	.area GSINIT2 (CODE)
                            454 	.area GSINIT3 (CODE)
                            455 	.area GSINIT4 (CODE)
                            456 	.area GSINIT5 (CODE)
                            457 ;--------------------------------------------------------
                            458 ; global & static initialisations
                            459 ;--------------------------------------------------------
                            460 	.area CSEG    (CODE)
                            461 	.area GSINIT  (CODE)
                            462 	.area GSFINAL (CODE)
                            463 	.area GSINIT  (CODE)
                            464 ;usb_core.c:63: is_ctrl_out0_kbd    = 0;
                            465 ;     genAssign
   0AFA 75 2B E8            466 	mov	_sdat,#0xE8
   0AFD 75 2C 7F            467 	mov	(_sdat + 1),#0x7F
                            468 ;--------------------------------------------------------
                            469 ; Home
                            470 ;--------------------------------------------------------
                            471 	.area HOME    (CODE)
                            472 	.area CSEG    (CODE)
                            473 ;--------------------------------------------------------
                            474 ; code
                            475 ;--------------------------------------------------------
                            476 	.area CSEG    (CODE)
                            477 ;------------------------------------------------------------
                            478 ;Allocation info for local variables in function 'apply_reset_values'
                            479 ;------------------------------------------------------------
                            480 ;------------------------------------------------------------
                            481 ;usb_core.c:59: void apply_reset_values(void) using 1
                            482 ;	-----------------------------------------
                            483 ;	 function apply_reset_values
                            484 ;	-----------------------------------------
   0375                     485 _apply_reset_values:
                    000A    486 	ar2 = 0x0a
                    000B    487 	ar3 = 0x0b
                    000C    488 	ar4 = 0x0c
                    000D    489 	ar5 = 0x0d
                    000E    490 	ar6 = 0x0e
                    000F    491 	ar7 = 0x0f
                    0008    492 	ar0 = 0x08
                    0009    493 	ar1 = 0x09
                            494 ;usb_core.c:61: core_apply_reset_values();
                            495 ;     genCall
   0375 12 02 43            496 	lcall	_core_apply_reset_values
                            497 ;usb_core.c:63: is_ctrl_out0_kbd    = 0;
                            498 ;     genAssign
   0378 C2 06               499 	clr	_is_ctrl_out0_kbd
                            500 ;usb_core.c:64: in1_busy            = FALSE;
                            501 ;     genAssign
   037A C2 07               502 	clr	_in1_busy
   037C                     503 00101$:
   037C 22                  504 	ret
                            505 ;------------------------------------------------------------
                            506 ;Allocation info for local variables in function 'get_descriptor'
                            507 ;------------------------------------------------------------
                            508 ;------------------------------------------------------------
                            509 ;usb_core.c:81: static void get_descriptor(void) using 1
                            510 ;	-----------------------------------------
                            511 ;	 function get_descriptor
                            512 ;	-----------------------------------------
   037D                     513 _get_descriptor:
                            514 ;usb_core.c:83: switch (sdat->wValueH) {
                            515 ;     genPlus
                            516 ;     genPlusIncr
   037D 74 03               517 	mov	a,#0x03
   037F 25 2B               518 	add	a,_sdat
   0381 F5 82               519 	mov	dpl,a
                            520 ;	Peephole 181	changed mov to clr
   0383 E4                  521 	clr	a
   0384 35 2C               522 	addc	a,(_sdat + 1)
   0386 F5 83               523 	mov	dph,a
                            524 ;     genPointerGet
                            525 ;     genFarPointerGet
   0388 E0                  526 	movx	a,@dptr
   0389 FA                  527 	mov	r2,a
                            528 ;     genCmpEq
   038A BA 01 02            529 	cjne	r2,#0x01,00123$
                            530 ;	Peephole 112.b	changed ljmp to sjmp
   038D 80 19               531 	sjmp	00101$
   038F                     532 00123$:
                            533 ;     genCmpEq
   038F BA 02 02            534 	cjne	r2,#0x02,00124$
                            535 ;	Peephole 112.b	changed ljmp to sjmp
   0392 80 33               536 	sjmp	00102$
   0394                     537 00124$:
                            538 ;     genCmpEq
   0394 BA 03 02            539 	cjne	r2,#0x03,00125$
                            540 ;	Peephole 112.b	changed ljmp to sjmp
   0397 80 4D               541 	sjmp	00103$
   0399                     542 00125$:
                            543 ;     genCmpEq
   0399 BA 21 03            544 	cjne	r2,#0x21,00126$
   039C 02 04 59            545 	ljmp	00107$
   039F                     546 00126$:
                            547 ;     genCmpEq
   039F BA 22 03            548 	cjne	r2,#0x22,00127$
   03A2 02 04 7F            549 	ljmp	00108$
   03A5                     550 00127$:
   03A5 02 04 B6            551 	ljmp	00112$
                            552 ;usb_core.c:85: case USB_DT_DEVICE:
   03A8                     553 00101$:
                            554 ;usb_core.c:86: EP0CS   = 0x02;             /* clear HSNACK */
                            555 ;     genAssign
   03A8 90 7F B4            556 	mov	dptr,#_EP0CS
   03AB 74 02               557 	mov	a,#0x02
   03AD F0                  558 	movx	@dptr,a
                            559 ;usb_core.c:87: SUDPTRH = (Byte)((unsigned int)dev_desc >> 8);
                            560 ;     genCast
   03AE 7A 50               561 	mov	r2,#_dev_desc
   03B0 7B 09               562 	mov	r3,#(_dev_desc >> 8)
                            563 ;     genRightShift
                            564 ;     genRightShiftLiteral
                            565 ;     genrshTwo
   03B2 8B 0A               566 	mov	ar2,r3
   03B4 7B 00               567 	mov	r3,#0x00
                            568 ;     genCast
   03B6 90 7F D4            569 	mov	dptr,#_SUDPTRH
   03B9 EA                  570 	mov	a,r2
   03BA F0                  571 	movx	@dptr,a
                            572 ;usb_core.c:88: SUDPTRL = (unsigned int)dev_desc & 0xff;
                            573 ;     genCast
   03BB 7A 50               574 	mov	r2,#_dev_desc
   03BD 7B 09               575 	mov	r3,#(_dev_desc >> 8)
                            576 ;     genAnd
   03BF 7B 00               577 	mov	r3,#0x00
                            578 ;     genCast
   03C1 90 7F D5            579 	mov	dptr,#_SUDPTRL
   03C4 EA                  580 	mov	a,r2
   03C5 F0                  581 	movx	@dptr,a
                            582 ;usb_core.c:89: break;
                            583 ;	Peephole 251.a	replaced ljmp to ret with ret
   03C6 22                  584 	ret
                            585 ;usb_core.c:92: case USB_DT_CONFIG:
   03C7                     586 00102$:
                            587 ;usb_core.c:93: EP0CS   = 0x02;             /* clear HSNACK */
                            588 ;     genAssign
   03C7 90 7F B4            589 	mov	dptr,#_EP0CS
   03CA 74 02               590 	mov	a,#0x02
   03CC F0                  591 	movx	@dptr,a
                            592 ;usb_core.c:94: SUDPTRH = (Byte)((unsigned int)conf_desc >> 8);
                            593 ;     genCast
   03CD 7A 62               594 	mov	r2,#_conf_desc
   03CF 7B 09               595 	mov	r3,#(_conf_desc >> 8)
                            596 ;     genRightShift
                            597 ;     genRightShiftLiteral
                            598 ;     genrshTwo
   03D1 8B 0A               599 	mov	ar2,r3
   03D3 7B 00               600 	mov	r3,#0x00
                            601 ;     genCast
   03D5 90 7F D4            602 	mov	dptr,#_SUDPTRH
   03D8 EA                  603 	mov	a,r2
   03D9 F0                  604 	movx	@dptr,a
                            605 ;usb_core.c:95: SUDPTRL = (unsigned int)conf_desc & 0xff;
                            606 ;     genCast
   03DA 7A 62               607 	mov	r2,#_conf_desc
   03DC 7B 09               608 	mov	r3,#(_conf_desc >> 8)
                            609 ;     genAnd
   03DE 7B 00               610 	mov	r3,#0x00
                            611 ;     genCast
   03E0 90 7F D5            612 	mov	dptr,#_SUDPTRL
   03E3 EA                  613 	mov	a,r2
   03E4 F0                  614 	movx	@dptr,a
                            615 ;usb_core.c:96: break;
                            616 ;	Peephole 251.a	replaced ljmp to ret with ret
   03E5 22                  617 	ret
                            618 ;usb_core.c:99: case USB_DT_STRING:
   03E6                     619 00103$:
                            620 ;usb_core.c:100: if (sdat->wValueL < NUM_STRING) {
                            621 ;     genPlus
                            622 ;     genPlusIncr
   03E6 74 02               623 	mov	a,#0x02
   03E8 25 2B               624 	add	a,_sdat
   03EA F5 82               625 	mov	dpl,a
                            626 ;	Peephole 181	changed mov to clr
   03EC E4                  627 	clr	a
   03ED 35 2C               628 	addc	a,(_sdat + 1)
   03EF F5 83               629 	mov	dph,a
                            630 ;     genPointerGet
                            631 ;     genFarPointerGet
   03F1 E0                  632 	movx	a,@dptr
   03F2 FA                  633 	mov	r2,a
                            634 ;     genCmpLt
                            635 ;     genCmp
   03F3 BA 04 00            636 	cjne	r2,#0x04,00128$
   03F6                     637 00128$:
                            638 ;     genIfxJump
                            639 ;	Peephole 108	removed ljmp by inverse jump logic
   03F6 50 5A               640 	jnc	00105$
   03F8                     641 00129$:
                            642 ;usb_core.c:101: EP0CS     = 0x02;         /* clear HSNACK */
                            643 ;     genAssign
   03F8 90 7F B4            644 	mov	dptr,#_EP0CS
   03FB 74 02               645 	mov	a,#0x02
   03FD F0                  646 	movx	@dptr,a
                            647 ;usb_core.c:102: SUDPTRH = (Byte)(string_index[sdat->wValueL] >> 8);
                            648 ;     genPlus
                            649 ;     genPlusIncr
   03FE 74 02               650 	mov	a,#0x02
   0400 25 2B               651 	add	a,_sdat
   0402 F5 82               652 	mov	dpl,a
                            653 ;	Peephole 181	changed mov to clr
   0404 E4                  654 	clr	a
   0405 35 2C               655 	addc	a,(_sdat + 1)
   0407 F5 83               656 	mov	dph,a
                            657 ;     genPointerGet
                            658 ;     genFarPointerGet
   0409 E0                  659 	movx	a,@dptr
                            660 ;     genMult
                            661 ;     genMultOneByte
                            662 ;	Peephole 105	removed redundant mov
   040A FA                  663 	mov	r2,a
   040B 75 F0 02            664 	mov	b,#0x02
   040E A4                  665 	mul	ab
                            666 ;     genPlus
   040F 24 99               667 	add	a,#_string_index
   0411 F5 82               668 	mov	dpl,a
   0413 74 0A               669 	mov	a,#(_string_index >> 8)
   0415 35 F0               670 	addc	a,b
   0417 F5 83               671 	mov	dph,a
                            672 ;     genPointerGet
                            673 ;     genCodePointerGet
                            674 ;	Peephole 181	changed mov to clr
   0419 E4                  675 	clr	a
   041A 93                  676 	movc	a,@a+dptr
   041B FA                  677 	mov	r2,a
   041C 74 01               678 	mov	a,#0x01
   041E 93                  679 	movc	a,@a+dptr
   041F FB                  680 	mov	r3,a
                            681 ;     genRightShift
                            682 ;     genRightShiftLiteral
                            683 ;     genrshTwo
   0420 8B 0A               684 	mov	ar2,r3
   0422 7B 00               685 	mov	r3,#0x00
                            686 ;     genCast
   0424 90 7F D4            687 	mov	dptr,#_SUDPTRH
   0427 EA                  688 	mov	a,r2
   0428 F0                  689 	movx	@dptr,a
                            690 ;usb_core.c:103: SUDPTRL = string_index[sdat->wValueL] & 0xff;
                            691 ;     genPlus
                            692 ;     genPlusIncr
   0429 74 02               693 	mov	a,#0x02
   042B 25 2B               694 	add	a,_sdat
   042D F5 82               695 	mov	dpl,a
                            696 ;	Peephole 181	changed mov to clr
   042F E4                  697 	clr	a
   0430 35 2C               698 	addc	a,(_sdat + 1)
   0432 F5 83               699 	mov	dph,a
                            700 ;     genPointerGet
                            701 ;     genFarPointerGet
   0434 E0                  702 	movx	a,@dptr
                            703 ;     genMult
                            704 ;     genMultOneByte
                            705 ;	Peephole 105	removed redundant mov
   0435 FA                  706 	mov	r2,a
   0436 75 F0 02            707 	mov	b,#0x02
   0439 A4                  708 	mul	ab
                            709 ;     genPlus
   043A 24 99               710 	add	a,#_string_index
   043C F5 82               711 	mov	dpl,a
   043E 74 0A               712 	mov	a,#(_string_index >> 8)
   0440 35 F0               713 	addc	a,b
   0442 F5 83               714 	mov	dph,a
                            715 ;     genPointerGet
                            716 ;     genCodePointerGet
                            717 ;	Peephole 181	changed mov to clr
   0444 E4                  718 	clr	a
   0445 93                  719 	movc	a,@a+dptr
   0446 FA                  720 	mov	r2,a
   0447 74 01               721 	mov	a,#0x01
   0449 93                  722 	movc	a,@a+dptr
                            723 ;     genAnd
                            724 ;	Peephole 177.c	removed redundant move
   044A 7B 00               725 	mov	r3,#0x00
                            726 ;     genCast
   044C 90 7F D5            727 	mov	dptr,#_SUDPTRL
   044F EA                  728 	mov	a,r2
   0450 F0                  729 	movx	@dptr,a
                            730 ;	Peephole 112.b	changed ljmp to sjmp
                            731 ;	Peephole 251.b	replaced sjmp to ret with ret
   0451 22                  732 	ret
   0452                     733 00105$:
                            734 ;usb_core.c:105: EP0CS     = 0x03;         /* stall */
                            735 ;     genAssign
   0452 90 7F B4            736 	mov	dptr,#_EP0CS
   0455 74 03               737 	mov	a,#0x03
   0457 F0                  738 	movx	@dptr,a
                            739 ;usb_core.c:107: break;
                            740 ;usb_core.c:110: case USB_DT_HID:
                            741 ;	Peephole 112.b	changed ljmp to sjmp
                            742 ;	Peephole 251.b	replaced sjmp to ret with ret
   0458 22                  743 	ret
   0459                     744 00107$:
                            745 ;usb_core.c:111: EP0CS   = 0x02;   /* clear HSNACK */
                            746 ;     genAssign
   0459 90 7F B4            747 	mov	dptr,#_EP0CS
   045C 74 02               748 	mov	a,#0x02
   045E F0                  749 	movx	@dptr,a
                            750 ;usb_core.c:112: SUDPTRH = (Byte)(((unsigned int)conf_desc) + 18 >> 8);
                            751 ;     genCast
   045F 7A 62               752 	mov	r2,#_conf_desc
   0461 7B 09               753 	mov	r3,#(_conf_desc >> 8)
                            754 ;     genPlus
   0463 74 12               755 	mov	a,#0x12
                            756 ;	Peephole 236.a	used r2 instead of ar2
   0465 2A                  757 	add	a,r2
   0466 FA                  758 	mov	r2,a
                            759 ;	Peephole 181	changed mov to clr
   0467 E4                  760 	clr	a
                            761 ;	Peephole 236.b	used r3 instead of ar3
   0468 3B                  762 	addc	a,r3
   0469 FB                  763 	mov	r3,a
                            764 ;     genRightShift
                            765 ;     genRightShiftLiteral
                            766 ;     genrshTwo
   046A 8B 0A               767 	mov	ar2,r3
   046C 7B 00               768 	mov	r3,#0x00
                            769 ;     genCast
   046E 90 7F D4            770 	mov	dptr,#_SUDPTRH
   0471 EA                  771 	mov	a,r2
   0472 F0                  772 	movx	@dptr,a
                            773 ;usb_core.c:113: SUDPTRL = ((unsigned int)conf_desc) + 18 & 0xff;
                            774 ;     genCast
   0473 7A 62               775 	mov	r2,#_conf_desc
   0475 7B 09               776 	mov	r3,#(_conf_desc >> 8)
                            777 ;     genCast
                            778 ;     genPlus
   0477 90 7F D5            779 	mov	dptr,#_SUDPTRL
   047A 74 12               780 	mov	a,#0x12
                            781 ;	Peephole 236.a	used r2 instead of ar2
   047C 2A                  782 	add	a,r2
   047D F0                  783 	movx	@dptr,a
                            784 ;usb_core.c:114: break;
                            785 ;usb_core.c:117: case USB_DT_REPORT:
                            786 ;	Peephole 112.b	changed ljmp to sjmp
                            787 ;	Peephole 251.b	replaced sjmp to ret with ret
   047E 22                  788 	ret
   047F                     789 00108$:
                            790 ;usb_core.c:118: if (sdat->wIndexL == 0) {
                            791 ;     genPlus
                            792 ;     genPlusIncr
   047F 74 04               793 	mov	a,#0x04
   0481 25 2B               794 	add	a,_sdat
   0483 F5 82               795 	mov	dpl,a
                            796 ;	Peephole 181	changed mov to clr
   0485 E4                  797 	clr	a
   0486 35 2C               798 	addc	a,(_sdat + 1)
   0488 F5 83               799 	mov	dph,a
                            800 ;     genPointerGet
                            801 ;     genFarPointerGet
   048A E0                  802 	movx	a,@dptr
                            803 ;     genCmpEq
                            804 ;	Peephole 115.b	jump optimization
   048B FA                  805 	mov	r2,a
   048C 60 02               806 	jz	00131$
   048E                     807 00130$:
                            808 ;	Peephole 112.b	changed ljmp to sjmp
   048E 80 1F               809 	sjmp	00110$
   0490                     810 00131$:
                            811 ;usb_core.c:119: EP0CS   = 0x02;   /* clear HSNACK */
                            812 ;     genAssign
   0490 90 7F B4            813 	mov	dptr,#_EP0CS
   0493 74 02               814 	mov	a,#0x02
   0495 F0                  815 	movx	@dptr,a
                            816 ;usb_core.c:120: SUDPTRH = (Byte)((unsigned int)(report_desc_keyboard) >> 8);
                            817 ;     genCast
   0496 7A 84               818 	mov	r2,#_report_desc_keyboard
   0498 7B 09               819 	mov	r3,#(_report_desc_keyboard >> 8)
                            820 ;     genRightShift
                            821 ;     genRightShiftLiteral
                            822 ;     genrshTwo
   049A 8B 0A               823 	mov	ar2,r3
   049C 7B 00               824 	mov	r3,#0x00
                            825 ;     genCast
   049E 90 7F D4            826 	mov	dptr,#_SUDPTRH
   04A1 EA                  827 	mov	a,r2
   04A2 F0                  828 	movx	@dptr,a
                            829 ;usb_core.c:121: SUDPTRL = (unsigned int)(report_desc_keyboard) & 0xff;
                            830 ;     genCast
   04A3 7A 84               831 	mov	r2,#_report_desc_keyboard
   04A5 7B 09               832 	mov	r3,#(_report_desc_keyboard >> 8)
                            833 ;     genAnd
   04A7 7B 00               834 	mov	r3,#0x00
                            835 ;     genCast
   04A9 90 7F D5            836 	mov	dptr,#_SUDPTRL
   04AC EA                  837 	mov	a,r2
   04AD F0                  838 	movx	@dptr,a
                            839 ;	Peephole 112.b	changed ljmp to sjmp
                            840 ;	Peephole 251.b	replaced sjmp to ret with ret
   04AE 22                  841 	ret
   04AF                     842 00110$:
                            843 ;usb_core.c:123: EP0CS   = 0x03;   /* stall */
                            844 ;     genAssign
   04AF 90 7F B4            845 	mov	dptr,#_EP0CS
   04B2 74 03               846 	mov	a,#0x03
   04B4 F0                  847 	movx	@dptr,a
                            848 ;usb_core.c:124: break;
                            849 ;usb_core.c:126: default:
                            850 ;	Peephole 112.b	changed ljmp to sjmp
                            851 ;	Peephole 251.b	replaced sjmp to ret with ret
   04B5 22                  852 	ret
   04B6                     853 00112$:
                            854 ;usb_core.c:127: EP0CS     = 0x03;           /* stall */
                            855 ;     genAssign
   04B6 90 7F B4            856 	mov	dptr,#_EP0CS
   04B9 74 03               857 	mov	a,#0x03
   04BB F0                  858 	movx	@dptr,a
                            859 ;usb_core.c:129: }
   04BC                     860 00114$:
   04BC 22                  861 	ret
                            862 ;------------------------------------------------------------
                            863 ;Allocation info for local variables in function 'usb_isr'
                            864 ;------------------------------------------------------------
                            865 ;i                         Allocated to registers r2 
                            866 ;------------------------------------------------------------
                            867 ;usb_core.c:148: void usb_isr(void) interrupt 8 using 1
                            868 ;	-----------------------------------------
                            869 ;	 function usb_isr
                            870 ;	-----------------------------------------
   04BD                     871 _usb_isr:
   04BD C0 E0               872 	push	acc
   04BF C0 F0               873 	push	b
   04C1 C0 82               874 	push	dpl
   04C3 C0 83               875 	push	dph
   04C5 C0 D0               876 	push	psw
   04C7 75 D0 08            877 	mov	psw,#0x08
                            878 ;usb_core.c:153: EXIF &= 0xef;
                            879 ;     genAnd
   04CA 53 91 EF            880 	anl	_EXIF,#0xEF
                            881 ;usb_core.c:156: if (USBIRQ & 0x01) {
                            882 ;     genAssign
   04CD 90 7F AB            883 	mov	dptr,#_USBIRQ
   04D0 E0                  884 	movx	a,@dptr
                            885 ;     genAnd
                            886 ;	Peephole 105	removed redundant mov
   04D1 FA                  887 	mov	r2,a
                            888 ;     genIfxJump
   04D2 20 E0 03            889 	jb	acc.0,00237$
   04D5 02 08 98            890 	ljmp	00182$
   04D8                     891 00237$:
                            892 ;usb_core.c:159: USBIRQ = 0x01;
                            893 ;     genAssign
   04D8 90 7F AB            894 	mov	dptr,#_USBIRQ
   04DB 74 01               895 	mov	a,#0x01
   04DD F0                  896 	movx	@dptr,a
                            897 ;usb_core.c:161: switch (sdat->bRequest) {
                            898 ;     genPlus
                            899 ;     genPlusIncr
   04DE 74 01               900 	mov	a,#0x01
   04E0 25 2B               901 	add	a,_sdat
   04E2 F5 82               902 	mov	dpl,a
                            903 ;	Peephole 181	changed mov to clr
   04E4 E4                  904 	clr	a
   04E5 35 2C               905 	addc	a,(_sdat + 1)
   04E7 F5 83               906 	mov	dph,a
                            907 ;     genPointerGet
                            908 ;     genFarPointerGet
   04E9 E0                  909 	movx	a,@dptr
                            910 ;     genCmpGt
                            911 ;     genCmp
                            912 ;     genIfxJump
                            913 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
                            914 ;	Peephole 177.a	removed redundant mov
   04EA FA                  915 	mov  r2,a
   04EB 24 F4               916 	add	a,#0xff - 0x0B
   04ED 50 03               917 	jnc	00238$
   04EF 02 08 92            918 	ljmp	00179$
   04F2                     919 00238$:
                            920 ;     genJumpTab
                            921 ;	Peephole 254	optimized left shift
   04F2 EA                  922 	mov	a,r2
   04F3 2A                  923 	add	a,r2
   04F4 2A                  924 	add	a,r2
   04F5 90 04 F9            925 	mov	dptr,#00239$
   04F8 73                  926 	jmp	@a+dptr
   04F9                     927 00239$:
   04F9 02 05 1D            928 	ljmp	00101$
   04FC 02 05 53            929 	ljmp	00107$
   04FF 02 06 2E            930 	ljmp	00125$
   0502 02 06 71            931 	ljmp	00132$
   0505 02 08 92            932 	ljmp	00179$
   0508 02 08 92            933 	ljmp	00179$
   050B 02 07 56            934 	ljmp	00147$
   050E 02 08 92            935 	ljmp	00179$
   0511 02 07 5C            936 	ljmp	00148$
   0514 02 07 85            937 	ljmp	00152$
   0517 02 07 B0            938 	ljmp	00157$
   051A 02 08 25            939 	ljmp	00168$
                            940 ;usb_core.c:164: case 0x00:
   051D                     941 00101$:
                            942 ;usb_core.c:165: switch (sdat->bmRequestType) {
                            943 ;     genAssign
   051D 85 2B 82            944 	mov	dpl,_sdat
   0520 85 2C 83            945 	mov	dph,(_sdat + 1)
                            946 ;     genPointerGet
                            947 ;     genFarPointerGet
   0523 E0                  948 	movx	a,@dptr
   0524 FA                  949 	mov	r2,a
                            950 ;     genCmpEq
   0525 BA 80 02            951 	cjne	r2,#0x80,00240$
                            952 ;	Peephole 112.b	changed ljmp to sjmp
   0528 80 08               953 	sjmp	00104$
   052A                     954 00240$:
                            955 ;     genCmpEq
   052A BA 81 02            956 	cjne	r2,#0x81,00241$
                            957 ;	Peephole 112.b	changed ljmp to sjmp
   052D 80 03               958 	sjmp	00104$
   052F                     959 00241$:
                            960 ;     genCmpEq
                            961 ;	Peephole 112.b	changed ljmp to sjmp
                            962 ;	Peephole 199	optimized misc jump sequence
   052F BA 82 18            963 	cjne	r2,#0x82,00105$
                            964 ;00242$:
                            965 ;	Peephole 200	removed redundant sjmp
   0532                     966 00243$:
                            967 ;usb_core.c:171: case 0x82:
   0532                     968 00104$:
                            969 ;usb_core.c:172: in0buf(0) = 0x00;
                            970 ;     genPointerSet
                            971 ;     genFarPointerSet
   0532 90 7F 00            972 	mov	dptr,#_IN0BUF
                            973 ;	Peephole 181	changed mov to clr
                            974 ;usb_core.c:173: in0buf(1) = 0x00;
                            975 ;     genPointerSet
                            976 ;     genFarPointerSet
                            977 ;	Peephole 181	changed mov to clr
                            978 ;	Peephole 219	removed redundant clear
   0535 E4                  979 	clr	a
   0536 F0                  980 	movx	@dptr,a
   0537 90 7F 01            981 	mov	dptr,#(_IN0BUF + 0x0001)
   053A F0                  982 	movx	@dptr,a
                            983 ;usb_core.c:174: IN0BC     = 0x02;
                            984 ;     genAssign
   053B 90 7F B5            985 	mov	dptr,#_IN0BC
   053E 74 02               986 	mov	a,#0x02
   0540 F0                  987 	movx	@dptr,a
                            988 ;usb_core.c:175: EP0CS     = 0x02;       /* clear HSNACK */
                            989 ;     genAssign
   0541 90 7F B4            990 	mov	dptr,#_EP0CS
   0544 74 02               991 	mov	a,#0x02
   0546 F0                  992 	movx	@dptr,a
                            993 ;usb_core.c:176: break;
   0547 02 08 98            994 	ljmp	00182$
                            995 ;usb_core.c:178: default:
   054A                     996 00105$:
                            997 ;usb_core.c:179: EP0CS     = 0x03;       /* stall */
                            998 ;     genAssign
   054A 90 7F B4            999 	mov	dptr,#_EP0CS
   054D 74 03              1000 	mov	a,#0x03
   054F F0                 1001 	movx	@dptr,a
                           1002 ;usb_core.c:182: break;
   0550 02 08 98           1003 	ljmp	00182$
                           1004 ;usb_core.c:185: case 0x01:
   0553                    1005 00107$:
                           1006 ;usb_core.c:186: switch (sdat->bmRequestType) {
                           1007 ;     genAssign
   0553 85 2B 82           1008 	mov	dpl,_sdat
   0556 85 2C 83           1009 	mov	dph,(_sdat + 1)
                           1010 ;     genPointerGet
                           1011 ;     genFarPointerGet
   0559 E0                 1012 	movx	a,@dptr
                           1013 ;     genCmpEq
                           1014 ;	Peephole 112.b	changed ljmp to sjmp
                           1015 ;	Peephole 115.b	jump optimization
   055A FA                 1016 	mov	r2,a
   055B 60 13              1017 	jz	00108$
   055D                    1018 00244$:
                           1019 ;     genCmpEq
   055D BA 01 02           1020 	cjne	r2,#0x01,00245$
                           1021 ;	Peephole 112.b	changed ljmp to sjmp
   0560 80 17              1022 	sjmp	00109$
   0562                    1023 00245$:
                           1024 ;     genCmpEq
   0562 BA 02 02           1025 	cjne	r2,#0x02,00246$
                           1026 ;	Peephole 112.b	changed ljmp to sjmp
   0565 80 1B              1027 	sjmp	00110$
   0567                    1028 00246$:
                           1029 ;     genCmpEq
   0567 BA A1 03           1030 	cjne	r2,#0xA1,00247$
   056A 02 05 E1           1031 	ljmp	00116$
   056D                    1032 00247$:
   056D 02 06 25           1033 	ljmp	00123$
                           1034 ;usb_core.c:188: case 0x00:
   0570                    1035 00108$:
                           1036 ;usb_core.c:189: EP0CS     = 0x02;       /* clear HSNACK */
                           1037 ;     genAssign
   0570 90 7F B4           1038 	mov	dptr,#_EP0CS
   0573 74 02              1039 	mov	a,#0x02
   0575 F0                 1040 	movx	@dptr,a
                           1041 ;usb_core.c:190: break;
   0576 02 08 98           1042 	ljmp	00182$
                           1043 ;usb_core.c:192: case 0x01:
   0579                    1044 00109$:
                           1045 ;usb_core.c:193: EP0CS     = 0x02;       /* clear HSNACK */
                           1046 ;     genAssign
   0579 90 7F B4           1047 	mov	dptr,#_EP0CS
   057C 74 02              1048 	mov	a,#0x02
   057E F0                 1049 	movx	@dptr,a
                           1050 ;usb_core.c:194: break;
   057F 02 08 98           1051 	ljmp	00182$
                           1052 ;usb_core.c:196: case 0x02:
   0582                    1053 00110$:
                           1054 ;usb_core.c:197: switch (sdat->wIndexL) {
                           1055 ;     genPlus
                           1056 ;     genPlusIncr
   0582 74 04              1057 	mov	a,#0x04
   0584 25 2B              1058 	add	a,_sdat
   0586 F5 82              1059 	mov	dpl,a
                           1060 ;	Peephole 181	changed mov to clr
   0588 E4                 1061 	clr	a
   0589 35 2C              1062 	addc	a,(_sdat + 1)
   058B F5 83              1063 	mov	dph,a
                           1064 ;     genPointerGet
                           1065 ;     genFarPointerGet
   058D E0                 1066 	movx	a,@dptr
                           1067 ;     genCmpEq
                           1068 ;	Peephole 112.b	changed ljmp to sjmp
                           1069 ;	Peephole 115.b	jump optimization
   058E FA                 1070 	mov	r2,a
   058F 60 0A              1071 	jz	00111$
   0591                    1072 00248$:
                           1073 ;     genCmpEq
   0591 BA 80 02           1074 	cjne	r2,#0x80,00249$
                           1075 ;	Peephole 112.b	changed ljmp to sjmp
   0594 80 16              1076 	sjmp	00112$
   0596                    1077 00249$:
                           1078 ;     genCmpEq
                           1079 ;	Peephole 112.b	changed ljmp to sjmp
                           1080 ;usb_core.c:200: case 0x00:              /* OUT0 */
                           1081 ;	Peephole 112.b	changed ljmp to sjmp
                           1082 ;	Peephole 199	optimized misc jump sequence
   0596 BA 81 3F           1083 	cjne	r2,#0x81,00114$
   0599 80 23              1084 	sjmp	00113$
                           1085 ;00250$:
   059B                    1086 00111$:
                           1087 ;usb_core.c:201: TOGCTL = 0x00;
                           1088 ;     genAssign
                           1089 ;usb_core.c:202: TOGCTL = 0x20;
                           1090 ;     genAssign
                           1091 ;	Peephole 180.a	removed redundant mov to dptr
   059B 90 7F D7           1092 	mov	dptr,#_TOGCTL
                           1093 ;	Peephole 181	changed mov to clr
   059E E4                 1094 	clr	a
   059F F0                 1095 	movx	@dptr,a
   05A0 74 20              1096 	mov	a,#0x20
   05A2 F0                 1097 	movx	@dptr,a
                           1098 ;usb_core.c:203: EP0CS  = 0x02;        /* clear HSNACK */
                           1099 ;     genAssign
   05A3 90 7F B4           1100 	mov	dptr,#_EP0CS
   05A6 74 02              1101 	mov	a,#0x02
   05A8 F0                 1102 	movx	@dptr,a
                           1103 ;usb_core.c:204: break;
   05A9 02 08 98           1104 	ljmp	00182$
                           1105 ;usb_core.c:205: case 0x80:              /* IN0  */
   05AC                    1106 00112$:
                           1107 ;usb_core.c:206: TOGCTL = 0x10;
                           1108 ;     genAssign
                           1109 ;usb_core.c:207: TOGCTL = 0x30;
                           1110 ;     genAssign
                           1111 ;	Peephole 180.a	removed redundant mov to dptr
   05AC 90 7F D7           1112 	mov	dptr,#_TOGCTL
   05AF 74 10              1113 	mov	a,#0x10
   05B1 F0                 1114 	movx	@dptr,a
   05B2 74 30              1115 	mov	a,#0x30
   05B4 F0                 1116 	movx	@dptr,a
                           1117 ;usb_core.c:208: EP0CS  = 0x02;        /* clear HSNACK */
                           1118 ;     genAssign
   05B5 90 7F B4           1119 	mov	dptr,#_EP0CS
   05B8 74 02              1120 	mov	a,#0x02
   05BA F0                 1121 	movx	@dptr,a
                           1122 ;usb_core.c:209: break;
   05BB 02 08 98           1123 	ljmp	00182$
                           1124 ;usb_core.c:210: case 0x81:              /* IN1  */
   05BE                    1125 00113$:
                           1126 ;usb_core.c:211: IN1CS &= 0xfe;        /* unstall endpoint */
                           1127 ;     genAssign
                           1128 ;     genAnd
                           1129 ;	Peephole 248.b	optimized and to xdata
   05BE 90 7F B6           1130 	mov	dptr,#_IN1CS
   05C1 E0                 1131 	movx	a,@dptr
   05C2 FA                 1132 	mov	r2,a
   05C3 54 FE              1133 	anl	a,#0xFE
   05C5 F0                 1134 	movx	@dptr,a
                           1135 ;usb_core.c:212: TOGCTL = 0x11;
                           1136 ;     genAssign
                           1137 ;usb_core.c:213: TOGCTL = 0x31;
                           1138 ;     genAssign
                           1139 ;	Peephole 180.a	removed redundant mov to dptr
   05C6 90 7F D7           1140 	mov	dptr,#_TOGCTL
   05C9 74 11              1141 	mov	a,#0x11
   05CB F0                 1142 	movx	@dptr,a
   05CC 74 31              1143 	mov	a,#0x31
   05CE F0                 1144 	movx	@dptr,a
                           1145 ;usb_core.c:214: EP0CS  = 0x02;        /* clear HSNACK */;
                           1146 ;     genAssign
   05CF 90 7F B4           1147 	mov	dptr,#_EP0CS
   05D2 74 02              1148 	mov	a,#0x02
   05D4 F0                 1149 	movx	@dptr,a
                           1150 ;usb_core.c:215: break;
   05D5 02 08 98           1151 	ljmp	00182$
                           1152 ;usb_core.c:216: default:
   05D8                    1153 00114$:
                           1154 ;usb_core.c:217: EP0CS = 0x03;         /* stall */
                           1155 ;     genAssign
   05D8 90 7F B4           1156 	mov	dptr,#_EP0CS
   05DB 74 03              1157 	mov	a,#0x03
   05DD F0                 1158 	movx	@dptr,a
                           1159 ;usb_core.c:220: break;
   05DE 02 08 98           1160 	ljmp	00182$
                           1161 ;usb_core.c:223: case 0xa1:
   05E1                    1162 00116$:
                           1163 ;usb_core.c:226: if (sdat->wIndexL == 0) {
                           1164 ;     genPlus
                           1165 ;     genPlusIncr
   05E1 74 04              1166 	mov	a,#0x04
   05E3 25 2B              1167 	add	a,_sdat
   05E5 F5 82              1168 	mov	dpl,a
                           1169 ;	Peephole 181	changed mov to clr
   05E7 E4                 1170 	clr	a
   05E8 35 2C              1171 	addc	a,(_sdat + 1)
   05EA F5 83              1172 	mov	dph,a
                           1173 ;     genPointerGet
                           1174 ;     genFarPointerGet
   05EC E0                 1175 	movx	a,@dptr
                           1176 ;     genCmpEq
                           1177 ;	Peephole 115.b	jump optimization
   05ED FA                 1178 	mov	r2,a
   05EE 60 02              1179 	jz	00252$
   05F0                    1180 00251$:
                           1181 ;	Peephole 112.b	changed ljmp to sjmp
   05F0 80 2A              1182 	sjmp	00121$
   05F2                    1183 00252$:
                           1184 ;usb_core.c:227: while (i-- > 0)
                           1185 ;     genAssign
   05F2 7A 07              1186 	mov	r2,#0x07
   05F4                    1187 00117$:
                           1188 ;     genAssign
   05F4 8A 0B              1189 	mov	ar3,r2
                           1190 ;     genMinus
                           1191 ;     genMinusDec
   05F6 1A                 1192 	dec	r2
                           1193 ;     genCmpGt
                           1194 ;     genCmp
                           1195 ;     genIfxJump
                           1196 ;	Peephole 108	removed ljmp by inverse jump logic
                           1197 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   05F7 EB                 1198 	mov	a,r3
   05F8 24 FF              1199 	add	a,#0xff - 0x00
   05FA 50 0F              1200 	jnc	00119$
   05FC                    1201 00253$:
                           1202 ;usb_core.c:228: in0buf(i) = key_buffer[i];
                           1203 ;     genPlus
                           1204 ;     genPlus aligned array
   05FC 8A 82              1205 	mov	dpl,r2
   05FE 75 83 7F           1206 	mov	dph,#(_IN0BUF >> 8)
                           1207 ;     genPlus
                           1208 ;	Peephole 236.g	used r2 instead of ar2
   0601 EA                 1209 	mov	a,r2
   0602 24 21              1210 	add	a,#_key_buffer
   0604 F8                 1211 	mov	r0,a
                           1212 ;     genPointerGet
                           1213 ;     genNearPointerGet
   0605 86 0B              1214 	mov	ar3,@r0
                           1215 ;     genPointerSet
                           1216 ;     genFarPointerSet
   0607 EB                 1217 	mov	a,r3
   0608 F0                 1218 	movx	@dptr,a
                           1219 ;	Peephole 112.b	changed ljmp to sjmp
   0609 80 E9              1220 	sjmp	00117$
   060B                    1221 00119$:
                           1222 ;usb_core.c:231: kbd_new_keys = FALSE;
                           1223 ;     genAssign
   060B C2 00              1224 	clr	_kbd_new_keys
                           1225 ;usb_core.c:233: IN0BC    = 0x08;
                           1226 ;     genAssign
   060D 90 7F B5           1227 	mov	dptr,#_IN0BC
   0610 74 08              1228 	mov	a,#0x08
   0612 F0                 1229 	movx	@dptr,a
                           1230 ;usb_core.c:234: EP0CS    = 0x02;   /* clear HSNACK */
                           1231 ;     genAssign
   0613 90 7F B4           1232 	mov	dptr,#_EP0CS
   0616 74 02              1233 	mov	a,#0x02
   0618 F0                 1234 	movx	@dptr,a
   0619 02 08 98           1235 	ljmp	00182$
   061C                    1236 00121$:
                           1237 ;usb_core.c:236: EP0CS    = 0x03;   /* stall */
                           1238 ;     genAssign
   061C 90 7F B4           1239 	mov	dptr,#_EP0CS
   061F 74 03              1240 	mov	a,#0x03
   0621 F0                 1241 	movx	@dptr,a
                           1242 ;usb_core.c:237: break;
   0622 02 08 98           1243 	ljmp	00182$
                           1244 ;usb_core.c:239: default:
   0625                    1245 00123$:
                           1246 ;usb_core.c:240: EP0CS      = 0x03;   /* stall */
                           1247 ;     genAssign
   0625 90 7F B4           1248 	mov	dptr,#_EP0CS
   0628 74 03              1249 	mov	a,#0x03
   062A F0                 1250 	movx	@dptr,a
                           1251 ;usb_core.c:243: break;
   062B 02 08 98           1252 	ljmp	00182$
                           1253 ;usb_core.c:246: case 0x02:
   062E                    1254 00125$:
                           1255 ;usb_core.c:247: switch (sdat->bmRequestType) {
                           1256 ;     genAssign
   062E 85 2B 82           1257 	mov	dpl,_sdat
   0631 85 2C 83           1258 	mov	dph,(_sdat + 1)
                           1259 ;     genPointerGet
                           1260 ;     genFarPointerGet
   0634 E0                 1261 	movx	a,@dptr
   0635 FA                 1262 	mov	r2,a
                           1263 ;     genCmpEq
                           1264 ;	Peephole 112.b	changed ljmp to sjmp
                           1265 ;	Peephole 199	optimized misc jump sequence
   0636 BA A1 2F           1266 	cjne	r2,#0xA1,00130$
                           1267 ;00254$:
                           1268 ;	Peephole 200	removed redundant sjmp
   0639                    1269 00255$:
                           1270 ;usb_core.c:250: if (sdat->wIndexL == 0) {
                           1271 ;     genPlus
                           1272 ;     genPlusIncr
   0639 74 04              1273 	mov	a,#0x04
   063B 25 2B              1274 	add	a,_sdat
   063D F5 82              1275 	mov	dpl,a
                           1276 ;	Peephole 181	changed mov to clr
   063F E4                 1277 	clr	a
   0640 35 2C              1278 	addc	a,(_sdat + 1)
   0642 F5 83              1279 	mov	dph,a
                           1280 ;     genPointerGet
                           1281 ;     genFarPointerGet
   0644 E0                 1282 	movx	a,@dptr
                           1283 ;     genCmpEq
                           1284 ;	Peephole 115.b	jump optimization
   0645 FA                 1285 	mov	r2,a
   0646 60 02              1286 	jz	00257$
   0648                    1287 00256$:
                           1288 ;	Peephole 112.b	changed ljmp to sjmp
   0648 80 15              1289 	sjmp	00128$
   064A                    1290 00257$:
                           1291 ;usb_core.c:251: in0buf(0) = kbd_idle_duration;
                           1292 ;     genPointerSet
                           1293 ;     genFarPointerSet
   064A 90 7F 00           1294 	mov	dptr,#_IN0BUF
   064D E5 29              1295 	mov	a,_kbd_idle_duration
   064F F0                 1296 	movx	@dptr,a
                           1297 ;usb_core.c:252: IN0BC     = 0x01;
                           1298 ;     genAssign
   0650 90 7F B5           1299 	mov	dptr,#_IN0BC
   0653 74 01              1300 	mov	a,#0x01
   0655 F0                 1301 	movx	@dptr,a
                           1302 ;usb_core.c:253: EP0CS     = 0x02;     /* clear HSNACK */
                           1303 ;     genAssign
   0656 90 7F B4           1304 	mov	dptr,#_EP0CS
   0659 74 02              1305 	mov	a,#0x02
   065B F0                 1306 	movx	@dptr,a
   065C 02 08 98           1307 	ljmp	00182$
   065F                    1308 00128$:
                           1309 ;usb_core.c:255: EP0CS     = 0x03;     /* stall */
                           1310 ;     genAssign
   065F 90 7F B4           1311 	mov	dptr,#_EP0CS
   0662 74 03              1312 	mov	a,#0x03
   0664 F0                 1313 	movx	@dptr,a
                           1314 ;usb_core.c:256: break;
   0665 02 08 98           1315 	ljmp	00182$
                           1316 ;usb_core.c:258: default:
   0668                    1317 00130$:
                           1318 ;usb_core.c:259: EP0CS       = 0x03;     /* stall */
                           1319 ;     genAssign
   0668 90 7F B4           1320 	mov	dptr,#_EP0CS
   066B 74 03              1321 	mov	a,#0x03
   066D F0                 1322 	movx	@dptr,a
                           1323 ;usb_core.c:262: break;
   066E 02 08 98           1324 	ljmp	00182$
                           1325 ;usb_core.c:266: case 0x03:
   0671                    1326 00132$:
                           1327 ;usb_core.c:267: switch (sdat->bmRequestType) {
                           1328 ;     genAssign
   0671 85 2B 82           1329 	mov	dpl,_sdat
   0674 85 2C 83           1330 	mov	dph,(_sdat + 1)
                           1331 ;     genPointerGet
                           1332 ;     genFarPointerGet
   0677 E0                 1333 	movx	a,@dptr
                           1334 ;     genCmpEq
                           1335 ;	Peephole 112.b	changed ljmp to sjmp
                           1336 ;	Peephole 115.b	jump optimization
   0678 FA                 1337 	mov	r2,a
   0679 60 13              1338 	jz	00133$
   067B                    1339 00258$:
                           1340 ;     genCmpEq
   067B BA 01 02           1341 	cjne	r2,#0x01,00259$
                           1342 ;	Peephole 112.b	changed ljmp to sjmp
   067E 80 17              1343 	sjmp	00134$
   0680                    1344 00259$:
                           1345 ;     genCmpEq
   0680 BA 02 02           1346 	cjne	r2,#0x02,00260$
                           1347 ;	Peephole 112.b	changed ljmp to sjmp
   0683 80 1B              1348 	sjmp	00135$
   0685                    1349 00260$:
                           1350 ;     genCmpEq
   0685 BA A1 03           1351 	cjne	r2,#0xA1,00261$
   0688 02 07 1E           1352 	ljmp	00141$
   068B                    1353 00261$:
   068B 02 07 4D           1354 	ljmp	00145$
                           1355 ;usb_core.c:269: case 0x00:
   068E                    1356 00133$:
                           1357 ;usb_core.c:270: EP0CS     = 0x02;       /* clear HSNACK */
                           1358 ;     genAssign
   068E 90 7F B4           1359 	mov	dptr,#_EP0CS
   0691 74 02              1360 	mov	a,#0x02
   0693 F0                 1361 	movx	@dptr,a
                           1362 ;usb_core.c:271: break;
   0694 02 08 98           1363 	ljmp	00182$
                           1364 ;usb_core.c:273: case 0x01:
   0697                    1365 00134$:
                           1366 ;usb_core.c:274: EP0CS     = 0x02;       /* clear HSNACK */
                           1367 ;     genAssign
   0697 90 7F B4           1368 	mov	dptr,#_EP0CS
   069A 74 02              1369 	mov	a,#0x02
   069C F0                 1370 	movx	@dptr,a
                           1371 ;usb_core.c:275: break;
   069D 02 08 98           1372 	ljmp	00182$
                           1373 ;usb_core.c:277: case 0x02:
   06A0                    1374 00135$:
                           1375 ;usb_core.c:278: switch (sdat->wIndexL) {
                           1376 ;     genPlus
                           1377 ;     genPlusIncr
   06A0 74 04              1378 	mov	a,#0x04
   06A2 25 2B              1379 	add	a,_sdat
   06A4 F5 82              1380 	mov	dpl,a
                           1381 ;	Peephole 181	changed mov to clr
   06A6 E4                 1382 	clr	a
   06A7 35 2C              1383 	addc	a,(_sdat + 1)
   06A9 F5 83              1384 	mov	dph,a
                           1385 ;     genPointerGet
                           1386 ;     genFarPointerGet
   06AB E0                 1387 	movx	a,@dptr
                           1388 ;     genCmpEq
                           1389 ;	Peephole 112.b	changed ljmp to sjmp
                           1390 ;	Peephole 115.b	jump optimization
   06AC FA                 1391 	mov	r2,a
   06AD 60 0A              1392 	jz	00136$
   06AF                    1393 00262$:
                           1394 ;     genCmpEq
   06AF BA 80 02           1395 	cjne	r2,#0x80,00263$
                           1396 ;	Peephole 112.b	changed ljmp to sjmp
   06B2 80 25              1397 	sjmp	00137$
   06B4                    1398 00263$:
                           1399 ;     genCmpEq
                           1400 ;	Peephole 112.b	changed ljmp to sjmp
                           1401 ;usb_core.c:279: case 0x00:              /* OUT0 */
                           1402 ;	Peephole 112.b	changed ljmp to sjmp
                           1403 ;	Peephole 199	optimized misc jump sequence
   06B4 BA 81 5E           1404 	cjne	r2,#0x81,00139$
   06B7 80 3C              1405 	sjmp	00138$
                           1406 ;00264$:
   06B9                    1407 00136$:
                           1408 ;usb_core.c:280: EP0CS  |= 0x01;       /* stall endpoint */
                           1409 ;     genAssign
                           1410 ;     genOr
                           1411 ;	Peephole 248.a	optimized or to xdata
   06B9 90 7F B4           1412 	mov	dptr,#_EP0CS
   06BC E0                 1413 	movx	a,@dptr
   06BD FA                 1414 	mov	r2,a
   06BE 44 01              1415 	orl	a,#0x01
   06C0 F0                 1416 	movx	@dptr,a
                           1417 ;usb_core.c:281: TOGCTL  = 0x00;
                           1418 ;     genAssign
                           1419 ;usb_core.c:282: TOGCTL  = 0x20;
                           1420 ;     genAssign
                           1421 ;	Peephole 180.a	removed redundant mov to dptr
   06C1 90 7F D7           1422 	mov	dptr,#_TOGCTL
                           1423 ;	Peephole 181	changed mov to clr
   06C4 E4                 1424 	clr	a
   06C5 F0                 1425 	movx	@dptr,a
   06C6 74 20              1426 	mov	a,#0x20
   06C8 F0                 1427 	movx	@dptr,a
                           1428 ;usb_core.c:283: OUT0BC  = 0x00;
                           1429 ;     genAssign
   06C9 90 7F C5           1430 	mov	dptr,#_OUT0BC
                           1431 ;	Peephole 181	changed mov to clr
   06CC E4                 1432 	clr	a
   06CD F0                 1433 	movx	@dptr,a
                           1434 ;usb_core.c:284: EP0CS  |= 0x02;       /* clear HSNACK */
                           1435 ;     genAssign
                           1436 ;     genOr
                           1437 ;	Peephole 248.a	optimized or to xdata
   06CE 90 7F B4           1438 	mov	dptr,#_EP0CS
   06D1 E0                 1439 	movx	a,@dptr
   06D2 FA                 1440 	mov	r2,a
   06D3 44 02              1441 	orl	a,#0x02
   06D5 F0                 1442 	movx	@dptr,a
                           1443 ;usb_core.c:285: break;
   06D6 02 08 98           1444 	ljmp	00182$
                           1445 ;usb_core.c:286: case 0x80:              /* IN0  */
   06D9                    1446 00137$:
                           1447 ;usb_core.c:287: EP0CS  |= 0x01;       /* stall endpoint */
                           1448 ;     genAssign
                           1449 ;     genOr
                           1450 ;	Peephole 248.a	optimized or to xdata
   06D9 90 7F B4           1451 	mov	dptr,#_EP0CS
   06DC E0                 1452 	movx	a,@dptr
   06DD FA                 1453 	mov	r2,a
   06DE 44 01              1454 	orl	a,#0x01
   06E0 F0                 1455 	movx	@dptr,a
                           1456 ;usb_core.c:288: TOGCTL  = 0x10;
                           1457 ;     genAssign
                           1458 ;usb_core.c:289: TOGCTL  = 0x30;
                           1459 ;     genAssign
                           1460 ;	Peephole 180.a	removed redundant mov to dptr
   06E1 90 7F D7           1461 	mov	dptr,#_TOGCTL
   06E4 74 10              1462 	mov	a,#0x10
   06E6 F0                 1463 	movx	@dptr,a
   06E7 74 30              1464 	mov	a,#0x30
   06E9 F0                 1465 	movx	@dptr,a
                           1466 ;usb_core.c:290: EP0CS  |= 0x02;       /* clear HSNACK */
                           1467 ;     genAssign
                           1468 ;     genOr
                           1469 ;	Peephole 248.a	optimized or to xdata
   06EA 90 7F B4           1470 	mov	dptr,#_EP0CS
   06ED E0                 1471 	movx	a,@dptr
   06EE FA                 1472 	mov	r2,a
   06EF 44 02              1473 	orl	a,#0x02
   06F1 F0                 1474 	movx	@dptr,a
                           1475 ;usb_core.c:291: break;
   06F2 02 08 98           1476 	ljmp	00182$
                           1477 ;usb_core.c:292: case 0x81:              /* IN1  */
   06F5                    1478 00138$:
                           1479 ;usb_core.c:293: IN1CS   = 0x01;       /* stall endpoint */
                           1480 ;     genAssign
   06F5 90 7F B6           1481 	mov	dptr,#_IN1CS
   06F8 74 01              1482 	mov	a,#0x01
   06FA F0                 1483 	movx	@dptr,a
                           1484 ;usb_core.c:294: TOGCTL  = 0x11;
                           1485 ;     genAssign
                           1486 ;usb_core.c:295: TOGCTL  = 0x31;
                           1487 ;     genAssign
                           1488 ;	Peephole 180.a	removed redundant mov to dptr
   06FB 90 7F D7           1489 	mov	dptr,#_TOGCTL
   06FE 74 11              1490 	mov	a,#0x11
   0700 F0                 1491 	movx	@dptr,a
   0701 74 31              1492 	mov	a,#0x31
   0703 F0                 1493 	movx	@dptr,a
                           1494 ;usb_core.c:296: IN1CS  |= 0x02;
                           1495 ;     genAssign
                           1496 ;     genOr
                           1497 ;	Peephole 248.a	optimized or to xdata
   0704 90 7F B6           1498 	mov	dptr,#_IN1CS
   0707 E0                 1499 	movx	a,@dptr
   0708 FA                 1500 	mov	r2,a
   0709 44 02              1501 	orl	a,#0x02
   070B F0                 1502 	movx	@dptr,a
                           1503 ;usb_core.c:297: EP0CS   = 0x02;       /* clear HSNACK */;
                           1504 ;     genAssign
   070C 90 7F B4           1505 	mov	dptr,#_EP0CS
   070F 74 02              1506 	mov	a,#0x02
   0711 F0                 1507 	movx	@dptr,a
                           1508 ;usb_core.c:298: break;
   0712 02 08 98           1509 	ljmp	00182$
                           1510 ;usb_core.c:299: default:
   0715                    1511 00139$:
                           1512 ;usb_core.c:300: EP0CS  = 0x03;        /* stall */
                           1513 ;     genAssign
   0715 90 7F B4           1514 	mov	dptr,#_EP0CS
   0718 74 03              1515 	mov	a,#0x03
   071A F0                 1516 	movx	@dptr,a
                           1517 ;usb_core.c:303: break;
   071B 02 08 98           1518 	ljmp	00182$
                           1519 ;usb_core.c:306: case 0xa1:
   071E                    1520 00141$:
                           1521 ;usb_core.c:307: if (sdat->wIndexL == 0) {
                           1522 ;     genPlus
                           1523 ;     genPlusIncr
   071E 74 04              1524 	mov	a,#0x04
   0720 25 2B              1525 	add	a,_sdat
   0722 F5 82              1526 	mov	dpl,a
                           1527 ;	Peephole 181	changed mov to clr
   0724 E4                 1528 	clr	a
   0725 35 2C              1529 	addc	a,(_sdat + 1)
   0727 F5 83              1530 	mov	dph,a
                           1531 ;     genPointerGet
                           1532 ;     genFarPointerGet
   0729 E0                 1533 	movx	a,@dptr
                           1534 ;     genCmpEq
                           1535 ;	Peephole 115.b	jump optimization
   072A FA                 1536 	mov	r2,a
   072B 60 02              1537 	jz	00266$
   072D                    1538 00265$:
                           1539 ;	Peephole 112.b	changed ljmp to sjmp
   072D 80 15              1540 	sjmp	00143$
   072F                    1541 00266$:
                           1542 ;usb_core.c:308: in0buf(0) = 1;      /* always send Report protocol */
                           1543 ;     genPointerSet
                           1544 ;     genFarPointerSet
   072F 90 7F 00           1545 	mov	dptr,#_IN0BUF
   0732 74 01              1546 	mov	a,#0x01
   0734 F0                 1547 	movx	@dptr,a
                           1548 ;usb_core.c:309: IN0BC     = 0x01;
                           1549 ;     genAssign
   0735 90 7F B5           1550 	mov	dptr,#_IN0BC
   0738 74 01              1551 	mov	a,#0x01
   073A F0                 1552 	movx	@dptr,a
                           1553 ;usb_core.c:310: EP0CS     = 0x02;   /* clear HSNACK */
                           1554 ;     genAssign
   073B 90 7F B4           1555 	mov	dptr,#_EP0CS
   073E 74 02              1556 	mov	a,#0x02
   0740 F0                 1557 	movx	@dptr,a
   0741 02 08 98           1558 	ljmp	00182$
   0744                    1559 00143$:
                           1560 ;usb_core.c:312: EP0CS     = 0x03;   /* stall */
                           1561 ;     genAssign
   0744 90 7F B4           1562 	mov	dptr,#_EP0CS
   0747 74 03              1563 	mov	a,#0x03
   0749 F0                 1564 	movx	@dptr,a
                           1565 ;usb_core.c:313: break;
   074A 02 08 98           1566 	ljmp	00182$
                           1567 ;usb_core.c:315: default:
   074D                    1568 00145$:
                           1569 ;usb_core.c:316: EP0CS       = 0x03;   /* stall */
                           1570 ;     genAssign
   074D 90 7F B4           1571 	mov	dptr,#_EP0CS
   0750 74 03              1572 	mov	a,#0x03
   0752 F0                 1573 	movx	@dptr,a
                           1574 ;usb_core.c:319: break;
   0753 02 08 98           1575 	ljmp	00182$
                           1576 ;usb_core.c:322: case 0x06:
   0756                    1577 00147$:
                           1578 ;usb_core.c:323: get_descriptor(/*sdat*/);
                           1579 ;     genCall
   0756 12 03 7D           1580 	lcall	_get_descriptor
                           1581 ;usb_core.c:324: break;
   0759 02 08 98           1582 	ljmp	00182$
                           1583 ;usb_core.c:327: case 0x08:
   075C                    1584 00148$:
                           1585 ;usb_core.c:328: if (sdat->bmRequestType == 0x80) {
                           1586 ;     genAssign
   075C 85 2B 82           1587 	mov	dpl,_sdat
   075F 85 2C 83           1588 	mov	dph,(_sdat + 1)
                           1589 ;     genPointerGet
                           1590 ;     genFarPointerGet
   0762 E0                 1591 	movx	a,@dptr
   0763 FA                 1592 	mov	r2,a
                           1593 ;     genCmpEq
                           1594 ;	Peephole 112.b	changed ljmp to sjmp
                           1595 ;	Peephole 199	optimized misc jump sequence
   0764 BA 80 15           1596 	cjne	r2,#0x80,00150$
                           1597 ;00267$:
                           1598 ;	Peephole 200	removed redundant sjmp
   0767                    1599 00268$:
                           1600 ;usb_core.c:329: in0buf(0) = 0x01;
                           1601 ;     genPointerSet
                           1602 ;     genFarPointerSet
   0767 90 7F 00           1603 	mov	dptr,#_IN0BUF
   076A 74 01              1604 	mov	a,#0x01
   076C F0                 1605 	movx	@dptr,a
                           1606 ;usb_core.c:330: IN0BC     = 0x01;
                           1607 ;     genAssign
   076D 90 7F B5           1608 	mov	dptr,#_IN0BC
   0770 74 01              1609 	mov	a,#0x01
   0772 F0                 1610 	movx	@dptr,a
                           1611 ;usb_core.c:331: EP0CS     = 0x02;       /* clear HSNACK */
                           1612 ;     genAssign
   0773 90 7F B4           1613 	mov	dptr,#_EP0CS
   0776 74 02              1614 	mov	a,#0x02
   0778 F0                 1615 	movx	@dptr,a
   0779 02 08 98           1616 	ljmp	00182$
   077C                    1617 00150$:
                           1618 ;usb_core.c:333: EP0CS     = 0x03;       /* stall */
                           1619 ;     genAssign
   077C 90 7F B4           1620 	mov	dptr,#_EP0CS
   077F 74 03              1621 	mov	a,#0x03
   0781 F0                 1622 	movx	@dptr,a
                           1623 ;usb_core.c:335: break;
   0782 02 08 98           1624 	ljmp	00182$
                           1625 ;usb_core.c:338: case 0x09:
   0785                    1626 00152$:
                           1627 ;usb_core.c:339: switch (sdat->bmRequestType) {
                           1628 ;     genAssign
   0785 85 2B 82           1629 	mov	dpl,_sdat
   0788 85 2C 83           1630 	mov	dph,(_sdat + 1)
                           1631 ;     genPointerGet
                           1632 ;     genFarPointerGet
   078B E0                 1633 	movx	a,@dptr
                           1634 ;     genCmpEq
                           1635 ;	Peephole 112.b	changed ljmp to sjmp
                           1636 ;	Peephole 115.b	jump optimization
   078C FA                 1637 	mov	r2,a
   078D 60 05              1638 	jz	00153$
   078F                    1639 00269$:
                           1640 ;     genCmpEq
                           1641 ;	Peephole 112.b	changed ljmp to sjmp
                           1642 ;usb_core.c:341: case 0x00:
                           1643 ;	Peephole 112.b	changed ljmp to sjmp
                           1644 ;	Peephole 199	optimized misc jump sequence
   078F BA 21 15           1645 	cjne	r2,#0x21,00155$
   0792 80 09              1646 	sjmp	00154$
                           1647 ;00270$:
   0794                    1648 00153$:
                           1649 ;usb_core.c:342: EP0CS     = 0x02;       /* clear HSNACK */
                           1650 ;     genAssign
   0794 90 7F B4           1651 	mov	dptr,#_EP0CS
   0797 74 02              1652 	mov	a,#0x02
   0799 F0                 1653 	movx	@dptr,a
                           1654 ;usb_core.c:343: break;
   079A 02 08 98           1655 	ljmp	00182$
                           1656 ;usb_core.c:346: case 0x21:
   079D                    1657 00154$:
                           1658 ;usb_core.c:348: is_ctrl_out0_kbd = TRUE;
                           1659 ;     genAssign
   079D D2 06              1660 	setb	_is_ctrl_out0_kbd
                           1661 ;usb_core.c:349: OUT0BC   = 0x00;    /* arm endpoint OUT0 */
                           1662 ;     genAssign
   079F 90 7F C5           1663 	mov	dptr,#_OUT0BC
                           1664 ;	Peephole 181	changed mov to clr
   07A2 E4                 1665 	clr	a
   07A3 F0                 1666 	movx	@dptr,a
                           1667 ;usb_core.c:351: break;
   07A4 02 08 98           1668 	ljmp	00182$
                           1669 ;usb_core.c:353: default:
   07A7                    1670 00155$:
                           1671 ;usb_core.c:354: EP0CS     = 0x03;       /* stall */
                           1672 ;     genAssign
   07A7 90 7F B4           1673 	mov	dptr,#_EP0CS
   07AA 74 03              1674 	mov	a,#0x03
   07AC F0                 1675 	movx	@dptr,a
                           1676 ;usb_core.c:357: break;
   07AD 02 08 98           1677 	ljmp	00182$
                           1678 ;usb_core.c:360: case 0x0a:
   07B0                    1679 00157$:
                           1680 ;usb_core.c:361: switch (sdat->bmRequestType) {
                           1681 ;     genAssign
   07B0 85 2B 82           1682 	mov	dpl,_sdat
   07B3 85 2C 83           1683 	mov	dph,(_sdat + 1)
                           1684 ;     genPointerGet
                           1685 ;     genFarPointerGet
   07B6 E0                 1686 	movx	a,@dptr
   07B7 FA                 1687 	mov	r2,a
                           1688 ;     genCmpEq
   07B8 BA 21 02           1689 	cjne	r2,#0x21,00271$
                           1690 ;	Peephole 112.b	changed ljmp to sjmp
   07BB 80 17              1691 	sjmp	00159$
   07BD                    1692 00271$:
                           1693 ;     genCmpEq
                           1694 ;	Peephole 112.b	changed ljmp to sjmp
                           1695 ;	Peephole 199	optimized misc jump sequence
   07BD BA 81 5C           1696 	cjne	r2,#0x81,00166$
                           1697 ;00272$:
                           1698 ;	Peephole 200	removed redundant sjmp
   07C0                    1699 00273$:
                           1700 ;usb_core.c:364: in0buf(0) = 0x00;
                           1701 ;     genPointerSet
                           1702 ;     genFarPointerSet
   07C0 90 7F 00           1703 	mov	dptr,#_IN0BUF
                           1704 ;	Peephole 181	changed mov to clr
   07C3 E4                 1705 	clr	a
   07C4 F0                 1706 	movx	@dptr,a
                           1707 ;usb_core.c:365: IN0BC     = 0x01;
                           1708 ;     genAssign
   07C5 90 7F B5           1709 	mov	dptr,#_IN0BC
   07C8 74 01              1710 	mov	a,#0x01
   07CA F0                 1711 	movx	@dptr,a
                           1712 ;usb_core.c:366: EP0CS     = 0x02;       /* clear HSNACK */
                           1713 ;     genAssign
   07CB 90 7F B4           1714 	mov	dptr,#_EP0CS
   07CE 74 02              1715 	mov	a,#0x02
   07D0 F0                 1716 	movx	@dptr,a
                           1717 ;usb_core.c:367: break;
   07D1 02 08 98           1718 	ljmp	00182$
                           1719 ;usb_core.c:370: case 0x21:
   07D4                    1720 00159$:
                           1721 ;usb_core.c:371: if (sdat->wIndexL == 0) {
                           1722 ;     genPlus
                           1723 ;     genPlusIncr
   07D4 74 04              1724 	mov	a,#0x04
   07D6 25 2B              1725 	add	a,_sdat
   07D8 F5 82              1726 	mov	dpl,a
                           1727 ;	Peephole 181	changed mov to clr
   07DA E4                 1728 	clr	a
   07DB 35 2C              1729 	addc	a,(_sdat + 1)
   07DD F5 83              1730 	mov	dph,a
                           1731 ;     genPointerGet
                           1732 ;     genFarPointerGet
   07DF E0                 1733 	movx	a,@dptr
                           1734 ;     genCmpEq
                           1735 ;	Peephole 115.b	jump optimization
   07E0 FA                 1736 	mov	r2,a
   07E1 60 02              1737 	jz	00275$
   07E3                    1738 00274$:
                           1739 ;	Peephole 112.b	changed ljmp to sjmp
   07E3 80 2E              1740 	sjmp	00164$
   07E5                    1741 00275$:
                           1742 ;usb_core.c:373: if (sdat->wValueH > 0) {
                           1743 ;     genPlus
                           1744 ;     genPlusIncr
   07E5 74 03              1745 	mov	a,#0x03
   07E7 25 2B              1746 	add	a,_sdat
   07E9 F5 82              1747 	mov	dpl,a
                           1748 ;	Peephole 181	changed mov to clr
   07EB E4                 1749 	clr	a
   07EC 35 2C              1750 	addc	a,(_sdat + 1)
   07EE F5 83              1751 	mov	dph,a
                           1752 ;     genPointerGet
                           1753 ;     genFarPointerGet
   07F0 E0                 1754 	movx	a,@dptr
                           1755 ;     genCmpGt
                           1756 ;     genCmp
                           1757 ;     genIfxJump
                           1758 ;	Peephole 108	removed ljmp by inverse jump logic
                           1759 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
                           1760 ;	Peephole 177.a	removed redundant mov
   07F1 FA                 1761 	mov  r2,a
   07F2 24 FF              1762 	add	a,#0xff - 0x00
   07F4 50 12              1763 	jnc	00161$
   07F6                    1764 00276$:
                           1765 ;usb_core.c:374: kbd_idle_mode     = FALSE;
                           1766 ;     genAssign
   07F6 C2 01              1767 	clr	_kbd_idle_mode
                           1768 ;usb_core.c:375: kbd_idle_duration = sdat->wValueH;
                           1769 ;     genPlus
                           1770 ;     genPlusIncr
   07F8 74 03              1771 	mov	a,#0x03
   07FA 25 2B              1772 	add	a,_sdat
   07FC F5 82              1773 	mov	dpl,a
                           1774 ;	Peephole 181	changed mov to clr
   07FE E4                 1775 	clr	a
   07FF 35 2C              1776 	addc	a,(_sdat + 1)
   0801 F5 83              1777 	mov	dph,a
                           1778 ;     genPointerGet
                           1779 ;     genFarPointerGet
   0803 E0                 1780 	movx	a,@dptr
   0804 F5 29              1781 	mov	_kbd_idle_duration,a
                           1782 ;	Peephole 112.b	changed ljmp to sjmp
   0806 80 02              1783 	sjmp	00162$
   0808                    1784 00161$:
                           1785 ;usb_core.c:377: kbd_idle_mode     = TRUE;
                           1786 ;     genAssign
   0808 D2 01              1787 	setb	_kbd_idle_mode
   080A                    1788 00162$:
                           1789 ;usb_core.c:380: EP0CS   = 0x02;   /* clear HSNACK */
                           1790 ;     genAssign
   080A 90 7F B4           1791 	mov	dptr,#_EP0CS
   080D 74 02              1792 	mov	a,#0x02
   080F F0                 1793 	movx	@dptr,a
   0810 02 08 98           1794 	ljmp	00182$
   0813                    1795 00164$:
                           1796 ;usb_core.c:382: EP0CS   = 0x03;   /* stall */
                           1797 ;     genAssign
   0813 90 7F B4           1798 	mov	dptr,#_EP0CS
   0816 74 03              1799 	mov	a,#0x03
   0818 F0                 1800 	movx	@dptr,a
                           1801 ;usb_core.c:383: break;
   0819 02 08 98           1802 	ljmp	00182$
                           1803 ;usb_core.c:385: default:
   081C                    1804 00166$:
                           1805 ;usb_core.c:386: EP0CS     = 0x03;   /* stall */
                           1806 ;     genAssign
   081C 90 7F B4           1807 	mov	dptr,#_EP0CS
   081F 74 03              1808 	mov	a,#0x03
   0821 F0                 1809 	movx	@dptr,a
                           1810 ;usb_core.c:389: break;
   0822 02 08 98           1811 	ljmp	00182$
                           1812 ;usb_core.c:392: case 0x0b:
   0825                    1813 00168$:
                           1814 ;usb_core.c:393: switch (sdat->bmRequestType) {
                           1815 ;     genAssign
   0825 85 2B 82           1816 	mov	dpl,_sdat
   0828 85 2C 83           1817 	mov	dph,(_sdat + 1)
                           1818 ;     genPointerGet
                           1819 ;     genFarPointerGet
   082B E0                 1820 	movx	a,@dptr
   082C FA                 1821 	mov	r2,a
                           1822 ;     genCmpEq
   082D BA 01 02           1823 	cjne	r2,#0x01,00277$
                           1824 ;	Peephole 112.b	changed ljmp to sjmp
   0830 80 05              1825 	sjmp	00169$
   0832                    1826 00277$:
                           1827 ;     genCmpEq
                           1828 ;	Peephole 112.b	changed ljmp to sjmp
                           1829 ;usb_core.c:395: case 0x01:
                           1830 ;	Peephole 112.b	changed ljmp to sjmp
                           1831 ;	Peephole 199	optimized misc jump sequence
   0832 BA 21 55           1832 	cjne	r2,#0x21,00177$
   0835 80 4B              1833 	sjmp	00176$
                           1834 ;00278$:
   0837                    1835 00169$:
                           1836 ;usb_core.c:396: if (sdat->wValueL == 0) { /* only AS 0 supported */
                           1837 ;     genPlus
                           1838 ;     genPlusIncr
   0837 74 02              1839 	mov	a,#0x02
   0839 25 2B              1840 	add	a,_sdat
   083B F5 82              1841 	mov	dpl,a
                           1842 ;	Peephole 181	changed mov to clr
   083D E4                 1843 	clr	a
   083E 35 2C              1844 	addc	a,(_sdat + 1)
   0840 F5 83              1845 	mov	dph,a
                           1846 ;     genPointerGet
                           1847 ;     genFarPointerGet
   0842 E0                 1848 	movx	a,@dptr
                           1849 ;     genCmpEq
                           1850 ;	Peephole 115.b	jump optimization
   0843 FA                 1851 	mov	r2,a
   0844 60 02              1852 	jz	00280$
   0846                    1853 00279$:
                           1854 ;	Peephole 112.b	changed ljmp to sjmp
   0846 80 32              1855 	sjmp	00174$
   0848                    1856 00280$:
                           1857 ;usb_core.c:397: if (sdat->wIndexL == 0) {
                           1858 ;     genPlus
                           1859 ;     genPlusIncr
   0848 74 04              1860 	mov	a,#0x04
   084A 25 2B              1861 	add	a,_sdat
   084C F5 82              1862 	mov	dpl,a
                           1863 ;	Peephole 181	changed mov to clr
   084E E4                 1864 	clr	a
   084F 35 2C              1865 	addc	a,(_sdat + 1)
   0851 F5 83              1866 	mov	dph,a
                           1867 ;     genPointerGet
                           1868 ;     genFarPointerGet
   0853 E0                 1869 	movx	a,@dptr
                           1870 ;     genCmpEq
                           1871 ;	Peephole 115.b	jump optimization
   0854 FA                 1872 	mov	r2,a
   0855 60 02              1873 	jz	00282$
   0857                    1874 00281$:
                           1875 ;	Peephole 112.b	changed ljmp to sjmp
   0857 80 19              1876 	sjmp	00171$
   0859                    1877 00282$:
                           1878 ;usb_core.c:398: TOGCTL = 0x11;
                           1879 ;     genAssign
                           1880 ;usb_core.c:399: TOGCTL = 0x31;      /* reset toggle of IN1 */
                           1881 ;     genAssign
                           1882 ;	Peephole 180.a	removed redundant mov to dptr
   0859 90 7F D7           1883 	mov	dptr,#_TOGCTL
   085C 74 11              1884 	mov	a,#0x11
   085E F0                 1885 	movx	@dptr,a
   085F 74 31              1886 	mov	a,#0x31
   0861 F0                 1887 	movx	@dptr,a
                           1888 ;usb_core.c:400: IN1CS |= 0x02;      /* remove busy */
                           1889 ;     genAssign
                           1890 ;     genOr
                           1891 ;	Peephole 248.a	optimized or to xdata
   0862 90 7F B6           1892 	mov	dptr,#_IN1CS
   0865 E0                 1893 	movx	a,@dptr
   0866 FA                 1894 	mov	r2,a
   0867 44 02              1895 	orl	a,#0x02
   0869 F0                 1896 	movx	@dptr,a
                           1897 ;usb_core.c:402: EP0CS  = 0x02;      /* clear HSNACK */
                           1898 ;     genAssign
   086A 90 7F B4           1899 	mov	dptr,#_EP0CS
   086D 74 02              1900 	mov	a,#0x02
   086F F0                 1901 	movx	@dptr,a
                           1902 ;	Peephole 112.b	changed ljmp to sjmp
   0870 80 26              1903 	sjmp	00182$
   0872                    1904 00171$:
                           1905 ;usb_core.c:404: EP0CS  = 0x03;      /* stall */
                           1906 ;     genAssign
   0872 90 7F B4           1907 	mov	dptr,#_EP0CS
   0875 74 03              1908 	mov	a,#0x03
   0877 F0                 1909 	movx	@dptr,a
                           1910 ;	Peephole 112.b	changed ljmp to sjmp
   0878 80 1E              1911 	sjmp	00182$
   087A                    1912 00174$:
                           1913 ;usb_core.c:406: EP0CS  = 0x03;        /* stall */
                           1914 ;     genAssign
   087A 90 7F B4           1915 	mov	dptr,#_EP0CS
   087D 74 03              1916 	mov	a,#0x03
   087F F0                 1917 	movx	@dptr,a
                           1918 ;usb_core.c:407: break;
                           1919 ;usb_core.c:410: case 0x21:
                           1920 ;	Peephole 112.b	changed ljmp to sjmp
   0880 80 16              1921 	sjmp	00182$
   0882                    1922 00176$:
                           1923 ;usb_core.c:411: EP0CS     = 0x02;       /* clear HSNACK */
                           1924 ;     genAssign
   0882 90 7F B4           1925 	mov	dptr,#_EP0CS
   0885 74 02              1926 	mov	a,#0x02
   0887 F0                 1927 	movx	@dptr,a
                           1928 ;usb_core.c:412: break;
                           1929 ;usb_core.c:414: default:
                           1930 ;	Peephole 112.b	changed ljmp to sjmp
   0888 80 0E              1931 	sjmp	00182$
   088A                    1932 00177$:
                           1933 ;usb_core.c:415: EP0CS     = 0x03;       /* stall */
                           1934 ;     genAssign
   088A 90 7F B4           1935 	mov	dptr,#_EP0CS
   088D 74 03              1936 	mov	a,#0x03
   088F F0                 1937 	movx	@dptr,a
                           1938 ;usb_core.c:418: break;
                           1939 ;usb_core.c:420: default:
                           1940 ;	Peephole 112.b	changed ljmp to sjmp
   0890 80 06              1941 	sjmp	00182$
   0892                    1942 00179$:
                           1943 ;usb_core.c:421: EP0CS     = 0x03;         /* stall */
                           1944 ;     genAssign
   0892 90 7F B4           1945 	mov	dptr,#_EP0CS
   0895 74 03              1946 	mov	a,#0x03
   0897 F0                 1947 	movx	@dptr,a
                           1948 ;usb_core.c:423: }
   0898                    1949 00182$:
                           1950 ;usb_core.c:429: if (IN07IRQ & 0x01) {
                           1951 ;     genAssign
   0898 90 7F A9           1952 	mov	dptr,#_IN07IRQ
   089B E0                 1953 	movx	a,@dptr
                           1954 ;     genAnd
                           1955 ;	Peephole 105	removed redundant mov
   089C FA                 1956 	mov	r2,a
                           1957 ;     genIfxJump
                           1958 ;	Peephole 111	removed ljmp by inverse jump logic
   089D 30 E0 06           1959 	jnb	acc.0,00184$
   08A0                    1960 00283$:
                           1961 ;usb_core.c:431: IN07IRQ = 0x01;
                           1962 ;     genAssign
   08A0 90 7F A9           1963 	mov	dptr,#_IN07IRQ
   08A3 74 01              1964 	mov	a,#0x01
   08A5 F0                 1965 	movx	@dptr,a
   08A6                    1966 00184$:
                           1967 ;usb_core.c:435: if (OUT07IRQ & 0x01) {
                           1968 ;     genAssign
   08A6 90 7F AA           1969 	mov	dptr,#_OUT07IRQ
   08A9 E0                 1970 	movx	a,@dptr
                           1971 ;     genAnd
                           1972 ;	Peephole 105	removed redundant mov
   08AA FA                 1973 	mov	r2,a
                           1974 ;     genIfxJump
                           1975 ;	Peephole 111	removed ljmp by inverse jump logic
   08AB 30 E0 16           1976 	jnb	acc.0,00188$
   08AE                    1977 00284$:
                           1978 ;usb_core.c:437: OUT07IRQ = 0x01;
                           1979 ;     genAssign
   08AE 90 7F AA           1980 	mov	dptr,#_OUT07IRQ
   08B1 74 01              1981 	mov	a,#0x01
   08B3 F0                 1982 	movx	@dptr,a
                           1983 ;usb_core.c:440: if (is_ctrl_out0_kbd) {
                           1984 ;     genIfx
                           1985 ;     genIfxJump
                           1986 ;	Peephole 111	removed ljmp by inverse jump logic
                           1987 ;usb_core.c:457: is_ctrl_out0_kbd = FALSE;
                           1988 ;     genAssign
                           1989 ;	Peephole 250.a	using atomic test and clear
   08B4 10 06 02           1990 	jbc	_is_ctrl_out0_kbd,00285$
   08B7 80 06              1991 	sjmp	00186$
   08B9                    1992 00285$:
                           1993 ;usb_core.c:458: EP0CS            = 0x02;   /* clear HSNACK */
                           1994 ;     genAssign
   08B9 90 7F B4           1995 	mov	dptr,#_EP0CS
   08BC 74 02              1996 	mov	a,#0x02
   08BE F0                 1997 	movx	@dptr,a
   08BF                    1998 00186$:
                           1999 ;usb_core.c:462: OUT0BC = 0x00;
                           2000 ;     genAssign
   08BF 90 7F C5           2001 	mov	dptr,#_OUT0BC
                           2002 ;	Peephole 181	changed mov to clr
   08C2 E4                 2003 	clr	a
   08C3 F0                 2004 	movx	@dptr,a
   08C4                    2005 00188$:
                           2006 ;usb_core.c:467: if (USBIRQ & 0x10) {
                           2007 ;     genAssign
   08C4 90 7F AB           2008 	mov	dptr,#_USBIRQ
   08C7 E0                 2009 	movx	a,@dptr
                           2010 ;     genAnd
                           2011 ;	Peephole 105	removed redundant mov
   08C8 FA                 2012 	mov	r2,a
                           2013 ;     genIfxJump
                           2014 ;	Peephole 111	removed ljmp by inverse jump logic
   08C9 30 E4 06           2015 	jnb	acc.4,00190$
   08CC                    2016 00286$:
                           2017 ;usb_core.c:469: USBIRQ = 0x10;
                           2018 ;     genAssign
   08CC 90 7F AB           2019 	mov	dptr,#_USBIRQ
   08CF 74 10              2020 	mov	a,#0x10
   08D1 F0                 2021 	movx	@dptr,a
   08D2                    2022 00190$:
                           2023 ;usb_core.c:477: if (USBIRQ & 0x08) {
                           2024 ;     genAssign
   08D2 90 7F AB           2025 	mov	dptr,#_USBIRQ
   08D5 E0                 2026 	movx	a,@dptr
                           2027 ;     genAnd
                           2028 ;	Peephole 105	removed redundant mov
   08D6 FA                 2029 	mov	r2,a
                           2030 ;     genIfxJump
                           2031 ;	Peephole 111	removed ljmp by inverse jump logic
   08D7 30 E3 09           2032 	jnb	acc.3,00192$
   08DA                    2033 00287$:
                           2034 ;usb_core.c:479: USBIRQ = 0x08;
                           2035 ;     genAssign
   08DA 90 7F AB           2036 	mov	dptr,#_USBIRQ
   08DD 74 08              2037 	mov	a,#0x08
   08DF F0                 2038 	movx	@dptr,a
                           2039 ;usb_core.c:481: PCON |= 0x01;
                           2040 ;     genOr
   08E0 43 87 01           2041 	orl	_PCON,#0x01
   08E3                    2042 00192$:
                           2043 ;usb_core.c:485: if (IN07IRQ & 0x02) {
                           2044 ;     genAssign
   08E3 90 7F A9           2045 	mov	dptr,#_IN07IRQ
   08E6 E0                 2046 	movx	a,@dptr
                           2047 ;     genAnd
                           2048 ;	Peephole 105	removed redundant mov
   08E7 FA                 2049 	mov	r2,a
                           2050 ;     genIfxJump
                           2051 ;	Peephole 111	removed ljmp by inverse jump logic
   08E8 30 E1 08           2052 	jnb	acc.1,00195$
   08EB                    2053 00288$:
                           2054 ;usb_core.c:487: IN07IRQ = 0x02;
                           2055 ;     genAssign
   08EB 90 7F A9           2056 	mov	dptr,#_IN07IRQ
   08EE 74 02              2057 	mov	a,#0x02
   08F0 F0                 2058 	movx	@dptr,a
                           2059 ;usb_core.c:490: in1_busy = FALSE;
                           2060 ;     genAssign
   08F1 C2 07              2061 	clr	_in1_busy
   08F3                    2062 00195$:
   08F3 D0 D0              2063 	pop	psw
   08F5 D0 83              2064 	pop	dph
   08F7 D0 82              2065 	pop	dpl
   08F9 D0 F0              2066 	pop	b
   08FB D0 E0              2067 	pop	acc
   08FD 32                 2068 	reti
                           2069 ;------------------------------------------------------------
                           2070 ;Allocation info for local variables in function 'resume_isr'
                           2071 ;------------------------------------------------------------
                           2072 ;------------------------------------------------------------
                           2073 ;usb_core.c:496: void resume_isr(void) interrupt 6 using 2
                           2074 ;	-----------------------------------------
                           2075 ;	 function resume_isr
                           2076 ;	-----------------------------------------
   08FE                    2077 _resume_isr:
                    0012   2078 	ar2 = 0x12
                    0013   2079 	ar3 = 0x13
                    0014   2080 	ar4 = 0x14
                    0015   2081 	ar5 = 0x15
                    0016   2082 	ar6 = 0x16
                    0017   2083 	ar7 = 0x17
                    0010   2084 	ar0 = 0x10
                    0011   2085 	ar1 = 0x11
   08FE C0 D0              2086 	push	psw
   0900 75 D0 10           2087 	mov	psw,#0x10
                           2088 ;usb_core.c:499: EICON &= ~0x10;
                           2089 ;     genAnd
   0903 53 D8 EF           2090 	anl	_EICON,#0xEF
   0906                    2091 00101$:
   0906 D0 D0              2092 	pop	psw
   0908 32                 2093 	reti
                           2094 ;	eliminated unneeded push/pop dpl
                           2095 ;	eliminated unneeded push/pop dph
                           2096 ;	eliminated unneeded push/pop b
                           2097 ;	eliminated unneeded push/pop acc
                           2098 ;------------------------------------------------------------
                           2099 ;Allocation info for local variables in function 'setup_usb_int'
                           2100 ;------------------------------------------------------------
                           2101 ;------------------------------------------------------------
                           2102 ;usb_core.c:508: void setup_usb_int()
                           2103 ;	-----------------------------------------
                           2104 ;	 function setup_usb_int
                           2105 ;	-----------------------------------------
   0909                    2106 _setup_usb_int:
                    0002   2107 	ar2 = 0x02
                    0003   2108 	ar3 = 0x03
                    0004   2109 	ar4 = 0x04
                    0005   2110 	ar5 = 0x05
                    0006   2111 	ar6 = 0x06
                    0007   2112 	ar7 = 0x07
                    0000   2113 	ar0 = 0x00
                    0001   2114 	ar1 = 0x01
                           2115 ;usb_core.c:511: EA       = 0;
                           2116 ;     genAssign
   0909 C2 AF              2117 	clr	_EA
                           2118 ;usb_core.c:514: USBBAV   = 0x00;
                           2119 ;     genAssign
   090B 90 7F AF           2120 	mov	dptr,#_USBBAV
                           2121 ;	Peephole 181	changed mov to clr
   090E E4                 2122 	clr	a
   090F F0                 2123 	movx	@dptr,a
                           2124 ;usb_core.c:517: USBIRQ   = 0xff;
                           2125 ;     genAssign
   0910 90 7F AB           2126 	mov	dptr,#_USBIRQ
   0913 74 FF              2127 	mov	a,#0xFF
   0915 F0                 2128 	movx	@dptr,a
                           2129 ;usb_core.c:520: USBIEN   = 0x19;
                           2130 ;     genAssign
   0916 90 7F AE           2131 	mov	dptr,#_USBIEN
   0919 74 19              2132 	mov	a,#0x19
   091B F0                 2133 	movx	@dptr,a
                           2134 ;usb_core.c:524: IN07IRQ  = 0x03;
                           2135 ;     genAssign
   091C 90 7F A9           2136 	mov	dptr,#_IN07IRQ
   091F 74 03              2137 	mov	a,#0x03
   0921 F0                 2138 	movx	@dptr,a
                           2139 ;usb_core.c:527: IN07IEN  = 0x03;
                           2140 ;     genAssign
   0922 90 7F AC           2141 	mov	dptr,#_IN07IEN
   0925 74 03              2142 	mov	a,#0x03
   0927 F0                 2143 	movx	@dptr,a
                           2144 ;usb_core.c:530: OUT07IRQ = 0x01;
                           2145 ;     genAssign
   0928 90 7F AA           2146 	mov	dptr,#_OUT07IRQ
   092B 74 01              2147 	mov	a,#0x01
   092D F0                 2148 	movx	@dptr,a
                           2149 ;usb_core.c:533: OUT07IEN = 0x01;
                           2150 ;     genAssign
   092E 90 7F AD           2151 	mov	dptr,#_OUT07IEN
   0931 74 01              2152 	mov	a,#0x01
   0933 F0                 2153 	movx	@dptr,a
                           2154 ;usb_core.c:537: IN1CS    = 0x00;
                           2155 ;     genAssign
   0934 90 7F B6           2156 	mov	dptr,#_IN1CS
                           2157 ;	Peephole 181	changed mov to clr
   0937 E4                 2158 	clr	a
   0938 F0                 2159 	movx	@dptr,a
                           2160 ;usb_core.c:541: IN07VAL  = 3;
                           2161 ;     genAssign
   0939 90 7F DE           2162 	mov	dptr,#_IN07VAL
   093C 74 03              2163 	mov	a,#0x03
   093E F0                 2164 	movx	@dptr,a
                           2165 ;usb_core.c:542: OUT07VAL = 1;
                           2166 ;     genAssign
   093F 90 7F DF           2167 	mov	dptr,#_OUT07VAL
   0942 74 01              2168 	mov	a,#0x01
   0944 F0                 2169 	movx	@dptr,a
                           2170 ;usb_core.c:545: EUSB     = 1;
                           2171 ;     genAssign
   0945 D2 E8              2172 	setb	_EUSB
                           2173 ;usb_core.c:548: EICON   &= ~0x10;
                           2174 ;     genAnd
   0947 53 D8 EF           2175 	anl	_EICON,#0xEF
                           2176 ;usb_core.c:550: EICON   |= 0x20;
                           2177 ;     genOr
   094A 43 D8 20           2178 	orl	_EICON,#0x20
                           2179 ;usb_core.c:553: EA       = 1;
                           2180 ;     genAssign
   094D D2 AF              2181 	setb	_EA
   094F                    2182 00101$:
   094F 22                 2183 	ret
                           2184 	.area CSEG    (CODE)
   0950                    2185 _dev_desc:
   0950 12                 2186 	.db #0x12
   0951 01                 2187 	.db #0x01
   0952 10                 2188 	.db #0x10
   0953 01                 2189 	.db #0x01
   0954 00                 2190 	.db #0x00
   0955 00                 2191 	.db #0x00
   0956 00                 2192 	.db #0x00
   0957 40                 2193 	.db #0x40
   0958 CD                 2194 	.db #0xCD
   0959 06                 2195 	.db #0x06
   095A 04                 2196 	.db #0x04
   095B C0                 2197 	.db #0xC0
   095C 00                 2198 	.db #0x00
   095D 01                 2199 	.db #0x01
   095E 01                 2200 	.db #0x01
   095F 02                 2201 	.db #0x02
   0960 00                 2202 	.db #0x00
   0961 01                 2203 	.db #0x01
   0962                    2204 _conf_desc:
   0962 09                 2205 	.db #0x09
   0963 02                 2206 	.db #0x02
   0964 22                 2207 	.db #0x22
   0965 00                 2208 	.db #0x00
   0966 01                 2209 	.db #0x01
   0967 01                 2210 	.db #0x01
   0968 00                 2211 	.db #0x00
   0969 80                 2212 	.db #0x80
   096A 32                 2213 	.db #0x32
   096B 09                 2214 	.db #0x09
   096C 04                 2215 	.db #0x04
   096D 00                 2216 	.db #0x00
   096E 00                 2217 	.db #0x00
   096F 01                 2218 	.db #0x01
   0970 03                 2219 	.db #0x03
   0971 01                 2220 	.db #0x01
   0972 01                 2221 	.db #0x01
   0973 03                 2222 	.db #0x03
   0974 09                 2223 	.db #0x09
   0975 21                 2224 	.db #0x21
   0976 00                 2225 	.db #0x00
   0977 01                 2226 	.db #0x01
   0978 21                 2227 	.db #0x21
   0979 01                 2228 	.db #0x01
   097A 22                 2229 	.db #0x22
   097B 3F                 2230 	.db #0x3F
   097C 00                 2231 	.db #0x00
   097D 07                 2232 	.db #0x07
   097E 05                 2233 	.db #0x05
   097F 81                 2234 	.db #0x81
   0980 03                 2235 	.db #0x03
   0981 08                 2236 	.db #0x08
   0982 00                 2237 	.db #0x00
   0983 0A                 2238 	.db #0x0A
   0984                    2239 _report_desc_keyboard:
   0984 05                 2240 	.db #0x05
   0985 01                 2241 	.db #0x01
   0986 09                 2242 	.db #0x09
   0987 06                 2243 	.db #0x06
   0988 A1                 2244 	.db #0xA1
   0989 01                 2245 	.db #0x01
   098A 05                 2246 	.db #0x05
   098B 07                 2247 	.db #0x07
   098C 19                 2248 	.db #0x19
   098D E0                 2249 	.db #0xE0
   098E 29                 2250 	.db #0x29
   098F E7                 2251 	.db #0xE7
   0990 15                 2252 	.db #0x15
   0991 00                 2253 	.db #0x00
   0992 25                 2254 	.db #0x25
   0993 01                 2255 	.db #0x01
   0994 75                 2256 	.db #0x75
   0995 01                 2257 	.db #0x01
   0996 95                 2258 	.db #0x95
   0997 08                 2259 	.db #0x08
   0998 81                 2260 	.db #0x81
   0999 02                 2261 	.db #0x02
   099A 95                 2262 	.db #0x95
   099B 01                 2263 	.db #0x01
   099C 75                 2264 	.db #0x75
   099D 08                 2265 	.db #0x08
   099E 81                 2266 	.db #0x81
   099F 01                 2267 	.db #0x01
   09A0 95                 2268 	.db #0x95
   09A1 05                 2269 	.db #0x05
   09A2 75                 2270 	.db #0x75
   09A3 01                 2271 	.db #0x01
   09A4 05                 2272 	.db #0x05
   09A5 08                 2273 	.db #0x08
   09A6 19                 2274 	.db #0x19
   09A7 01                 2275 	.db #0x01
   09A8 29                 2276 	.db #0x29
   09A9 05                 2277 	.db #0x05
   09AA 91                 2278 	.db #0x91
   09AB 02                 2279 	.db #0x02
   09AC 95                 2280 	.db #0x95
   09AD 01                 2281 	.db #0x01
   09AE 75                 2282 	.db #0x75
   09AF 03                 2283 	.db #0x03
   09B0 91                 2284 	.db #0x91
   09B1 01                 2285 	.db #0x01
   09B2 95                 2286 	.db #0x95
   09B3 06                 2287 	.db #0x06
   09B4 75                 2288 	.db #0x75
   09B5 08                 2289 	.db #0x08
   09B6 15                 2290 	.db #0x15
   09B7 00                 2291 	.db #0x00
   09B8 25                 2292 	.db #0x25
   09B9 65                 2293 	.db #0x65
   09BA 05                 2294 	.db #0x05
   09BB 07                 2295 	.db #0x07
   09BC 19                 2296 	.db #0x19
   09BD 00                 2297 	.db #0x00
   09BE 29                 2298 	.db #0x29
   09BF 65                 2299 	.db #0x65
   09C0 81                 2300 	.db #0x81
   09C1 00                 2301 	.db #0x00
   09C2 C0                 2302 	.db #0xC0
   09C3                    2303 _string_langid:
   09C3 04                 2304 	.db #0x04
   09C4 03                 2305 	.db #0x03
   09C5 00                 2306 	.db #0x00
   09C6 00                 2307 	.db #0x00
   09C7                    2308 _string_mfg:
   09C7 22                 2309 	.db #0x22
   09C8 03                 2310 	.db #0x03
   09C9 41                 2311 	.db #0x41
   09CA 00                 2312 	.db #0x00
   09CB 43                 2313 	.db #0x43
   09CC 00                 2314 	.db #0x00
   09CD 4D                 2315 	.db #0x4D
   09CE 00                 2316 	.db #0x00
   09CF 45                 2317 	.db #0x45
   09D0 00                 2318 	.db #0x00
   09D1 20                 2319 	.db #0x20
   09D2 00                 2320 	.db #0x00
   09D3 55                 2321 	.db #0x55
   09D4 00                 2322 	.db #0x00
   09D5 53                 2323 	.db #0x53
   09D6 00                 2324 	.db #0x00
   09D7 42                 2325 	.db #0x42
   09D8 00                 2326 	.db #0x00
   09D9 20                 2327 	.db #0x20
   09DA 00                 2328 	.db #0x00
   09DB 57                 2329 	.db #0x57
   09DC 00                 2330 	.db #0x00
   09DD 69                 2331 	.db #0x69
   09DE 00                 2332 	.db #0x00
   09DF 64                 2333 	.db #0x64
   09E0 00                 2334 	.db #0x00
   09E1 67                 2335 	.db #0x67
   09E2 00                 2336 	.db #0x00
   09E3 65                 2337 	.db #0x65
   09E4 00                 2338 	.db #0x00
   09E5 74                 2339 	.db #0x74
   09E6 00                 2340 	.db #0x00
   09E7 73                 2341 	.db #0x73
   09E8 00                 2342 	.db #0x00
   09E9                    2343 _string_prod:
   09E9 26                 2344 	.db #0x26
   09EA 03                 2345 	.db #0x03
   09EB 41                 2346 	.db #0x41
   09EC 00                 2347 	.db #0x00
   09ED 6D                 2348 	.db #0x6D
   09EE 00                 2349 	.db #0x00
   09EF 69                 2350 	.db #0x69
   09F0 00                 2351 	.db #0x00
   09F1 67                 2352 	.db #0x67
   09F2 00                 2353 	.db #0x00
   09F3 61                 2354 	.db #0x61
   09F4 00                 2355 	.db #0x00
   09F5 20                 2356 	.db #0x20
   09F6 00                 2357 	.db #0x00
   09F7 6B                 2358 	.db #0x6B
   09F8 00                 2359 	.db #0x00
   09F9 65                 2360 	.db #0x65
   09FA 00                 2361 	.db #0x00
   09FB 79                 2362 	.db #0x79
   09FC 00                 2363 	.db #0x00
   09FD 62                 2364 	.db #0x62
   09FE 00                 2365 	.db #0x00
   09FF 6F                 2366 	.db #0x6F
   0A00 00                 2367 	.db #0x00
   0A01 61                 2368 	.db #0x61
   0A02 00                 2369 	.db #0x00
   0A03 72                 2370 	.db #0x72
   0A04 00                 2371 	.db #0x00
   0A05 64                 2372 	.db #0x64
   0A06 00                 2373 	.db #0x00
   0A07 20                 2374 	.db #0x20
   0A08 00                 2375 	.db #0x00
   0A09 48                 2376 	.db #0x48
   0A0A 00                 2377 	.db #0x00
   0A0B 49                 2378 	.db #0x49
   0A0C 00                 2379 	.db #0x00
   0A0D 44                 2380 	.db #0x44
   0A0E 00                 2381 	.db #0x00
   0A0F                    2382 _string_if_keyboard:
   0A0F 8A                 2383 	.db #0x8A
   0A10 03                 2384 	.db #0x03
   0A11 41                 2385 	.db #0x41
   0A12 00                 2386 	.db #0x00
   0A13 6D                 2387 	.db #0x6D
   0A14 00                 2388 	.db #0x00
   0A15 69                 2389 	.db #0x69
   0A16 00                 2390 	.db #0x00
   0A17 67                 2391 	.db #0x67
   0A18 00                 2392 	.db #0x00
   0A19 61                 2393 	.db #0x61
   0A1A 00                 2394 	.db #0x00
   0A1B 20                 2395 	.db #0x20
   0A1C 00                 2396 	.db #0x00
   0A1D 4B                 2397 	.db #0x4B
   0A1E 00                 2398 	.db #0x00
   0A1F 65                 2399 	.db #0x65
   0A20 00                 2400 	.db #0x00
   0A21 79                 2401 	.db #0x79
   0A22 00                 2402 	.db #0x00
   0A23 62                 2403 	.db #0x62
   0A24 00                 2404 	.db #0x00
   0A25 6F                 2405 	.db #0x6F
   0A26 00                 2406 	.db #0x00
   0A27 61                 2407 	.db #0x61
   0A28 00                 2408 	.db #0x00
   0A29 72                 2409 	.db #0x72
   0A2A 00                 2410 	.db #0x00
   0A2B 64                 2411 	.db #0x64
   0A2C 00                 2412 	.db #0x00
   0A2D 20                 2413 	.db #0x20
   0A2E 00                 2414 	.db #0x00
   0A2F 48                 2415 	.db #0x48
   0A30 00                 2416 	.db #0x00
   0A31 49                 2417 	.db #0x49
   0A32 00                 2418 	.db #0x00
   0A33 44                 2419 	.db #0x44
   0A34 00                 2420 	.db #0x00
   0A35 20                 2421 	.db #0x20
   0A36 00                 2422 	.db #0x00
   0A37 44                 2423 	.db #0x44
   0A38 00                 2424 	.db #0x00
   0A39 72                 2425 	.db #0x72
   0A3A 00                 2426 	.db #0x00
   0A3B 69                 2427 	.db #0x69
   0A3C 00                 2428 	.db #0x00
   0A3D 76                 2429 	.db #0x76
   0A3E 00                 2430 	.db #0x00
   0A3F 65                 2431 	.db #0x65
   0A40 00                 2432 	.db #0x00
   0A41 72                 2433 	.db #0x72
   0A42 00                 2434 	.db #0x00
   0A43 2C                 2435 	.db #0x2C
   0A44 00                 2436 	.db #0x00
   0A45 20                 2437 	.db #0x20
   0A46 00                 2438 	.db #0x00
   0A47 46                 2439 	.db #0x46
   0A48 00                 2440 	.db #0x00
   0A49 69                 2441 	.db #0x69
   0A4A 00                 2442 	.db #0x00
   0A4B 72                 2443 	.db #0x72
   0A4C 00                 2444 	.db #0x00
   0A4D 6D                 2445 	.db #0x6D
   0A4E 00                 2446 	.db #0x00
   0A4F 77                 2447 	.db #0x77
   0A50 00                 2448 	.db #0x00
   0A51 61                 2449 	.db #0x61
   0A52 00                 2450 	.db #0x00
   0A53 72                 2451 	.db #0x72
   0A54 00                 2452 	.db #0x00
   0A55 65                 2453 	.db #0x65
   0A56 00                 2454 	.db #0x00
   0A57 20                 2455 	.db #0x20
   0A58 00                 2456 	.db #0x00
   0A59 43                 2457 	.db #0x43
   0A5A 00                 2458 	.db #0x00
   0A5B 6F                 2459 	.db #0x6F
   0A5C 00                 2460 	.db #0x00
   0A5D 70                 2461 	.db #0x70
   0A5E 00                 2462 	.db #0x00
   0A5F 79                 2463 	.db #0x79
   0A60 00                 2464 	.db #0x00
   0A61 72                 2465 	.db #0x72
   0A62 00                 2466 	.db #0x00
   0A63 69                 2467 	.db #0x69
   0A64 00                 2468 	.db #0x00
   0A65 67                 2469 	.db #0x67
   0A66 00                 2470 	.db #0x00
   0A67 68                 2471 	.db #0x68
   0A68 00                 2472 	.db #0x00
   0A69 74                 2473 	.db #0x74
   0A6A 00                 2474 	.db #0x00
   0A6B 20                 2475 	.db #0x20
   0A6C 00                 2476 	.db #0x00
   0A6D 28                 2477 	.db #0x28
   0A6E 00                 2478 	.db #0x00
   0A6F 63                 2479 	.db #0x63
   0A70 00                 2480 	.db #0x00
   0A71 29                 2481 	.db #0x29
   0A72 00                 2482 	.db #0x00
   0A73 20                 2483 	.db #0x20
   0A74 00                 2484 	.db #0x00
   0A75 32                 2485 	.db #0x32
   0A76 00                 2486 	.db #0x00
   0A77 30                 2487 	.db #0x30
   0A78 00                 2488 	.db #0x00
   0A79 30                 2489 	.db #0x30
   0A7A 00                 2490 	.db #0x00
   0A7B 33                 2491 	.db #0x33
   0A7C 00                 2492 	.db #0x00
   0A7D 20                 2493 	.db #0x20
   0A7E 00                 2494 	.db #0x00
   0A7F 41                 2495 	.db #0x41
   0A80 00                 2496 	.db #0x00
   0A81 72                 2497 	.db #0x72
   0A82 00                 2498 	.db #0x00
   0A83 6E                 2499 	.db #0x6E
   0A84 00                 2500 	.db #0x00
   0A85 69                 2501 	.db #0x69
   0A86 00                 2502 	.db #0x00
   0A87 6D                 2503 	.db #0x6D
   0A88 00                 2504 	.db #0x00
   0A89 20                 2505 	.db #0x20
   0A8A 00                 2506 	.db #0x00
   0A8B 4C                 2507 	.db #0x4C
   0A8C 00                 2508 	.db #0x00
   0A8D 61                 2509 	.db #0x61
   0A8E 00                 2510 	.db #0x00
   0A8F 65                 2511 	.db #0x65
   0A90 00                 2512 	.db #0x00
   0A91 75                 2513 	.db #0x75
   0A92 00                 2514 	.db #0x00
   0A93 67                 2515 	.db #0x67
   0A94 00                 2516 	.db #0x00
   0A95 65                 2517 	.db #0x65
   0A96 00                 2518 	.db #0x00
   0A97 72                 2519 	.db #0x72
   0A98 00                 2520 	.db #0x00
                           2521 	.area XINIT   (CODE)
