                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.5.0 #1020 (May  8 2005)
                              4 ; This file generated Sat Jun 24 00:55:49 2006
                              5 ;--------------------------------------------------------
                              6 	.module nerd
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _update_nerd_status_PARM_2
                             13 	.globl __sdcc_external_startup
                             14 	.globl _EUSB
                             15 	.globl _SMOD1
                             16 	.globl _TF2
                             17 	.globl _TR2
                             18 	.globl _TI_1
                             19 	.globl _RI_1
                             20 	.globl _ES1
                             21 	.globl _ET2
                             22 	.globl _ES0
                             23 	.globl _TI_0
                             24 	.globl _RI_0
                             25 	.globl _CY
                             26 	.globl _AC
                             27 	.globl _F0
                             28 	.globl _RS1
                             29 	.globl _RS0
                             30 	.globl _OV
                             31 	.globl _F1
                             32 	.globl _P
                             33 	.globl _PS
                             34 	.globl _PT1
                             35 	.globl _PX1
                             36 	.globl _PT0
                             37 	.globl _PX0
                             38 	.globl _RD
                             39 	.globl _WR
                             40 	.globl _T1
                             41 	.globl _T0
                             42 	.globl _INT1
                             43 	.globl _INT0
                             44 	.globl _TXD
                             45 	.globl _RXD
                             46 	.globl _P3_7
                             47 	.globl _P3_6
                             48 	.globl _P3_5
                             49 	.globl _P3_4
                             50 	.globl _P3_3
                             51 	.globl _P3_2
                             52 	.globl _P3_1
                             53 	.globl _P3_0
                             54 	.globl _EA
                             55 	.globl _ES
                             56 	.globl _ET1
                             57 	.globl _EX1
                             58 	.globl _ET0
                             59 	.globl _EX0
                             60 	.globl _P2_7
                             61 	.globl _P2_6
                             62 	.globl _P2_5
                             63 	.globl _P2_4
                             64 	.globl _P2_3
                             65 	.globl _P2_2
                             66 	.globl _P2_1
                             67 	.globl _P2_0
                             68 	.globl _SM0
                             69 	.globl _SM1
                             70 	.globl _SM2
                             71 	.globl _REN
                             72 	.globl _TB8
                             73 	.globl _RB8
                             74 	.globl _TI
                             75 	.globl _RI
                             76 	.globl _P1_7
                             77 	.globl _P1_6
                             78 	.globl _P1_5
                             79 	.globl _P1_4
                             80 	.globl _P1_3
                             81 	.globl _P1_2
                             82 	.globl _P1_1
                             83 	.globl _P1_0
                             84 	.globl _TF1
                             85 	.globl _TR1
                             86 	.globl _TF0
                             87 	.globl _TR0
                             88 	.globl _IE1
                             89 	.globl _IT1
                             90 	.globl _IE0
                             91 	.globl _IT0
                             92 	.globl _P0_7
                             93 	.globl _P0_6
                             94 	.globl _P0_5
                             95 	.globl _P0_4
                             96 	.globl _P0_3
                             97 	.globl _P0_2
                             98 	.globl _P0_1
                             99 	.globl _P0_0
                            100 	.globl _EIP
                            101 	.globl _EIE
                            102 	.globl _EICON
                            103 	.globl _TH2
                            104 	.globl _TL2
                            105 	.globl _RCAP2H
                            106 	.globl _RCAP2L
                            107 	.globl _T2CON
                            108 	.globl _SBUF1
                            109 	.globl _SCON1
                            110 	.globl _SBUF0
                            111 	.globl _SCON0
                            112 	.globl _MPAGE
                            113 	.globl _EXIF
                            114 	.globl _CKCON
                            115 	.globl _DPS
                            116 	.globl _DPH1
                            117 	.globl _DPL1
                            118 	.globl _DPH0
                            119 	.globl _DPL0
                            120 	.globl _B
                            121 	.globl _ACC
                            122 	.globl _PSW
                            123 	.globl _IP
                            124 	.globl _P3
                            125 	.globl _IE
                            126 	.globl _P2
                            127 	.globl _SBUF
                            128 	.globl _SCON
                            129 	.globl _P1
                            130 	.globl _TH1
                            131 	.globl _TH0
                            132 	.globl _TL1
                            133 	.globl _TL0
                            134 	.globl _TMOD
                            135 	.globl _TCON
                            136 	.globl _PCON
                            137 	.globl _DPH
                            138 	.globl _DPL
                            139 	.globl _SP
                            140 	.globl _P0
                            141 	.globl _ScanWith
                            142 	.globl _Report
                            143 	.globl _SendOld
                            144 	.globl _SendTmp
                            145 	.globl _SendCurr
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
                            209 	.globl _NerdStat
                            210 	.globl _ModSave
                            211 	.globl _MapSet
                            212 	.globl _UpdatedKeys
                            213 	.globl _ScanBuf
                            214 	.globl _adjust_mod_PARM_3
                            215 	.globl _adjust_mod_PARM_2
                            216 	.globl _ScanCode
                            217 	.globl _core_apply_reset_values
                            218 	.globl _main
                            219 ;--------------------------------------------------------
                            220 ; special function registers
                            221 ;--------------------------------------------------------
                            222 	.area RSEG    (DATA)
                    0080    223 _P0	=	0x0080
                    0081    224 _SP	=	0x0081
                    0082    225 _DPL	=	0x0082
                    0083    226 _DPH	=	0x0083
                    0087    227 _PCON	=	0x0087
                    0088    228 _TCON	=	0x0088
                    0089    229 _TMOD	=	0x0089
                    008A    230 _TL0	=	0x008a
                    008B    231 _TL1	=	0x008b
                    008C    232 _TH0	=	0x008c
                    008D    233 _TH1	=	0x008d
                    0090    234 _P1	=	0x0090
                    0098    235 _SCON	=	0x0098
                    0099    236 _SBUF	=	0x0099
                    00A0    237 _P2	=	0x00a0
                    00A8    238 _IE	=	0x00a8
                    00B0    239 _P3	=	0x00b0
                    00B8    240 _IP	=	0x00b8
                    00D0    241 _PSW	=	0x00d0
                    00E0    242 _ACC	=	0x00e0
                    00F0    243 _B	=	0x00f0
                    0082    244 _DPL0	=	0x0082
                    0083    245 _DPH0	=	0x0083
                    0084    246 _DPL1	=	0x0084
                    0085    247 _DPH1	=	0x0085
                    0086    248 _DPS	=	0x0086
                    008E    249 _CKCON	=	0x008e
                    0091    250 _EXIF	=	0x0091
                    0092    251 _MPAGE	=	0x0092
                    0098    252 _SCON0	=	0x0098
                    0099    253 _SBUF0	=	0x0099
                    00C0    254 _SCON1	=	0x00c0
                    00C1    255 _SBUF1	=	0x00c1
                    00C8    256 _T2CON	=	0x00c8
                    00CA    257 _RCAP2L	=	0x00ca
                    00CB    258 _RCAP2H	=	0x00cb
                    00CC    259 _TL2	=	0x00cc
                    00CD    260 _TH2	=	0x00cd
                    00D8    261 _EICON	=	0x00d8
                    00E8    262 _EIE	=	0x00e8
                    00F8    263 _EIP	=	0x00f8
                            264 ;--------------------------------------------------------
                            265 ; special function bits 
                            266 ;--------------------------------------------------------
                            267 	.area RSEG    (DATA)
                    0080    268 _P0_0	=	0x0080
                    0081    269 _P0_1	=	0x0081
                    0082    270 _P0_2	=	0x0082
                    0083    271 _P0_3	=	0x0083
                    0084    272 _P0_4	=	0x0084
                    0085    273 _P0_5	=	0x0085
                    0086    274 _P0_6	=	0x0086
                    0087    275 _P0_7	=	0x0087
                    0088    276 _IT0	=	0x0088
                    0089    277 _IE0	=	0x0089
                    008A    278 _IT1	=	0x008a
                    008B    279 _IE1	=	0x008b
                    008C    280 _TR0	=	0x008c
                    008D    281 _TF0	=	0x008d
                    008E    282 _TR1	=	0x008e
                    008F    283 _TF1	=	0x008f
                    0090    284 _P1_0	=	0x0090
                    0091    285 _P1_1	=	0x0091
                    0092    286 _P1_2	=	0x0092
                    0093    287 _P1_3	=	0x0093
                    0094    288 _P1_4	=	0x0094
                    0095    289 _P1_5	=	0x0095
                    0096    290 _P1_6	=	0x0096
                    0097    291 _P1_7	=	0x0097
                    0098    292 _RI	=	0x0098
                    0099    293 _TI	=	0x0099
                    009A    294 _RB8	=	0x009a
                    009B    295 _TB8	=	0x009b
                    009C    296 _REN	=	0x009c
                    009D    297 _SM2	=	0x009d
                    009E    298 _SM1	=	0x009e
                    009F    299 _SM0	=	0x009f
                    00A0    300 _P2_0	=	0x00a0
                    00A1    301 _P2_1	=	0x00a1
                    00A2    302 _P2_2	=	0x00a2
                    00A3    303 _P2_3	=	0x00a3
                    00A4    304 _P2_4	=	0x00a4
                    00A5    305 _P2_5	=	0x00a5
                    00A6    306 _P2_6	=	0x00a6
                    00A7    307 _P2_7	=	0x00a7
                    00A8    308 _EX0	=	0x00a8
                    00A9    309 _ET0	=	0x00a9
                    00AA    310 _EX1	=	0x00aa
                    00AB    311 _ET1	=	0x00ab
                    00AC    312 _ES	=	0x00ac
                    00AF    313 _EA	=	0x00af
                    00B0    314 _P3_0	=	0x00b0
                    00B1    315 _P3_1	=	0x00b1
                    00B2    316 _P3_2	=	0x00b2
                    00B3    317 _P3_3	=	0x00b3
                    00B4    318 _P3_4	=	0x00b4
                    00B5    319 _P3_5	=	0x00b5
                    00B6    320 _P3_6	=	0x00b6
                    00B7    321 _P3_7	=	0x00b7
                    00B0    322 _RXD	=	0x00b0
                    00B1    323 _TXD	=	0x00b1
                    00B2    324 _INT0	=	0x00b2
                    00B3    325 _INT1	=	0x00b3
                    00B4    326 _T0	=	0x00b4
                    00B5    327 _T1	=	0x00b5
                    00B6    328 _WR	=	0x00b6
                    00B7    329 _RD	=	0x00b7
                    00B8    330 _PX0	=	0x00b8
                    00B9    331 _PT0	=	0x00b9
                    00BA    332 _PX1	=	0x00ba
                    00BB    333 _PT1	=	0x00bb
                    00BC    334 _PS	=	0x00bc
                    00D0    335 _P	=	0x00d0
                    00D1    336 _F1	=	0x00d1
                    00D2    337 _OV	=	0x00d2
                    00D3    338 _RS0	=	0x00d3
                    00D4    339 _RS1	=	0x00d4
                    00D5    340 _F0	=	0x00d5
                    00D6    341 _AC	=	0x00d6
                    00D7    342 _CY	=	0x00d7
                    0098    343 _RI_0	=	0x0098
                    0099    344 _TI_0	=	0x0099
                    00AC    345 _ES0	=	0x00ac
                    00AD    346 _ET2	=	0x00ad
                    00AE    347 _ES1	=	0x00ae
                    00C0    348 _RI_1	=	0x00c0
                    00C1    349 _TI_1	=	0x00c1
                    00CA    350 _TR2	=	0x00ca
                    00CF    351 _TF2	=	0x00cf
                    00DF    352 _SMOD1	=	0x00df
                    00E8    353 _EUSB	=	0x00e8
                            354 ;--------------------------------------------------------
                            355 ; overlayable register banks 
                            356 ;--------------------------------------------------------
                            357 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     358 	.ds 8
                            359 	.area REG_BANK_1	(REL,OVR,DATA)
   0008                     360 	.ds 8
                            361 	.area REG_BANK_2	(REL,OVR,DATA)
   0010                     362 	.ds 8
                            363 	.area REG_BANK_3	(REL,OVR,DATA)
   0018                     364 	.ds 8
                            365 ;--------------------------------------------------------
                            366 ; internal ram data
                            367 ;--------------------------------------------------------
                            368 	.area DSEG    (DATA)
   0021                     369 _ScanCode::
   0021                     370 	.ds 1
   0022                     371 _enq_report_buf_1_1::
   0022                     372 	.ds 3
   0025                     373 _enq_report_next_1_1::
   0025                     374 	.ds 1
   0026                     375 _adjust_mod_PARM_2::
   0026                     376 	.ds 1
   0027                     377 _adjust_mod_PARM_3::
   0027                     378 	.ds 1
   0028                     379 _nerd_loop_sw_1_1::
   0028                     380 	.ds 1
   0029                     381 _nerd_loop_mod_stat_1_1::
   0029                     382 	.ds 1
   002A                     383 _nerd_loop_sloc0_1_0::
   002A                     384 	.ds 2
   002C                     385 _EnqPreSend_wait_1_1::
   002C                     386 	.ds 4
                            387 ;--------------------------------------------------------
                            388 ; overlayable items in internal ram 
                            389 ;--------------------------------------------------------
                            390 	.area	OSEG    (OVR,DATA)
   0035                     391 _init_interrupt_timer0_val_1_1::
   0035                     392 	.ds 1
                            393 	.area	OSEG    (OVR,DATA)
   0035                     394 _update_nerd_status_PARM_2::
   0035                     395 	.ds 1
                            396 	.area	OSEG    (OVR,DATA)
                            397 	.area	OSEG    (OVR,DATA)
                            398 	.area	OSEG    (OVR,DATA)
                            399 	.area	OSEG    (OVR,DATA)
                            400 	.area	OSEG    (OVR,DATA)
                            401 	.area	OSEG    (OVR,DATA)
                            402 	.area	OSEG    (OVR,DATA)
                            403 	.area	OSEG    (OVR,DATA)
                            404 ;--------------------------------------------------------
                            405 ; Stack segment in internal ram 
                            406 ;--------------------------------------------------------
                            407 	.area	SSEG	(DATA)
   009C                     408 __start__stack:
   009C                     409 	.ds	1
                            410 
                            411 ;--------------------------------------------------------
                            412 ; indirectly addressable internal ram data
                            413 ;--------------------------------------------------------
                            414 	.area ISEG    (DATA)
   0037                     415 _ScanBuf::
   0037                     416 	.ds 64
   0077                     417 _UpdatedKeys::
   0077                     418 	.ds 34
   0099                     419 _MapSet::
   0099                     420 	.ds 1
   009A                     421 _ModSave::
   009A                     422 	.ds 1
   009B                     423 _NerdStat::
   009B                     424 	.ds 1
                            425 ;--------------------------------------------------------
                            426 ; bit data
                            427 ;--------------------------------------------------------
                            428 	.area BSEG    (BIT)
                            429 ;--------------------------------------------------------
                            430 ; paged external ram data
                            431 ;--------------------------------------------------------
                            432 	.area PSEG    (PAG,XDATA)
                            433 ;--------------------------------------------------------
                            434 ; external ram data
                            435 ;--------------------------------------------------------
                            436 	.area XSEG    (XDATA)
                    7FB4    437 _EP0CS	=	0x7fb4
                    7F00    438 _IN0BUF	=	0x7f00
                    7FB5    439 _IN0BC	=	0x7fb5
                    7EC0    440 _OUT0BUF	=	0x7ec0
                    7FC5    441 _OUT0BC	=	0x7fc5
                    7FB6    442 _IN1CS	=	0x7fb6
                    7E80    443 _IN1BUF	=	0x7e80
                    7FB7    444 _IN1BC	=	0x7fb7
                    7E40    445 _OUT1BUF	=	0x7e40
                    7FC6    446 _OUT1CS	=	0x7fc6
                    7FC7    447 _OUT1BC	=	0x7fc7
                    7E00    448 _IN2BUF	=	0x7e00
                    7FB9    449 _IN2BC	=	0x7fb9
                    7FB8    450 _IN2CS	=	0x7fb8
                    7FC9    451 _OUT2BC	=	0x7fc9
                    7FC8    452 _OUT2CS	=	0x7fc8
                    7DC0    453 _OUT2BUF	=	0x7dc0
                    7D80    454 _IN3BUF	=	0x7d80
                    7D40    455 _OUT3BUF	=	0x7d40
                    7FBA    456 _IN3CS	=	0x7fba
                    7FBB    457 _IN3BC	=	0x7fbb
                    7FCA    458 _OUT3CS	=	0x7fca
                    7FCB    459 _OUT3BC	=	0x7fcb
                    7D00    460 _IN4BUF	=	0x7d00
                    7CC0    461 _OUT4BUF	=	0x7cc0
                    7FBC    462 _IN4CS	=	0x7fbc
                    7FCC    463 _OUT4CS	=	0x7fcc
                    7FBD    464 _IN4BC	=	0x7fbd
                    7FCD    465 _OUT4BC	=	0x7fcd
                    7F9C    466 _OEA	=	0x7f9c
                    7F96    467 _OUTA	=	0x7f96
                    7F99    468 _PINSA	=	0x7f99
                    7F9D    469 _OEB	=	0x7f9d
                    7F97    470 _OUTB	=	0x7f97
                    7F9A    471 _PINSB	=	0x7f9a
                    7F9E    472 _OEC	=	0x7f9e
                    7F98    473 _OUTC	=	0x7f98
                    7F9B    474 _PINSC	=	0x7f9b
                    7F93    475 _PORTACFG	=	0x7f93
                    7F94    476 _PORTBCFG	=	0x7f94
                    7F95    477 _PORTCCFG	=	0x7f95
                    7FA1    478 _ISOCTL	=	0x7fa1
                    7FA9    479 _IN07IRQ	=	0x7fa9
                    7FAA    480 _OUT07IRQ	=	0x7faa
                    7FAC    481 _IN07IEN	=	0x7fac
                    7FAD    482 _OUT07IEN	=	0x7fad
                    7FAB    483 _USBIRQ	=	0x7fab
                    7FAE    484 _USBIEN	=	0x7fae
                    7FDD    485 _USBPAIR	=	0x7fdd
                    7FAF    486 _USBBAV	=	0x7faf
                    7FD6    487 _USBCS	=	0x7fd6
                    7FD7    488 _TOGCTL	=	0x7fd7
                    7FD4    489 _SUDPTRH	=	0x7fd4
                    7FD5    490 _SUDPTRL	=	0x7fd5
                    7FE8    491 _SETUPDAT	=	0x7fe8
                    7FA5    492 _I2CS	=	0x7fa5
                    7FA6    493 _I2DAT	=	0x7fa6
                    7FDE    494 _IN07VAL	=	0x7fde
                    7FDF    495 _OUT07VAL	=	0x7fdf
                    7FE2    496 _FASTXFR	=	0x7fe2
                    7FE3    497 _AUTOPTRH	=	0x7fe3
                    7FE4    498 _AUTOPTRL	=	0x7fe4
                    7FE5    499 _AUTODATA	=	0x7fe5
   1C00                     500 _SendCurr::
   1C00                     501 	.ds 8
   1C08                     502 _SendTmp::
   1C08                     503 	.ds 8
   1C10                     504 _SendOld::
   1C10                     505 	.ds 8
   1C18                     506 _Report::
   1C18                     507 	.ds 66
   1C5A                     508 _ScanWith::
   1C5A                     509 	.ds 6
                            510 ;--------------------------------------------------------
                            511 ; external initialized ram data
                            512 ;--------------------------------------------------------
                            513 	.area XISEG   (XDATA)
                            514 	.area CSEG    (CODE)
                            515 	.area GSINIT0 (CODE)
                            516 	.area GSINIT1 (CODE)
                            517 	.area GSINIT2 (CODE)
                            518 	.area GSINIT3 (CODE)
                            519 	.area GSINIT4 (CODE)
                            520 	.area GSINIT5 (CODE)
                            521 ;--------------------------------------------------------
                            522 ; interrupt vector 
                            523 ;--------------------------------------------------------
                            524 	.area CSEG    (CODE)
   0000                     525 __interrupt_vect:
   0000 02 14 7E            526 	ljmp	__sdcc_gsinit_startup
   0003 32                  527 	reti
   0004                     528 	.ds	7
   000B 02 00 4B            529 	ljmp	_isr_timer0
   000E                     530 	.ds	5
   0013 32                  531 	reti
   0014                     532 	.ds	7
   001B 32                  533 	reti
   001C                     534 	.ds	7
   0023 32                  535 	reti
   0024                     536 	.ds	7
   002B 02 00 E2            537 	ljmp	_isr_timer2
   002E                     538 	.ds	5
   0033 02 12 B1            539 	ljmp	_isr_resume
   0036                     540 	.ds	5
   003B 32                  541 	reti
   003C                     542 	.ds	7
   0043 02 0E 72            543 	ljmp	_isr_usb
                            544 ;--------------------------------------------------------
                            545 ; global & static initialisations
                            546 ;--------------------------------------------------------
                            547 	.area CSEG    (CODE)
                            548 	.area GSINIT  (CODE)
                            549 	.area GSFINAL (CODE)
                            550 	.area GSINIT  (CODE)
                            551 	.globl __sdcc_gsinit_startup
                            552 	.globl __sdcc_program_startup
                            553 	.globl __start__stack
                            554 	.globl __mcs51_genXINIT
                            555 	.globl __mcs51_genXRAMCLEAR
                            556 	.globl __mcs51_genRAMCLEAR
                            557 	.area GSFINAL (CODE)
   14DD 02 00 46            558 	ljmp	__sdcc_program_startup
                            559 ;--------------------------------------------------------
                            560 ; Home
                            561 ;--------------------------------------------------------
                            562 	.area HOME    (CODE)
                            563 	.area CSEG    (CODE)
                            564 ;--------------------------------------------------------
                            565 ; code
                            566 ;--------------------------------------------------------
                            567 	.area CSEG    (CODE)
   0046                     568 __sdcc_program_startup:
   0046 12 09 DE            569 	lcall	_main
                            570 ;	return from main will lock up
   0049 80 FE               571 	sjmp .
                            572 ;------------------------------------------------------------
                            573 ;Allocation info for local variables in function 'isr_timer0'
                            574 ;------------------------------------------------------------
                            575 ;sw                        Allocated to registers r2 
                            576 ;next                      Allocated to registers r4 
                            577 ;------------------------------------------------------------
                            578 ;nerd.c:111: static void isr_timer0(void) interrupt 1 using 0 critical
                            579 ;	-----------------------------------------
                            580 ;	 function isr_timer0
                            581 ;	-----------------------------------------
   004B                     582 _isr_timer0:
                    0002    583 	ar2 = 0x02
                    0003    584 	ar3 = 0x03
                    0004    585 	ar4 = 0x04
                    0005    586 	ar5 = 0x05
                    0006    587 	ar6 = 0x06
                    0007    588 	ar7 = 0x07
                    0000    589 	ar0 = 0x00
                    0001    590 	ar1 = 0x01
   004B C0 E0               591 	push	acc
   004D C0 82               592 	push	dpl
   004F C0 83               593 	push	dph
   0051 C0 02               594 	push	ar2
   0053 C0 03               595 	push	ar3
   0055 C0 04               596 	push	ar4
   0057 C0 05               597 	push	ar5
   0059 C0 00               598 	push	ar0
   005B C0 D0               599 	push	psw
   005D 75 D0 00            600 	mov	psw,#0x00
   0060 D3                  601 	setb	c
   0061 10 AF 01            602 	jbc	ea,00109$
   0064 C3                  603 	clr	c
   0065                     604 00109$:
   0065 C0 D0               605 	push	psw
                            606 ;nerd.c:118: TR0 = 0;						/* stop timer0		*/
                            607 ;     genAssign
   0067 C2 8C               608 	clr	_TR0
                            609 ;nerd.c:120: ScanCode = ++ScanCode & 0x3F;	/* 0..64			*/
                            610 ;     genPlus
                            611 ;     genPlusIncr
   0069 05 21               612 	inc	_ScanCode
                            613 ;     genAnd
   006B 53 21 3F            614 	anl	_ScanCode,#0x3F
                            615 ;nerd.c:121: OUTC = ScanCode | 0x40;			/* 01xx_xxxx:PC6 hi */
                            616 ;     genOr
   006E 90 7F 98            617 	mov	dptr,#_OUTC
   0071 74 40               618 	mov	a,#0x40
   0073 45 21               619 	orl	a,_ScanCode
   0075 F0                  620 	movx	@dptr,a
                            621 ;nerd.c:123: TL0 = TIMER0_LO;				/* reload counter	*/
                            622 ;     genAssign
   0076 75 8A 4F            623 	mov	_TL0,#0x4F
                            624 ;nerd.c:124: TH0 = TIMER0_HI;
                            625 ;     genAssign
   0079 75 8C FB            626 	mov	_TH0,#0xFB
                            627 ;nerd.c:126: TR0 = 1;						/* run timer0		*/
                            628 ;     genAssign
   007C D2 8C               629 	setb	_TR0
                            630 ;nerd.c:134: OUTC &= 0x3F;					/* 00xx_xxxx:PC6 lo */
                            631 ;     genAssign
                            632 ;     genAnd
                            633 ;	Peephole 248.b	optimized and to xdata
   007E 90 7F 98            634 	mov	dptr,#_OUTC
   0081 E0                  635 	movx	a,@dptr
   0082 FA                  636 	mov	r2,a
   0083 54 3F               637 	anl	a,#0x3F
   0085 F0                  638 	movx	@dptr,a
                            639 ;nerd.c:142: sw = PINSC & 0x80;				/* 1000_0000 PC7/sig- 0:press */
                            640 ;     genAssign
   0086 90 7F 9B            641 	mov	dptr,#_PINSC
   0089 E0                  642 	movx	a,@dptr
   008A FA                  643 	mov	r2,a
                            644 ;     genAnd
   008B 53 02 80            645 	anl	ar2,#0x80
                            646 ;nerd.c:143: OUTC |= 0x40;					/* 01xx_xxxx:PC6 hi */
                            647 ;     genAssign
                            648 ;     genOr
                            649 ;	Peephole 248.a	optimized or to xdata
   008E 90 7F 98            650 	mov	dptr,#_OUTC
   0091 E0                  651 	movx	a,@dptr
   0092 FB                  652 	mov	r3,a
   0093 44 40               653 	orl	a,#0x40
   0095 F0                  654 	movx	@dptr,a
                            655 ;nerd.c:145: if(sw != ScanBuf[ScanCode]) {
                            656 ;     genPlus
   0096 E5 21               657 	mov	a,_ScanCode
   0098 24 37               658 	add	a,#_ScanBuf
   009A F8                  659 	mov	r0,a
                            660 ;     genPointerGet
                            661 ;     genNearPointerGet
   009B 86 03               662 	mov	ar3,@r0
                            663 ;     genCmpEq
   009D EA                  664 	mov	a,r2
   009E B5 03 02            665 	cjne	a,ar3,00110$
                            666 ;	Peephole 112.b	changed ljmp to sjmp
   00A1 80 28               667 	sjmp	00105$
   00A3                     668 00110$:
                            669 ;nerd.c:147: ScanBuf[ScanCode] = sw; /* ﾊﾞｯﾌｧ更新 */
                            670 ;     genPointerSet
                            671 ;     genNearPointerSet
   00A3 A6 02               672 	mov	@r0,ar2
                            673 ;nerd.c:150: next = (UpdatedKeys.tail + 1) & (UPDATE_KEYS_MAX - 1);
                            674 ;     genPointerGet
                            675 ;     genNearPointerGet
   00A5 78 78               676 	mov	r0,#(_UpdatedKeys + 0x0001)
   00A7 86 03               677 	mov	ar3,@r0
                            678 ;     genPlus
                            679 ;     genPlusIncr
   00A9 74 01               680 	mov	a,#0x01
                            681 ;	Peephole 236.a	used r3 instead of ar3
   00AB 2B                  682 	add	a,r3
                            683 ;     genAnd
   00AC 54 0F               684 	anl	a,#0x0F
   00AE FC                  685 	mov	r4,a
                            686 ;nerd.c:151: if(next != UpdatedKeys.head) {
                            687 ;     genPointerGet
                            688 ;     genNearPointerGet
   00AF 78 77               689 	mov	r0,#_UpdatedKeys
   00B1 86 05               690 	mov	ar5,@r0
                            691 ;     genCmpEq
   00B3 EC                  692 	mov	a,r4
   00B4 B5 05 02            693 	cjne	a,ar5,00111$
                            694 ;	Peephole 112.b	changed ljmp to sjmp
   00B7 80 12               695 	sjmp	00105$
   00B9                     696 00111$:
                            697 ;nerd.c:153: UpdatedKeys.dat[UpdatedKeys.tail].scan = ScanCode;
                            698 ;     genLeftShift
                            699 ;     genLeftShiftLiteral
                            700 ;     genlshOne
                            701 ;	Peephole 254	optimized left shift
   00B9 EB                  702 	mov	a,r3
   00BA 2B                  703 	add	a,r3
                            704 ;     genPlus
                            705 ;	Peephole 177.b	removed redundant mov
   00BB FB                  706 	mov	r3,a
   00BC 24 79               707 	add	a,#(_UpdatedKeys + 0x0002)
   00BE F8                  708 	mov	r0,a
                            709 ;     genPointerSet
                            710 ;     genNearPointerSet
   00BF A6 21               711 	mov	@r0,_ScanCode
                            712 ;nerd.c:154: UpdatedKeys.dat[UpdatedKeys.tail].sw = sw;
                            713 ;     genPlus
                            714 ;     genPlusIncr
   00C1 74 01               715 	mov	a,#0x01
                            716 ;	Peephole 236.a	used r0 instead of ar0
   00C3 28                  717 	add	a,r0
                            718 ;     genPointerSet
                            719 ;     genNearPointerSet
                            720 ;	Peephole 239	used a instead of acc
   00C4 F8                  721 	mov	r0,a
   00C5 A6 02               722 	mov	@r0,ar2
                            723 ;nerd.c:155: UpdatedKeys.tail = next;
                            724 ;     genPointerSet
                            725 ;     genNearPointerSet
   00C7 78 78               726 	mov	r0,#(_UpdatedKeys + 0x0001)
   00C9 A6 04               727 	mov	@r0,ar4
   00CB                     728 00105$:
   00CB D0 D0               729 	pop	psw
   00CD 92 AF               730 	mov	ea,c
   00CF D0 D0               731 	pop	psw
   00D1 D0 00               732 	pop	ar0
   00D3 D0 05               733 	pop	ar5
   00D5 D0 04               734 	pop	ar4
   00D7 D0 03               735 	pop	ar3
   00D9 D0 02               736 	pop	ar2
   00DB D0 83               737 	pop	dph
   00DD D0 82               738 	pop	dpl
   00DF D0 E0               739 	pop	acc
   00E1 32                  740 	reti
                            741 ;	eliminated unneeded push/pop ar1
                            742 ;	eliminated unneeded push/pop b
                            743 ;------------------------------------------------------------
                            744 ;Allocation info for local variables in function 'isr_timer2'
                            745 ;------------------------------------------------------------
                            746 ;i                         Allocated to registers r4 
                            747 ;------------------------------------------------------------
                            748 ;nerd.c:167: static void isr_timer2(void) interrupt 5 using 3
                            749 ;	-----------------------------------------
                            750 ;	 function isr_timer2
                            751 ;	-----------------------------------------
   00E2                     752 _isr_timer2:
                    001A    753 	ar2 = 0x1a
                    001B    754 	ar3 = 0x1b
                    001C    755 	ar4 = 0x1c
                    001D    756 	ar5 = 0x1d
                    001E    757 	ar6 = 0x1e
                    001F    758 	ar7 = 0x1f
                    0018    759 	ar0 = 0x18
                    0019    760 	ar1 = 0x19
   00E2 C0 E0               761 	push	acc
   00E4 C0 F0               762 	push	b
   00E6 C0 82               763 	push	dpl
   00E8 C0 83               764 	push	dph
   00EA C0 D0               765 	push	psw
   00EC 75 D0 18            766 	mov	psw,#0x18
                            767 ;nerd.c:173: TF2 = 0;
                            768 ;     genIfx
                            769 ;     genIfxJump
                            770 ;	Peephole 112.a	removed ljmp by inverse jump logic
   00EF 20 CF 03            771 	jb	_TF2,00102$
   00F2                     772 00128$:
                            773 ;nerd.c:171: if(TF2 == 0) return;
                            774 ;     genRet
   00F2 02 01 6A            775 	ljmp	00117$
   00F5                     776 00102$:
                            777 ;nerd.c:173: TF2 = 0;
                            778 ;     genAssign
   00F5 C2 CF               779 	clr	_TF2
                            780 ;     genIfx
                            781 ;     genIfxJump
                            782 ;	Peephole 112.a	removed ljmp by inverse jump logic
   00F7 20 02 0B            783 	jb	_kbd_idle_mode,00110$
   00FA                     784 00129$:
                            785 ;nerd.c:177: if(--kbd_idle_counter == 0) {
                            786 ;     genMinus
                            787 ;     genMinusDec
   00FA 15 31               788 	dec	_kbd_idle_counter
                            789 ;     genCmpEq
   00FC E5 31               790 	mov	a,_kbd_idle_counter
                            791 ;	Peephole 162	removed sjmp by inverse jump logic
   00FE 60 02               792 	jz	00131$
   0100                     793 00130$:
                            794 ;	Peephole 112.b	changed ljmp to sjmp
   0100 80 03               795 	sjmp	00110$
   0102                     796 00131$:
                            797 ;nerd.c:178: kbd_idle_counter = kbd_idle_duration; /* reload counter */
                            798 ;     genAssign
   0102 85 30 31            799 	mov	_kbd_idle_counter,_kbd_idle_duration
                            800 ;nerd.c:182: while(Report.head != Report.tail) {
   0105                     801 00110$:
                            802 ;     genPointerGet
                            803 ;     genFarPointerGet
   0105 90 1C 18            804 	mov	dptr,#_Report
   0108 E0                  805 	movx	a,@dptr
   0109 FA                  806 	mov	r2,a
                            807 ;     genPointerGet
                            808 ;     genFarPointerGet
   010A 90 1C 19            809 	mov	dptr,#(_Report + 0x0001)
   010D E0                  810 	movx	a,@dptr
   010E FB                  811 	mov	r3,a
                            812 ;     genCmpEq
   010F EA                  813 	mov	a,r2
   0110 B5 1B 02            814 	cjne	a,ar3,00132$
                            815 ;	Peephole 112.b	changed ljmp to sjmp
   0113 80 55               816 	sjmp	00117$
   0115                     817 00132$:
                            818 ;nerd.c:185: kbd_idle_counter = kbd_idle_duration;	  /* reload counter */
                            819 ;     genAssign
   0115 85 30 31            820 	mov	_kbd_idle_counter,_kbd_idle_duration
                            821 ;nerd.c:188: while(in1_busy == TRUE) ;
   0118                     822 00107$:
                            823 ;     genIfx
                            824 ;     genIfxJump
                            825 ;	Peephole 112.a	removed ljmp by inverse jump logic
   0118 20 01 FD            826 	jb	_in1_busy,00107$
   011B                     827 00133$:
                            828 ;nerd.c:191: for(i=0; i<KBD_REPORT_SIZE; i++) {
                            829 ;     genMult
                            830 ;     genMultOneByte
   011B EA                  831 	mov	a,r2
   011C 75 F0 08            832 	mov	b,#0x08
   011F A4                  833 	mul	ab
                            834 ;     genPlus
   0120 24 1A               835 	add	a,#(_Report + 0x0002)
   0122 FA                  836 	mov	r2,a
   0123 74 1C               837 	mov	a,#((_Report + 0x0002) >> 8)
   0125 35 F0               838 	addc	a,b
   0127 FB                  839 	mov	r3,a
                            840 ;     genAssign
   0128 7C 00               841 	mov	r4,#0x00
   012A                     842 00113$:
                            843 ;     genCmpLt
                            844 ;     genCmp
   012A BC 08 00            845 	cjne	r4,#0x08,00134$
   012D                     846 00134$:
                            847 ;     genIfxJump
                            848 ;	Peephole 108	removed ljmp by inverse jump logic
   012D 50 1E               849 	jnc	00116$
   012F                     850 00135$:
                            851 ;nerd.c:192: in1buf(i) = Report.rep[Report.head].dat[i];
                            852 ;     genPlus
                            853 ;	Peephole 236.g	used r4 instead of ar4
   012F EC                  854 	mov	a,r4
   0130 24 80               855 	add	a,#_IN1BUF
   0132 FD                  856 	mov	r5,a
                            857 ;	Peephole 181	changed mov to clr
   0133 E4                  858 	clr	a
   0134 34 7E               859 	addc	a,#(_IN1BUF >> 8)
   0136 FE                  860 	mov	r6,a
                            861 ;     genCast
   0137 8C 1F               862 	mov	ar7,r4
   0139 78 00               863 	mov	r0,#0x00
                            864 ;     genPlus
                            865 ;	Peephole 236.g	used r7 instead of ar7
   013B EF                  866 	mov	a,r7
                            867 ;	Peephole 236.a	used r2 instead of ar2
   013C 2A                  868 	add	a,r2
   013D F5 82               869 	mov	dpl,a
                            870 ;	Peephole 236.g	used r0 instead of ar0
   013F E8                  871 	mov	a,r0
                            872 ;	Peephole 236.b	used r3 instead of ar3
   0140 3B                  873 	addc	a,r3
   0141 F5 83               874 	mov	dph,a
                            875 ;     genPointerGet
                            876 ;     genFarPointerGet
   0143 E0                  877 	movx	a,@dptr
                            878 ;     genPointerSet
                            879 ;     genFarPointerSet
                            880 ;	Peephole 136	removed redundant moves
   0144 FF                  881 	mov	r7,a
   0145 8D 82               882 	mov	dpl,r5
   0147 8E 83               883 	mov	dph,r6
   0149 F0                  884 	movx	@dptr,a
                            885 ;nerd.c:191: for(i=0; i<KBD_REPORT_SIZE; i++) {
                            886 ;     genPlus
                            887 ;     genPlusIncr
   014A 0C                  888 	inc	r4
                            889 ;	Peephole 112.b	changed ljmp to sjmp
   014B 80 DD               890 	sjmp	00113$
   014D                     891 00116$:
                            892 ;nerd.c:194: Report.head = (++Report.head) & (REPORT_QUE_MAX - 1);
                            893 ;     genPointerGet
                            894 ;     genFarPointerGet
   014D 90 1C 18            895 	mov	dptr,#_Report
   0150 E0                  896 	movx	a,@dptr
                            897 ;     genPlus
                            898 ;     genPlusIncr
                            899 ;	Peephole 185	changed order of increment (acc incremented also!)
   0151 04                  900 	inc	a
   0152 FA                  901 	mov	r2,a
                            902 ;     genPointerSet
                            903 ;     genFarPointerSet
   0153 90 1C 18            904 	mov	dptr,#_Report
   0156 EA                  905 	mov	a,r2
   0157 F0                  906 	movx	@dptr,a
                            907 ;     genAnd
   0158 53 1A 07            908 	anl	ar2,#0x07
                            909 ;     genPointerSet
                            910 ;     genFarPointerSet
   015B 90 1C 18            911 	mov	dptr,#_Report
   015E EA                  912 	mov	a,r2
   015F F0                  913 	movx	@dptr,a
                            914 ;nerd.c:197: in1_busy = TRUE;
                            915 ;     genAssign
   0160 D2 01               916 	setb	_in1_busy
                            917 ;nerd.c:198: IN1BC = KBD_REPORT_SIZE;
                            918 ;     genAssign
   0162 90 7F B7            919 	mov	dptr,#_IN1BC
   0165 74 08               920 	mov	a,#0x08
   0167 F0                  921 	movx	@dptr,a
                            922 ;	Peephole 112.b	changed ljmp to sjmp
   0168 80 9B               923 	sjmp	00110$
   016A                     924 00117$:
   016A D0 D0               925 	pop	psw
   016C D0 83               926 	pop	dph
   016E D0 82               927 	pop	dpl
   0170 D0 F0               928 	pop	b
   0172 D0 E0               929 	pop	acc
   0174 32                  930 	reti
                            931 ;------------------------------------------------------------
                            932 ;Allocation info for local variables in function 'init_mcu'
                            933 ;------------------------------------------------------------
                            934 ;------------------------------------------------------------
                            935 ;nerd.c:212: static void init_mcu(void)
                            936 ;	-----------------------------------------
                            937 ;	 function init_mcu
                            938 ;	-----------------------------------------
   0175                     939 _init_mcu:
                    0002    940 	ar2 = 0x02
                    0003    941 	ar3 = 0x03
                    0004    942 	ar4 = 0x04
                    0005    943 	ar5 = 0x05
                    0006    944 	ar6 = 0x06
                    0007    945 	ar7 = 0x07
                    0000    946 	ar0 = 0x00
                    0001    947 	ar1 = 0x01
                            948 ;nerd.c:215: IP	= 0x02;					/* hi: timer0 */
                            949 ;     genAssign
   0175 75 B8 02            950 	mov	_IP,#0x02
                            951 ;nerd.c:216: EIP = 0x01;					/* hi: USB	  */
                            952 ;     genAssign
   0178 75 F8 01            953 	mov	_EIP,#0x01
                            954 ;nerd.c:219: OEA = 0xFF;					/* 1111_1111 */
                            955 ;     genAssign
   017B 90 7F 9C            956 	mov	dptr,#_OEA
   017E 74 FF               957 	mov	a,#0xFF
   0180 F0                  958 	movx	@dptr,a
                            959 ;nerd.c:224: OEB = 0xB0;					/* 1011_0000 */
                            960 ;     genAssign
   0181 90 7F 9D            961 	mov	dptr,#_OEB
   0184 74 B0               962 	mov	a,#0xB0
   0186 F0                  963 	movx	@dptr,a
                            964 ;nerd.c:226: PORTBCFG = 0x0C;			/* 0000_1100: use TXD1, RXD */
                            965 ;     genAssign
   0187 90 7F 94            966 	mov	dptr,#_PORTBCFG
   018A 74 0C               967 	mov	a,#0x0C
   018C F0                  968 	movx	@dptr,a
                            969 ;nerd.c:231: OEC = 0x7F;					/* 0111_1111 */
                            970 ;     genAssign
   018D 90 7F 9E            971 	mov	dptr,#_OEC
   0190 74 7F               972 	mov	a,#0x7F
   0192 F0                  973 	movx	@dptr,a
   0193                     974 00101$:
   0193 22                  975 	ret
                            976 ;------------------------------------------------------------
                            977 ;Allocation info for local variables in function 'init_interrupt_timer0'
                            978 ;------------------------------------------------------------
                            979 ;val                       Allocated with name '_init_interrupt_timer0_val_1_1'
                            980 ;------------------------------------------------------------
                            981 ;nerd.c:239: static void init_interrupt_timer0(void)
                            982 ;	-----------------------------------------
                            983 ;	 function init_interrupt_timer0
                            984 ;	-----------------------------------------
   0194                     985 _init_interrupt_timer0:
                            986 ;nerd.c:243: TR0 = 0;					/* stop timer0				*/
                            987 ;     genAssign
   0194 C2 8C               988 	clr	_TR0
                            989 ;nerd.c:244: TF0 = 0;					/* disable timer0 interrupt */
                            990 ;     genAssign
   0196 C2 8D               991 	clr	_TF0
                            992 ;nerd.c:245: ET0 = 0;
                            993 ;     genAssign
   0198 C2 A9               994 	clr	_ET0
                            995 ;nerd.c:252: val = TMOD;					/* timer mode register */
                            996 ;     genAssign
   019A 85 89 35            997 	mov	_init_interrupt_timer0_val_1_1,_TMOD
                            998 ;nerd.c:255: val &= 0xF0;				/* clear bits of timer0(lo-nibble) */
                            999 ;     genAnd
   019D 53 35 F0           1000 	anl	_init_interrupt_timer0_val_1_1,#0xF0
                           1001 ;nerd.c:256: val |= 0x01;				/* select mode 1				   */
                           1002 ;     genOr
   01A0 43 35 01           1003 	orl	_init_interrupt_timer0_val_1_1,#0x01
                           1004 ;nerd.c:257: TMOD = val;
                           1005 ;     genAssign
   01A3 85 35 89           1006 	mov	_TMOD,_init_interrupt_timer0_val_1_1
                           1007 ;nerd.c:262: CKCON |= 0x08;		/* 0000_x000: (T0M) clock source is CLK/24/4 */
                           1008 ;     genOr
   01A6 43 8E 08           1009 	orl	_CKCON,#0x08
                           1010 ;nerd.c:264: TL0 = TIMER0_LO;			/* initialize counter */
                           1011 ;     genAssign
   01A9 75 8A 4F           1012 	mov	_TL0,#0x4F
                           1013 ;nerd.c:265: TH0 = TIMER0_HI;
                           1014 ;     genAssign
   01AC 75 8C FB           1015 	mov	_TH0,#0xFB
                           1016 ;nerd.c:267: ET0 = 1;					/* enable timer0 interrupt	   */
                           1017 ;     genAssign
   01AF D2 A9              1018 	setb	_ET0
                           1019 ;nerd.c:268: TF0 = 0;					/* clear timer0 interrupt flag */
                           1020 ;     genAssign
   01B1 C2 8D              1021 	clr	_TF0
                           1022 ;nerd.c:269: TR0 = 1;					/* run timer0				   */
                           1023 ;     genAssign
   01B3 D2 8C              1024 	setb	_TR0
   01B5                    1025 00101$:
   01B5 22                 1026 	ret
                           1027 ;------------------------------------------------------------
                           1028 ;Allocation info for local variables in function 'init_interrupt_timer2'
                           1029 ;------------------------------------------------------------
                           1030 ;------------------------------------------------------------
                           1031 ;nerd.c:276: static void init_interrupt_timer2(void)
                           1032 ;	-----------------------------------------
                           1033 ;	 function init_interrupt_timer2
                           1034 ;	-----------------------------------------
   01B6                    1035 _init_interrupt_timer2:
                           1036 ;nerd.c:278: kbd_idle_counter = kbd_idle_duration; /* set idle counter */
                           1037 ;     genAssign
   01B6 85 30 31           1038 	mov	_kbd_idle_counter,_kbd_idle_duration
                           1039 ;nerd.c:285: T2CON  = 0x00;
                           1040 ;     genAssign
   01B9 75 C8 00           1041 	mov	_T2CON,#0x00
                           1042 ;nerd.c:286: RCAP2H = TH2 = 0xc1;
                           1043 ;     genAssign
   01BC 75 CD C1           1044 	mov	_TH2,#0xC1
                           1045 ;     genAssign
   01BF 75 CB C1           1046 	mov	_RCAP2H,#0xC1
                           1047 ;nerd.c:287: RCAP2L = TL2 = 0x80;
                           1048 ;     genAssign
   01C2 75 CC 80           1049 	mov	_TL2,#0x80
                           1050 ;     genAssign
   01C5 75 CA 80           1051 	mov	_RCAP2L,#0x80
                           1052 ;nerd.c:289: ET2 = 1;						/* enable timer2 interrupt	   */
                           1053 ;     genAssign
   01C8 D2 AD              1054 	setb	_ET2
                           1055 ;nerd.c:290: TF2 = 0;						/* clear timer2 interrupt flag */
                           1056 ;     genAssign
   01CA C2 CF              1057 	clr	_TF2
                           1058 ;nerd.c:291: TR2 = 1;						/* run timer2				   */
                           1059 ;     genAssign
   01CC D2 CA              1060 	setb	_TR2
   01CE                    1061 00101$:
   01CE 22                 1062 	ret
                           1063 ;------------------------------------------------------------
                           1064 ;Allocation info for local variables in function 'enq_report'
                           1065 ;------------------------------------------------------------
                           1066 ;buf                       Allocated with name '_enq_report_buf_1_1'
                           1067 ;i                         Allocated to registers r6 
                           1068 ;next                      Allocated with name '_enq_report_next_1_1'
                           1069 ;same_report               Allocated to registers r2 
                           1070 ;------------------------------------------------------------
                           1071 ;nerd.c:304: static bool enq_report(const uchar *buf)
                           1072 ;	-----------------------------------------
                           1073 ;	 function enq_report
                           1074 ;	-----------------------------------------
   01CF                    1075 _enq_report:
                           1076 ;     genReceive
   01CF 85 82 22           1077 	mov	_enq_report_buf_1_1,dpl
   01D2 85 83 23           1078 	mov	(_enq_report_buf_1_1 + 1),dph
   01D5 85 F0 24           1079 	mov	(_enq_report_buf_1_1 + 2),b
                           1080 ;nerd.c:309: same_report = TRUE;
                           1081 ;     genAssign
   01D8 7A 01              1082 	mov	r2,#0x01
                           1083 ;nerd.c:312: for(i=0; i<KBD_REPORT_SIZE; i++) {
                           1084 ;     genAssign
   01DA 7E 00              1085 	mov	r6,#0x00
   01DC                    1086 00103$:
                           1087 ;     genCmpLt
                           1088 ;     genCmp
   01DC BE 08 00           1089 	cjne	r6,#0x08,00124$
   01DF                    1090 00124$:
                           1091 ;     genIfxJump
                           1092 ;	Peephole 108	removed ljmp by inverse jump logic
   01DF 50 2D              1093 	jnc	00106$
   01E1                    1094 00125$:
                           1095 ;nerd.c:313: if(SendOld[i] == buf[i]) continue;
                           1096 ;     genPlus
                           1097 ;	Peephole 236.g	used r6 instead of ar6
   01E1 EE                 1098 	mov	a,r6
   01E2 24 10              1099 	add	a,#_SendOld
   01E4 F5 82              1100 	mov	dpl,a
                           1101 ;	Peephole 181	changed mov to clr
   01E6 E4                 1102 	clr	a
   01E7 34 1C              1103 	addc	a,#(_SendOld >> 8)
   01E9 F5 83              1104 	mov	dph,a
                           1105 ;     genPointerGet
                           1106 ;     genFarPointerGet
   01EB E0                 1107 	movx	a,@dptr
   01EC FF                 1108 	mov	r7,a
                           1109 ;     genPlus
                           1110 ;	Peephole 236.g	used r6 instead of ar6
   01ED EE                 1111 	mov	a,r6
   01EE 25 22              1112 	add	a,_enq_report_buf_1_1
   01F0 F8                 1113 	mov	r0,a
                           1114 ;	Peephole 181	changed mov to clr
   01F1 E4                 1115 	clr	a
   01F2 35 23              1116 	addc	a,(_enq_report_buf_1_1 + 1)
   01F4 F9                 1117 	mov	r1,a
   01F5 AD 24              1118 	mov	r5,(_enq_report_buf_1_1 + 2)
                           1119 ;     genPointerGet
                           1120 ;     genGenPointerGet
   01F7 88 82              1121 	mov	dpl,r0
   01F9 89 83              1122 	mov	dph,r1
   01FB 8D F0              1123 	mov	b,r5
   01FD 12 14 56           1124 	lcall	__gptrget
   0200 F8                 1125 	mov	r0,a
                           1126 ;     genCmpEq
   0201 EF                 1127 	mov	a,r7
   0202 B5 00 02           1128 	cjne	a,ar0,00126$
                           1129 ;	Peephole 112.b	changed ljmp to sjmp
   0205 80 04              1130 	sjmp	00105$
   0207                    1131 00126$:
                           1132 ;nerd.c:315: same_report = FALSE;
                           1133 ;     genAssign
   0207 7A 00              1134 	mov	r2,#0x00
                           1135 ;nerd.c:316: break;
                           1136 ;	Peephole 112.b	changed ljmp to sjmp
   0209 80 03              1137 	sjmp	00106$
   020B                    1138 00105$:
                           1139 ;nerd.c:312: for(i=0; i<KBD_REPORT_SIZE; i++) {
                           1140 ;     genPlus
                           1141 ;     genPlusIncr
   020B 0E                 1142 	inc	r6
                           1143 ;	Peephole 112.b	changed ljmp to sjmp
   020C 80 CE              1144 	sjmp	00103$
   020E                    1145 00106$:
                           1146 ;nerd.c:320: if(same_report == TRUE) return FALSE;
                           1147 ;     genCmpEq
                           1148 ;	Peephole 112.b	changed ljmp to sjmp
                           1149 ;	Peephole 199	optimized misc jump sequence
   020E BA 01 04           1150 	cjne	r2,#0x01,00108$
                           1151 ;00127$:
                           1152 ;	Peephole 200	removed redundant sjmp
   0211                    1153 00128$:
                           1154 ;     genRet
   0211 75 82 00           1155 	mov	dpl,#0x00
                           1156 ;	Peephole 251.a	replaced ljmp to ret with ret
   0214 22                 1157 	ret
   0215                    1158 00108$:
                           1159 ;nerd.c:322: next = (Report.tail + 1) & (REPORT_QUE_MAX - 1);
                           1160 ;     genPointerGet
                           1161 ;     genFarPointerGet
   0215 90 1C 19           1162 	mov	dptr,#(_Report + 0x0001)
   0218 E0                 1163 	movx	a,@dptr
   0219 FD                 1164 	mov	r5,a
                           1165 ;     genPlus
                           1166 ;     genPlusIncr
   021A 74 01              1167 	mov	a,#0x01
                           1168 ;	Peephole 236.a	used r5 instead of ar5
   021C 2D                 1169 	add	a,r5
                           1170 ;     genAnd
   021D 54 07              1171 	anl	a,#0x07
   021F F5 25              1172 	mov	_enq_report_next_1_1,a
                           1173 ;nerd.c:325: if(next == Report.head) return FALSE;
                           1174 ;     genPointerGet
                           1175 ;     genFarPointerGet
   0221 90 1C 18           1176 	mov	dptr,#_Report
   0224 E0                 1177 	movx	a,@dptr
   0225 FE                 1178 	mov	r6,a
                           1179 ;     genCmpEq
   0226 E5 25              1180 	mov	a,_enq_report_next_1_1
                           1181 ;	Peephole 112.b	changed ljmp to sjmp
                           1182 ;	Peephole 199	optimized misc jump sequence
   0228 B5 06 04           1183 	cjne	a,ar6,00123$
                           1184 ;00129$:
                           1185 ;	Peephole 200	removed redundant sjmp
   022B                    1186 00130$:
                           1187 ;     genRet
   022B 75 82 00           1188 	mov	dpl,#0x00
                           1189 ;nerd.c:327: for(i=0; i<KBD_REPORT_SIZE; i++) {
                           1190 ;	Peephole 112.b	changed ljmp to sjmp
                           1191 ;	Peephole 251.b	replaced sjmp to ret with ret
   022E 22                 1192 	ret
   022F                    1193 00123$:
                           1194 ;     genAssign
   022F 7E 00              1195 	mov	r6,#0x00
   0231                    1196 00111$:
                           1197 ;     genCmpLt
                           1198 ;     genCmp
   0231 BE 08 00           1199 	cjne	r6,#0x08,00131$
   0234                    1200 00131$:
                           1201 ;     genIfxJump
                           1202 ;	Peephole 108	removed ljmp by inverse jump logic
   0234 50 4E              1203 	jnc	00114$
   0236                    1204 00132$:
                           1205 ;nerd.c:328: Report.rep[Report.tail].dat[i] = SendOld[i] = buf[i];
                           1206 ;     genPointerGet
                           1207 ;     genFarPointerGet
   0236 90 1C 19           1208 	mov	dptr,#(_Report + 0x0001)
   0239 E0                 1209 	movx	a,@dptr
                           1210 ;     genMult
                           1211 ;     genMultOneByte
                           1212 ;	Peephole 105	removed redundant mov
   023A FF                 1213 	mov	r7,a
   023B 75 F0 08           1214 	mov	b,#0x08
   023E A4                 1215 	mul	ab
                           1216 ;     genPlus
   023F 24 1A              1217 	add	a,#(_Report + 0x0002)
   0241 FF                 1218 	mov	r7,a
   0242 74 1C              1219 	mov	a,#((_Report + 0x0002) >> 8)
   0244 35 F0              1220 	addc	a,b
   0246 F8                 1221 	mov	r0,a
                           1222 ;     genCast
   0247 8E 01              1223 	mov	ar1,r6
   0249 7D 00              1224 	mov	r5,#0x00
                           1225 ;     genPlus
                           1226 ;	Peephole 236.g	used r1 instead of ar1
   024B E9                 1227 	mov	a,r1
                           1228 ;	Peephole 236.a	used r7 instead of ar7
   024C 2F                 1229 	add	a,r7
   024D FF                 1230 	mov	r7,a
                           1231 ;	Peephole 236.g	used r5 instead of ar5
   024E ED                 1232 	mov	a,r5
                           1233 ;	Peephole 236.b	used r0 instead of ar0
   024F 38                 1234 	addc	a,r0
   0250 F8                 1235 	mov	r0,a
                           1236 ;     genPlus
                           1237 ;	Peephole 236.g	used r6 instead of ar6
   0251 EE                 1238 	mov	a,r6
   0252 24 10              1239 	add	a,#_SendOld
   0254 FD                 1240 	mov	r5,a
                           1241 ;	Peephole 181	changed mov to clr
   0255 E4                 1242 	clr	a
   0256 34 1C              1243 	addc	a,#(_SendOld >> 8)
   0258 F9                 1244 	mov	r1,a
                           1245 ;     genPlus
                           1246 ;	Peephole 236.g	used r6 instead of ar6
   0259 EE                 1247 	mov	a,r6
   025A 25 22              1248 	add	a,_enq_report_buf_1_1
   025C FA                 1249 	mov	r2,a
                           1250 ;	Peephole 181	changed mov to clr
   025D E4                 1251 	clr	a
   025E 35 23              1252 	addc	a,(_enq_report_buf_1_1 + 1)
   0260 FB                 1253 	mov	r3,a
   0261 AC 24              1254 	mov	r4,(_enq_report_buf_1_1 + 2)
                           1255 ;     genPointerGet
                           1256 ;     genGenPointerGet
   0263 8A 82              1257 	mov	dpl,r2
   0265 8B 83              1258 	mov	dph,r3
   0267 8C F0              1259 	mov	b,r4
   0269 12 14 56           1260 	lcall	__gptrget
                           1261 ;     genPointerSet
                           1262 ;     genFarPointerSet
                           1263 ;	Peephole 136	removed redundant moves
   026C FA                 1264 	mov	r2,a
   026D 8D 82              1265 	mov	dpl,r5
   026F 89 83              1266 	mov	dph,r1
   0271 F0                 1267 	movx	@dptr,a
                           1268 ;     genPointerSet
                           1269 ;     genFarPointerSet
   0272 8F 82              1270 	mov	dpl,r7
   0274 88 83              1271 	mov	dph,r0
   0276 EA                 1272 	mov	a,r2
   0277 F0                 1273 	movx	@dptr,a
                           1274 ;nerd.c:330: __debug_out(buf[i]);
                           1275 ;     genCall
   0278 8A 82              1276 	mov	dpl,r2
   027A C0 06              1277 	push	ar6
   027C 12 14 0F           1278 	lcall	_PutChar
   027F D0 06              1279 	pop	ar6
                           1280 ;nerd.c:327: for(i=0; i<KBD_REPORT_SIZE; i++) {
                           1281 ;     genPlus
                           1282 ;     genPlusIncr
   0281 0E                 1283 	inc	r6
                           1284 ;	Peephole 112.b	changed ljmp to sjmp
   0282 80 AD              1285 	sjmp	00111$
   0284                    1286 00114$:
                           1287 ;nerd.c:333: Report.tail = next; /* ﾗｲﾄﾎﾟｲﾝﾀ更新 */
                           1288 ;     genPointerSet
                           1289 ;     genFarPointerSet
   0284 90 1C 19           1290 	mov	dptr,#(_Report + 0x0001)
   0287 E5 25              1291 	mov	a,_enq_report_next_1_1
   0289 F0                 1292 	movx	@dptr,a
                           1293 ;nerd.c:335: return TRUE;
                           1294 ;     genRet
   028A 75 82 01           1295 	mov	dpl,#0x01
   028D                    1296 00115$:
   028D 22                 1297 	ret
                           1298 ;------------------------------------------------------------
                           1299 ;Allocation info for local variables in function 'get_map_num'
                           1300 ;------------------------------------------------------------
                           1301 ;------------------------------------------------------------
                           1302 ;nerd.c:343: static uchar get_map_num(void)
                           1303 ;	-----------------------------------------
                           1304 ;	 function get_map_num
                           1305 ;	-----------------------------------------
   028E                    1306 _get_map_num:
                           1307 ;nerd.c:345: if(NerdStat >= KEYMAP_NLOCK) return KEYMAP_NLOCK; /* with Nerd Lock */
                           1308 ;     genCmpLt
   028E 78 9B              1309 	mov	r0,#_NerdStat
                           1310 ;     genCmp
   0290 B6 05 00           1311 	cjne	@r0,#0x05,00109$
   0293                    1312 00109$:
                           1313 ;     genIfxJump
                           1314 ;	Peephole 112.b	changed ljmp to sjmp
                           1315 ;	Peephole 160	removed sjmp by inverse jump logic
   0293 40 04              1316 	jc	00102$
   0295                    1317 00110$:
                           1318 ;     genRet
   0295 75 82 05           1319 	mov	dpl,#0x05
                           1320 ;	Peephole 112.b	changed ljmp to sjmp
                           1321 ;	Peephole 251.b	replaced sjmp to ret with ret
   0298 22                 1322 	ret
   0299                    1323 00102$:
                           1324 ;nerd.c:346: if(NerdStat >= KEYMAP_NFUNC) return KEYMAP_NFUNC; /* with Nerd Func */
                           1325 ;     genCmpLt
   0299 78 9B              1326 	mov	r0,#_NerdStat
                           1327 ;     genCmp
   029B B6 04 00           1328 	cjne	@r0,#0x04,00111$
   029E                    1329 00111$:
                           1330 ;     genIfxJump
                           1331 ;	Peephole 112.b	changed ljmp to sjmp
                           1332 ;	Peephole 160	removed sjmp by inverse jump logic
   029E 40 04              1333 	jc	00104$
   02A0                    1334 00112$:
                           1335 ;     genRet
   02A0 75 82 04           1336 	mov	dpl,#0x04
                           1337 ;	Peephole 112.b	changed ljmp to sjmp
                           1338 ;	Peephole 251.b	replaced sjmp to ret with ret
   02A3 22                 1339 	ret
   02A4                    1340 00104$:
                           1341 ;nerd.c:348: return NerdStat;
                           1342 ;     genRet
   02A4 78 9B              1343 	mov	r0,#_NerdStat
   02A6 86 82              1344 	mov	dpl,@r0
   02A8                    1345 00105$:
   02A8 22                 1346 	ret
                           1347 ;------------------------------------------------------------
                           1348 ;Allocation info for local variables in function 'update_nerd_status'
                           1349 ;------------------------------------------------------------
                           1350 ;sw                        Allocated with name '_update_nerd_status_PARM_2'
                           1351 ;usage_id                  Allocated to registers r2 
                           1352 ;stat                      Allocated to registers r2 
                           1353 ;mask                      Allocated to registers r4 
                           1354 ;ret                       Allocated to registers r3 
                           1355 ;------------------------------------------------------------
                           1356 ;nerd.c:358: static bool update_nerd_status(const uchar usage_id, const uchar sw)
                           1357 ;	-----------------------------------------
                           1358 ;	 function update_nerd_status
                           1359 ;	-----------------------------------------
   02A9                    1360 _update_nerd_status:
                           1361 ;     genReceive
   02A9 AA 82              1362 	mov	r2,dpl
                           1363 ;nerd.c:362: ret = FALSE;
                           1364 ;     genAssign
   02AB 7B 00              1365 	mov	r3,#0x00
                           1366 ;nerd.c:365: if((usage_id < USID_NERD_START) || (usage_id > USID_NERD_END)) return ret;
                           1367 ;     genCmpLt
                           1368 ;     genCmp
   02AD BA E9 00           1369 	cjne	r2,#0xE9,00120$
   02B0                    1370 00120$:
                           1371 ;     genIfxJump
                           1372 ;	Peephole 112.b	changed ljmp to sjmp
                           1373 ;	Peephole 160	removed sjmp by inverse jump logic
   02B0 40 05              1374 	jc	00101$
   02B2                    1375 00121$:
                           1376 ;     genCmpGt
                           1377 ;     genCmp
                           1378 ;     genIfxJump
                           1379 ;	Peephole 108	removed ljmp by inverse jump logic
                           1380 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   02B2 EA                 1381 	mov	a,r2
   02B3 24 13              1382 	add	a,#0xff - 0xEC
   02B5 50 04              1383 	jnc	00102$
   02B7                    1384 00122$:
   02B7                    1385 00101$:
                           1386 ;     genRet
   02B7 75 82 00           1387 	mov	dpl,#0x00
                           1388 ;	Peephole 112.b	changed ljmp to sjmp
                           1389 ;	Peephole 251.b	replaced sjmp to ret with ret
   02BA 22                 1390 	ret
   02BB                    1391 00102$:
                           1392 ;nerd.c:367: mask = 1 << ((usage_id & 0x07) - 1);
                           1393 ;     genAnd
   02BB 74 07              1394 	mov	a,#0x07
   02BD 5A                 1395 	anl	a,r2
   02BE FC                 1396 	mov	r4,a
                           1397 ;     genCast
   02BF 7D 00              1398 	mov	r5,#0x00
                           1399 ;     genMinus
                           1400 ;     genMinusDec
   02C1 1C                 1401 	dec	r4
   02C2 BC FF 01           1402 	cjne	r4,#0xff,00123$
   02C5 1D                 1403 	dec	r5
   02C6                    1404 00123$:
                           1405 ;     genLeftShift
   02C6 8C F0              1406 	mov	b,r4
   02C8 05 F0              1407 	inc	b
   02CA 7C 01              1408 	mov	r4,#0x01
   02CC 7D 00              1409 	mov	r5,#0x00
   02CE 80 06              1410 	sjmp	00125$
   02D0                    1411 00124$:
                           1412 ;	Peephole 254	optimized left shift
   02D0 EC                 1413 	mov	a,r4
   02D1 2C                 1414 	add	a,r4
   02D2 FC                 1415 	mov	r4,a
   02D3 ED                 1416 	mov	a,r5
   02D4 33                 1417 	rlc	a
   02D5 FD                 1418 	mov	r5,a
   02D6                    1419 00125$:
   02D6 D5 F0 F7           1420 	djnz	b,00124$
                           1421 ;     genCast
                           1422 ;nerd.c:369: if(usage_id == USID_NERD_LOCK) {
                           1423 ;     genCmpEq
                           1424 ;	Peephole 112.b	changed ljmp to sjmp
                           1425 ;	Peephole 199	optimized misc jump sequence
   02D9 BA EC 1F           1426 	cjne	r2,#0xEC,00105$
                           1427 ;00126$:
                           1428 ;	Peephole 200	removed redundant sjmp
   02DC                    1429 00127$:
                           1430 ;nerd.c:371: stat = (sw != KEY_SW_PRESSED)? NerdStat ^ mask : NerdStat;
                           1431 ;     genCmpEq
   02DC E5 35              1432 	mov	a,_update_nerd_status_PARM_2
   02DE 70 04              1433 	jnz	00128$
   02E0 74 01              1434 	mov	a,#0x01
   02E2 80 01              1435 	sjmp	00129$
   02E4                    1436 00128$:
   02E4 E4                 1437 	clr	a
   02E5                    1438 00129$:
                           1439 ;     genNot
                           1440 ;	Peephole 105	removed redundant mov
   02E5 FA                 1441 	mov	r2,a
   02E6 B4 01 00           1442 	cjne	a,#0x01,00130$
   02E9                    1443 00130$:
   02E9 E4                 1444 	clr	a
   02EA 33                 1445 	rlc	a
                           1446 ;     genIfx
                           1447 ;	Peephole 105	removed redundant mov
   02EB FA                 1448 	mov	r2,a
                           1449 ;     genIfxJump
                           1450 ;	Peephole 110	removed ljmp by inverse jump logic
   02EC 60 07              1451 	jz	00111$
   02EE                    1452 00131$:
                           1453 ;     genXor
   02EE 78 9B              1454 	mov	r0,#_NerdStat
   02F0 EC                 1455 	mov	a,r4
   02F1 66                 1456 	xrl	a,@r0
   02F2 FA                 1457 	mov	r2,a
                           1458 ;	Peephole 112.b	changed ljmp to sjmp
   02F3 80 04              1459 	sjmp	00112$
   02F5                    1460 00111$:
                           1461 ;     genAssign
   02F5 78 9B              1462 	mov	r0,#_NerdStat
   02F7 86 02              1463 	mov	ar2,@r0
   02F9                    1464 00112$:
                           1465 ;     genAssign
                           1466 ;	Peephole 112.b	changed ljmp to sjmp
   02F9 80 16              1467 	sjmp	00106$
   02FB                    1468 00105$:
                           1469 ;nerd.c:374: stat = (sw == KEY_SW_PRESSED)? NerdStat | mask : NerdStat & ~mask;
                           1470 ;     genCmpEq
   02FB E5 35              1471 	mov	a,_update_nerd_status_PARM_2
                           1472 ;	Peephole 162	removed sjmp by inverse jump logic
   02FD 60 02              1473 	jz	00133$
   02FF                    1474 00132$:
                           1475 ;	Peephole 112.b	changed ljmp to sjmp
   02FF 80 07              1476 	sjmp	00113$
   0301                    1477 00133$:
                           1478 ;     genOr
   0301 78 9B              1479 	mov	r0,#_NerdStat
   0303 EC                 1480 	mov	a,r4
   0304 46                 1481 	orl	a,@r0
   0305 FD                 1482 	mov	r5,a
                           1483 ;	Peephole 112.b	changed ljmp to sjmp
   0306 80 07              1484 	sjmp	00114$
   0308                    1485 00113$:
                           1486 ;	genCpl
   0308 EC                 1487 	mov	a,r4
   0309 F4                 1488 	cpl	a
                           1489 ;     genAnd
                           1490 ;	Peephole 177.d	removed redundant move
   030A FC                 1491 	mov	r4,a
   030B 78 9B              1492 	mov	r0,#_NerdStat
   030D 56                 1493 	anl	a,@r0
   030E FD                 1494 	mov	r5,a
   030F                    1495 00114$:
                           1496 ;     genAssign
   030F 8D 02              1497 	mov	ar2,r5
   0311                    1498 00106$:
                           1499 ;nerd.c:377: if(NerdStat != stat) {
                           1500 ;     genCmpEq
   0311 78 9B              1501 	mov	r0,#_NerdStat
   0313 E6                 1502 	mov	a,@r0
   0314 B5 02 02           1503 	cjne	a,ar2,00134$
                           1504 ;	Peephole 112.b	changed ljmp to sjmp
   0317 80 06              1505 	sjmp	00108$
   0319                    1506 00134$:
                           1507 ;nerd.c:378: NerdStat = stat;	   /* 更新 */
                           1508 ;     genAssign
   0319 78 9B              1509 	mov	r0,#_NerdStat
   031B A6 02              1510 	mov	@r0,ar2
                           1511 ;nerd.c:379: ret = TRUE;
                           1512 ;     genAssign
   031D 7B 01              1513 	mov	r3,#0x01
   031F                    1514 00108$:
                           1515 ;nerd.c:382: return ret;
                           1516 ;     genRet
   031F 8B 82              1517 	mov	dpl,r3
   0321                    1518 00109$:
   0321 22                 1519 	ret
                           1520 ;------------------------------------------------------------
                           1521 ;Allocation info for local variables in function 'adjust_mod'
                           1522 ;------------------------------------------------------------
                           1523 ;new                       Allocated with name '_adjust_mod_PARM_2'
                           1524 ;stat                      Allocated with name '_adjust_mod_PARM_3'
                           1525 ;map_num                   Allocated to registers r2 
                           1526 ;ret                       Allocated to registers r2 
                           1527 ;curr                      Allocated to registers r3 
                           1528 ;cmd                       Allocated to registers r2 
                           1529 ;------------------------------------------------------------
                           1530 ;nerd.c:392: static uchar adjust_mod(uchar map_num, uchar new, uchar stat)
                           1531 ;	-----------------------------------------
                           1532 ;	 function adjust_mod
                           1533 ;	-----------------------------------------
   0322                    1534 _adjust_mod:
                           1535 ;     genReceive
   0322 AA 82              1536 	mov	r2,dpl
                           1537 ;nerd.c:396: __debug_out(map_num|0xD0);
                           1538 ;     genOr
   0324 74 D0              1539 	mov	a,#0xD0
   0326 4A                 1540 	orl	a,r2
   0327 F5 82              1541 	mov	dpl,a
                           1542 ;     genCall
   0329 C0 02              1543 	push	ar2
   032B 12 14 0F           1544 	lcall	_PutChar
   032E D0 02              1545 	pop	ar2
                           1546 ;nerd.c:397: __debug_out(new|0xE0);
                           1547 ;     genOr
   0330 74 E0              1548 	mov	a,#0xE0
   0332 45 26              1549 	orl	a,_adjust_mod_PARM_2
   0334 F5 82              1550 	mov	dpl,a
                           1551 ;     genCall
   0336 C0 02              1552 	push	ar2
   0338 12 14 0F           1553 	lcall	_PutChar
   033B D0 02              1554 	pop	ar2
                           1555 ;nerd.c:398: __debug_out(stat|0xF0);
                           1556 ;     genOr
   033D 74 F0              1557 	mov	a,#0xF0
   033F 45 27              1558 	orl	a,_adjust_mod_PARM_3
   0341 F5 82              1559 	mov	dpl,a
                           1560 ;     genCall
   0343 C0 02              1561 	push	ar2
   0345 12 14 0F           1562 	lcall	_PutChar
   0348 D0 02              1563 	pop	ar2
                           1564 ;nerd.c:400: curr = SendCurr[0];
                           1565 ;     genPointerGet
                           1566 ;     genFarPointerGet
   034A 90 1C 00           1567 	mov	dptr,#_SendCurr
   034D E0                 1568 	movx	a,@dptr
   034E FB                 1569 	mov	r3,a
                           1570 ;nerd.c:402: switch(map_num) {
                           1571 ;     genCmpGt
                           1572 ;     genCmp
                           1573 ;     genIfxJump
                           1574 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   034F EA                 1575 	mov	a,r2
   0350 24 FA              1576 	add	a,#0xff - 0x05
   0352 50 03              1577 	jnc	00154$
   0354 02 04 6E           1578 	ljmp	00137$
   0357                    1579 00154$:
                           1580 ;     genJumpTab
                           1581 ;	Peephole 254	optimized left shift
   0357 EA                 1582 	mov	a,r2
   0358 2A                 1583 	add	a,r2
   0359 2A                 1584 	add	a,r2
   035A 90 03 5E           1585 	mov	dptr,#00155$
   035D 73                 1586 	jmp	@a+dptr
   035E                    1587 00155$:
   035E 02 03 70           1588 	ljmp	00101$
   0361 02 03 C5           1589 	ljmp	00112$
   0364 02 04 16           1590 	ljmp	00123$
   0367 02 04 62           1591 	ljmp	00134$
   036A 02 04 66           1592 	ljmp	00135$
   036D 02 04 6A           1593 	ljmp	00136$
                           1594 ;nerd.c:403: case KEYMAP_PLAIN:			/* Plain (without Nerd X)				*/
   0370                    1595 00101$:
                           1596 ;nerd.c:404: switch(stat) {
                           1597 ;     genCmpGt
                           1598 ;     genCmp
                           1599 ;     genIfxJump
                           1600 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   0370 E5 27              1601 	mov	a,_adjust_mod_PARM_3
   0372 24 F8              1602 	add	a,#0xff - 0x07
                           1603 ;	Peephole 112.b	changed ljmp to sjmp
                           1604 ;	Peephole 160	removed sjmp by inverse jump logic
   0374 40 4A              1605 	jc	00110$
   0376                    1606 00156$:
                           1607 ;     genJumpTab
                           1608 ;	Peephole 254	optimized left shift
   0376 E5 27              1609 	mov	a,_adjust_mod_PARM_3
   0378 25 27              1610 	add	a,_adjust_mod_PARM_3
   037A 25 27              1611 	add	a,_adjust_mod_PARM_3
   037C 90 03 80           1612 	mov	dptr,#00157$
   037F 73                 1613 	jmp	@a+dptr
   0380                    1614 00157$:
   0380 02 03 98           1615 	ljmp	00102$
   0383 02 03 9D           1616 	ljmp	00103$
   0386 02 03 A2           1617 	ljmp	00104$
   0389 02 03 A7           1618 	ljmp	00105$
   038C 02 03 AC           1619 	ljmp	00106$
   038F 02 03 B1           1620 	ljmp	00107$
   0392 02 03 B6           1621 	ljmp	00108$
   0395 02 03 BB           1622 	ljmp	00109$
                           1623 ;nerd.c:405: case MODSTAT_MOD_PRESSED:		cmd = MODADJ_UPDATE;	break;
   0398                    1624 00102$:
                           1625 ;     genAssign
   0398 7A 01              1626 	mov	r2,#0x01
   039A 02 04 70           1627 	ljmp	00138$
                           1628 ;nerd.c:406: case MODSTAT_MOD_RELEASED:		cmd = MODADJ_UPDATE;	break;
   039D                    1629 00103$:
                           1630 ;     genAssign
   039D 7A 01              1631 	mov	r2,#0x01
   039F 02 04 70           1632 	ljmp	00138$
                           1633 ;nerd.c:407: case MODSTAT_INH_PRESSED:		cmd = MODADJ_NOTCHANGE;	break;
   03A2                    1634 00104$:
                           1635 ;     genAssign
   03A2 7A 00              1636 	mov	r2,#0x00
   03A4 02 04 70           1637 	ljmp	00138$
                           1638 ;nerd.c:408: case MODSTAT_INH_REL_NOT_FOUND:	cmd = MODADJ_NOTCHANGE;	break;
   03A7                    1639 00105$:
                           1640 ;     genAssign
   03A7 7A 00              1641 	mov	r2,#0x00
   03A9 02 04 70           1642 	ljmp	00138$
                           1643 ;nerd.c:409: case MODSTAT_INH_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
   03AC                    1644 00106$:
                           1645 ;     genAssign
   03AC 7A 00              1646 	mov	r2,#0x00
   03AE 02 04 70           1647 	ljmp	00138$
                           1648 ;nerd.c:410: case MODSTAT_GEN_PRESSED:		cmd = MODADJ_NOTCHANGE;	break;
   03B1                    1649 00107$:
                           1650 ;     genAssign
   03B1 7A 00              1651 	mov	r2,#0x00
   03B3 02 04 70           1652 	ljmp	00138$
                           1653 ;nerd.c:411: case MODSTAT_GEN_REL_NOT_FOUND: cmd = MODADJ_NOTCHANGE;	break;
   03B6                    1654 00108$:
                           1655 ;     genAssign
   03B6 7A 00              1656 	mov	r2,#0x00
   03B8 02 04 70           1657 	ljmp	00138$
                           1658 ;nerd.c:412: case MODSTAT_GEN_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
   03BB                    1659 00109$:
                           1660 ;     genAssign
   03BB 7A 00              1661 	mov	r2,#0x00
   03BD 02 04 70           1662 	ljmp	00138$
                           1663 ;nerd.c:413: default:						cmd = MODADJ_NOTCHANGE;
   03C0                    1664 00110$:
                           1665 ;     genAssign
   03C0 7A 00              1666 	mov	r2,#0x00
                           1667 ;nerd.c:415: break;
   03C2 02 04 70           1668 	ljmp	00138$
                           1669 ;nerd.c:416: case KEYMAP_NCTRL:			/* Nerd Control							*/
   03C5                    1670 00112$:
                           1671 ;nerd.c:417: switch(stat) {
                           1672 ;     genCmpGt
                           1673 ;     genCmp
                           1674 ;     genIfxJump
                           1675 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   03C5 E5 27              1676 	mov	a,_adjust_mod_PARM_3
   03C7 24 F8              1677 	add	a,#0xff - 0x07
                           1678 ;	Peephole 112.b	changed ljmp to sjmp
                           1679 ;	Peephole 160	removed sjmp by inverse jump logic
   03C9 40 47              1680 	jc	00121$
   03CB                    1681 00158$:
                           1682 ;     genJumpTab
                           1683 ;	Peephole 254	optimized left shift
   03CB E5 27              1684 	mov	a,_adjust_mod_PARM_3
   03CD 25 27              1685 	add	a,_adjust_mod_PARM_3
   03CF 25 27              1686 	add	a,_adjust_mod_PARM_3
   03D1 90 03 D5           1687 	mov	dptr,#00159$
   03D4 73                 1688 	jmp	@a+dptr
   03D5                    1689 00159$:
   03D5 02 03 ED           1690 	ljmp	00113$
   03D8 02 03 F2           1691 	ljmp	00114$
   03DB 02 03 F7           1692 	ljmp	00115$
   03DE 02 03 FC           1693 	ljmp	00116$
   03E1 02 04 01           1694 	ljmp	00117$
   03E4 02 04 06           1695 	ljmp	00118$
   03E7 02 04 0A           1696 	ljmp	00119$
   03EA 02 04 0E           1697 	ljmp	00120$
                           1698 ;nerd.c:418: case MODSTAT_MOD_PRESSED:		cmd = MODADJ_UPDATE;	break;
   03ED                    1699 00113$:
                           1700 ;     genAssign
   03ED 7A 01              1701 	mov	r2,#0x01
   03EF 02 04 70           1702 	ljmp	00138$
                           1703 ;nerd.c:419: case MODSTAT_MOD_RELEASED:		cmd = MODADJ_UPDATE;	break;
   03F2                    1704 00114$:
                           1705 ;     genAssign
   03F2 7A 01              1706 	mov	r2,#0x01
   03F4 02 04 70           1707 	ljmp	00138$
                           1708 ;nerd.c:420: case MODSTAT_INH_PRESSED:		cmd = MODADJ_REVERT;	break;
   03F7                    1709 00115$:
                           1710 ;     genAssign
   03F7 7A 02              1711 	mov	r2,#0x02
   03F9 02 04 70           1712 	ljmp	00138$
                           1713 ;nerd.c:421: case MODSTAT_INH_REL_NOT_FOUND:	cmd = MODADJ_NOTCHANGE;	break;
   03FC                    1714 00116$:
                           1715 ;     genAssign
   03FC 7A 00              1716 	mov	r2,#0x00
   03FE 02 04 70           1717 	ljmp	00138$
                           1718 ;nerd.c:422: case MODSTAT_INH_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
   0401                    1719 00117$:
                           1720 ;     genAssign
   0401 7A 00              1721 	mov	r2,#0x00
   0403 02 04 70           1722 	ljmp	00138$
                           1723 ;nerd.c:423: case MODSTAT_GEN_PRESSED:		cmd = MODADJ_RESET;		break;
   0406                    1724 00118$:
                           1725 ;     genAssign
   0406 7A 03              1726 	mov	r2,#0x03
                           1727 ;nerd.c:424: case MODSTAT_GEN_REL_NOT_FOUND:	cmd = MODADJ_NOTCHANGE;	break;
                           1728 ;	Peephole 112.b	changed ljmp to sjmp
   0408 80 66              1729 	sjmp	00138$
   040A                    1730 00119$:
                           1731 ;     genAssign
   040A 7A 00              1732 	mov	r2,#0x00
                           1733 ;nerd.c:425: case MODSTAT_GEN_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
                           1734 ;	Peephole 112.b	changed ljmp to sjmp
   040C 80 62              1735 	sjmp	00138$
   040E                    1736 00120$:
                           1737 ;     genAssign
   040E 7A 00              1738 	mov	r2,#0x00
                           1739 ;nerd.c:426: default:						cmd = MODADJ_NOTCHANGE;
                           1740 ;	Peephole 112.b	changed ljmp to sjmp
   0410 80 5E              1741 	sjmp	00138$
   0412                    1742 00121$:
                           1743 ;     genAssign
   0412 7A 00              1744 	mov	r2,#0x00
                           1745 ;nerd.c:428: break;
                           1746 ;nerd.c:429: case KEYMAP_NMETA:			/* Nerd Meta							*/
                           1747 ;	Peephole 112.b	changed ljmp to sjmp
   0414 80 5A              1748 	sjmp	00138$
   0416                    1749 00123$:
                           1750 ;nerd.c:430: switch(stat) {
                           1751 ;     genCmpGt
                           1752 ;     genCmp
                           1753 ;     genIfxJump
                           1754 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   0416 E5 27              1755 	mov	a,_adjust_mod_PARM_3
   0418 24 F8              1756 	add	a,#0xff - 0x07
                           1757 ;	Peephole 112.b	changed ljmp to sjmp
                           1758 ;	Peephole 160	removed sjmp by inverse jump logic
   041A 40 42              1759 	jc	00132$
   041C                    1760 00160$:
                           1761 ;     genJumpTab
                           1762 ;	Peephole 254	optimized left shift
   041C E5 27              1763 	mov	a,_adjust_mod_PARM_3
   041E 25 27              1764 	add	a,_adjust_mod_PARM_3
   0420 25 27              1765 	add	a,_adjust_mod_PARM_3
   0422 90 04 26           1766 	mov	dptr,#00161$
   0425 73                 1767 	jmp	@a+dptr
   0426                    1768 00161$:
   0426 02 04 3E           1769 	ljmp	00124$
   0429 02 04 42           1770 	ljmp	00125$
   042C 02 04 46           1771 	ljmp	00126$
   042F 02 04 4A           1772 	ljmp	00127$
   0432 02 04 4E           1773 	ljmp	00128$
   0435 02 04 52           1774 	ljmp	00129$
   0438 02 04 56           1775 	ljmp	00130$
   043B 02 04 5A           1776 	ljmp	00131$
                           1777 ;nerd.c:431: case MODSTAT_MOD_PRESSED:		cmd = MODADJ_UPDATE;	break;
   043E                    1778 00124$:
                           1779 ;     genAssign
   043E 7A 01              1780 	mov	r2,#0x01
                           1781 ;nerd.c:432: case MODSTAT_MOD_RELEASED:		cmd = MODADJ_UPDATE;	break;
                           1782 ;	Peephole 112.b	changed ljmp to sjmp
   0440 80 2E              1783 	sjmp	00138$
   0442                    1784 00125$:
                           1785 ;     genAssign
   0442 7A 01              1786 	mov	r2,#0x01
                           1787 ;nerd.c:433: case MODSTAT_INH_PRESSED:		cmd = MODADJ_REVERT;	break;
                           1788 ;	Peephole 112.b	changed ljmp to sjmp
   0444 80 2A              1789 	sjmp	00138$
   0446                    1790 00126$:
                           1791 ;     genAssign
   0446 7A 02              1792 	mov	r2,#0x02
                           1793 ;nerd.c:434: case MODSTAT_INH_REL_NOT_FOUND:	cmd = MODADJ_NOTCHANGE;	break;
                           1794 ;	Peephole 112.b	changed ljmp to sjmp
   0448 80 26              1795 	sjmp	00138$
   044A                    1796 00127$:
                           1797 ;     genAssign
   044A 7A 00              1798 	mov	r2,#0x00
                           1799 ;nerd.c:435: case MODSTAT_INH_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
                           1800 ;	Peephole 112.b	changed ljmp to sjmp
   044C 80 22              1801 	sjmp	00138$
   044E                    1802 00128$:
                           1803 ;     genAssign
   044E 7A 00              1804 	mov	r2,#0x00
                           1805 ;nerd.c:436: case MODSTAT_GEN_PRESSED:		cmd = MODADJ_RESET;		break;
                           1806 ;	Peephole 112.b	changed ljmp to sjmp
   0450 80 1E              1807 	sjmp	00138$
   0452                    1808 00129$:
                           1809 ;     genAssign
   0452 7A 03              1810 	mov	r2,#0x03
                           1811 ;nerd.c:437: case MODSTAT_GEN_REL_NOT_FOUND:	cmd = MODADJ_NOTCHANGE;	break;
                           1812 ;	Peephole 112.b	changed ljmp to sjmp
   0454 80 1A              1813 	sjmp	00138$
   0456                    1814 00130$:
                           1815 ;     genAssign
   0456 7A 00              1816 	mov	r2,#0x00
                           1817 ;nerd.c:438: case MODSTAT_GEN_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
                           1818 ;	Peephole 112.b	changed ljmp to sjmp
   0458 80 16              1819 	sjmp	00138$
   045A                    1820 00131$:
                           1821 ;     genAssign
   045A 7A 00              1822 	mov	r2,#0x00
                           1823 ;nerd.c:439: default:						cmd = MODADJ_NOTCHANGE;
                           1824 ;	Peephole 112.b	changed ljmp to sjmp
   045C 80 12              1825 	sjmp	00138$
   045E                    1826 00132$:
                           1827 ;     genAssign
   045E 7A 00              1828 	mov	r2,#0x00
                           1829 ;nerd.c:441: break;
                           1830 ;nerd.c:442: case KEYMAP_NCTRL_NMETA:	/* Nerd Control + Nerd Meta				*/
                           1831 ;	Peephole 112.b	changed ljmp to sjmp
   0460 80 0E              1832 	sjmp	00138$
   0462                    1833 00134$:
                           1834 ;nerd.c:443: cmd = MODADJ_UPDATE;
                           1835 ;     genAssign
   0462 7A 01              1836 	mov	r2,#0x01
                           1837 ;nerd.c:444: break;
                           1838 ;nerd.c:445: case KEYMAP_NFUNC:			/* Nerd Function						*/
                           1839 ;	Peephole 112.b	changed ljmp to sjmp
   0464 80 0A              1840 	sjmp	00138$
   0466                    1841 00135$:
                           1842 ;nerd.c:446: cmd = MODADJ_UPDATE;
                           1843 ;     genAssign
   0466 7A 01              1844 	mov	r2,#0x01
                           1845 ;nerd.c:447: break;
                           1846 ;nerd.c:448: case KEYMAP_NLOCK:			/* Nerd Lock							*/
                           1847 ;	Peephole 112.b	changed ljmp to sjmp
   0468 80 06              1848 	sjmp	00138$
   046A                    1849 00136$:
                           1850 ;nerd.c:449: cmd = MODADJ_UPDATE;
                           1851 ;     genAssign
   046A 7A 01              1852 	mov	r2,#0x01
                           1853 ;nerd.c:450: break;
                           1854 ;nerd.c:451: default:
                           1855 ;	Peephole 112.b	changed ljmp to sjmp
   046C 80 02              1856 	sjmp	00138$
   046E                    1857 00137$:
                           1858 ;nerd.c:452: cmd = MODADJ_UPDATE;
                           1859 ;     genAssign
   046E 7A 01              1860 	mov	r2,#0x01
                           1861 ;nerd.c:453: }
   0470                    1862 00138$:
                           1863 ;nerd.c:455: switch(cmd) {
                           1864 ;     genCmpGt
                           1865 ;     genCmp
                           1866 ;     genIfxJump
                           1867 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   0470 EA                 1868 	mov	a,r2
   0471 24 FA              1869 	add	a,#0xff - 0x05
                           1870 ;	Peephole 112.b	changed ljmp to sjmp
                           1871 ;	Peephole 160	removed sjmp by inverse jump logic
   0473 40 37              1872 	jc	00146$
   0475                    1873 00162$:
                           1874 ;     genJumpTab
                           1875 ;	Peephole 254	optimized left shift
   0475 EA                 1876 	mov	a,r2
   0476 2A                 1877 	add	a,r2
   0477 2A                 1878 	add	a,r2
   0478 90 04 7C           1879 	mov	dptr,#00163$
   047B 73                 1880 	jmp	@a+dptr
   047C                    1881 00163$:
   047C 02 04 8E           1882 	ljmp	00139$
   047F 02 04 92           1883 	ljmp	00140$
   0482 02 04 9A           1884 	ljmp	00141$
   0485 02 04 A0           1885 	ljmp	00142$
   0488 02 04 A4           1886 	ljmp	00143$
   048B 02 04 AC           1887 	ljmp	00144$
                           1888 ;nerd.c:456: case MODADJ_NOTCHANGE:	 /* 変更なし */
   048E                    1889 00139$:
                           1890 ;nerd.c:457: ret = curr;
                           1891 ;     genAssign
   048E 8B 02              1892 	mov	ar2,r3
                           1893 ;nerd.c:458: break;
                           1894 ;nerd.c:459: case MODADJ_UPDATE:		 /* 更新 */
                           1895 ;	Peephole 112.b	changed ljmp to sjmp
   0490 80 1A              1896 	sjmp	00146$
   0492                    1897 00140$:
                           1898 ;nerd.c:460: ModSave = ret = new;
                           1899 ;     genAssign
   0492 AA 26              1900 	mov	r2,_adjust_mod_PARM_2
                           1901 ;     genAssign
   0494 78 9A              1902 	mov	r0,#_ModSave
   0496 A6 02              1903 	mov	@r0,ar2
                           1904 ;nerd.c:461: break;
                           1905 ;nerd.c:462: case MODADJ_REVERT:		 /* UPDATEした時の値に戻す */
                           1906 ;	Peephole 112.b	changed ljmp to sjmp
   0498 80 12              1907 	sjmp	00146$
   049A                    1908 00141$:
                           1909 ;nerd.c:463: ret = ModSave;
                           1910 ;     genAssign
   049A 78 9A              1911 	mov	r0,#_ModSave
   049C 86 02              1912 	mov	ar2,@r0
                           1913 ;nerd.c:464: break;
                           1914 ;nerd.c:465: case MODADJ_RESET:		 /* ﾘｾｯﾄ */
                           1915 ;	Peephole 112.b	changed ljmp to sjmp
   049E 80 0C              1916 	sjmp	00146$
   04A0                    1917 00142$:
                           1918 ;nerd.c:467: ret = 0x00;
                           1919 ;     genAssign
   04A0 7A 00              1920 	mov	r2,#0x00
                           1921 ;nerd.c:468: break;
                           1922 ;nerd.c:469: case MODADJ_SAVE_RESET:	 /* 保存してﾘｾｯﾄする */
                           1923 ;	Peephole 112.b	changed ljmp to sjmp
   04A2 80 08              1924 	sjmp	00146$
   04A4                    1925 00143$:
                           1926 ;nerd.c:470: ModSave = new;
                           1927 ;     genAssign
   04A4 AB 26              1928 	mov	r3,_adjust_mod_PARM_2
                           1929 ;     genAssign
   04A6 78 9A              1930 	mov	r0,#_ModSave
   04A8 A6 03              1931 	mov	@r0,ar3
                           1932 ;nerd.c:471: ret = 0x00;
                           1933 ;     genAssign
   04AA 7A 00              1934 	mov	r2,#0x00
                           1935 ;nerd.c:472: case MODADJ_OTHER:
   04AC                    1936 00144$:
                           1937 ;nerd.c:474: }
   04AC                    1938 00146$:
                           1939 ;nerd.c:478: return ret;
                           1940 ;     genRet
   04AC 8A 82              1941 	mov	dpl,r2
   04AE                    1942 00147$:
   04AE 22                 1943 	ret
                           1944 ;------------------------------------------------------------
                           1945 ;Allocation info for local variables in function 'get_mapset_num'
                           1946 ;------------------------------------------------------------
                           1947 ;wait                      Allocated to registers r3 r4 
                           1948 ;scan                      Allocated to registers r5 
                           1949 ;sw                        Allocated to registers r6 
                           1950 ;ret                       Allocated to registers r2 
                           1951 ;------------------------------------------------------------
                           1952 ;nerd.c:486: static uchar get_mapset_num(void)
                           1953 ;	-----------------------------------------
                           1954 ;	 function get_mapset_num
                           1955 ;	-----------------------------------------
   04AF                    1956 _get_mapset_num:
                           1957 ;nerd.c:491: __debug_hi();
                           1958 ;     genAssign
                           1959 ;     genOr
                           1960 ;	Peephole 248.a	optimized or to xdata
   04AF 90 7F 96           1961 	mov	dptr,#_OUTA
   04B2 E0                 1962 	movx	a,@dptr
   04B3 FA                 1963 	mov	r2,a
   04B4 44 10              1964 	orl	a,#0x10
   04B6 F0                 1965 	movx	@dptr,a
                           1966 ;nerd.c:493: ret = 0;				  /* 初期状態は Keymap0 */
                           1967 ;     genAssign
   04B7 7A 00              1968 	mov	r2,#0x00
                           1969 ;nerd.c:497: while(wait-- > 0) {
                           1970 ;     genAssign
   04B9 7B FF              1971 	mov	r3,#0xFF
   04BB 7C FF              1972 	mov	r4,#0xFF
   04BD                    1973 00108$:
                           1974 ;     genAssign
   04BD 8B 05              1975 	mov	ar5,r3
   04BF 8C 06              1976 	mov	ar6,r4
                           1977 ;     genMinus
                           1978 ;     genMinusDec
   04C1 1B                 1979 	dec	r3
   04C2 BB FF 01           1980 	cjne	r3,#0xff,00118$
   04C5 1C                 1981 	dec	r4
   04C6                    1982 00118$:
                           1983 ;     genIfx
   04C6 ED                 1984 	mov	a,r5
   04C7 4E                 1985 	orl	a,r6
                           1986 ;     genIfxJump
                           1987 ;	Peephole 110	removed ljmp by inverse jump logic
   04C8 60 30              1988 	jz	00110$
   04CA                    1989 00119$:
                           1990 ;nerd.c:499: if(UpdatedKeys.head == UpdatedKeys.tail) continue;
                           1991 ;     genPointerGet
                           1992 ;     genNearPointerGet
   04CA 78 77              1993 	mov	r0,#_UpdatedKeys
   04CC 86 05              1994 	mov	ar5,@r0
                           1995 ;     genPointerGet
                           1996 ;     genNearPointerGet
   04CE 78 78              1997 	mov	r0,#(_UpdatedKeys + 0x0001)
   04D0 86 06              1998 	mov	ar6,@r0
                           1999 ;     genCmpEq
   04D2 ED                 2000 	mov	a,r5
   04D3 B5 06 02           2001 	cjne	a,ar6,00120$
                           2002 ;	Peephole 112.b	changed ljmp to sjmp
   04D6 80 E5              2003 	sjmp	00108$
   04D8                    2004 00120$:
                           2005 ;nerd.c:502: scan = UpdatedKeys.dat[UpdatedKeys.head].scan;
                           2006 ;     genLeftShift
                           2007 ;     genLeftShiftLiteral
                           2008 ;     genlshOne
                           2009 ;	Peephole 254	optimized left shift
   04D8 ED                 2010 	mov	a,r5
   04D9 2D                 2011 	add	a,r5
                           2012 ;     genPlus
                           2013 ;	Peephole 177.b	removed redundant mov
   04DA FD                 2014 	mov	r5,a
   04DB 24 79              2015 	add	a,#(_UpdatedKeys + 0x0002)
   04DD F8                 2016 	mov	r0,a
                           2017 ;     genPointerGet
                           2018 ;     genNearPointerGet
   04DE 86 05              2019 	mov	ar5,@r0
                           2020 ;nerd.c:503: sw =   UpdatedKeys.dat[UpdatedKeys.head].sw;
                           2021 ;     genPlus
                           2022 ;     genPlusIncr
   04E0 08                 2023 	inc	r0
                           2024 ;     genPointerGet
                           2025 ;     genNearPointerGet
   04E1 86 06              2026 	mov	ar6,@r0
                           2027 ;nerd.c:506: if((scan == SCAN_KMAPSET_SELECT) && (sw == KEY_SW_PRESSED)) {
                           2028 ;     genCmpEq
                           2029 ;	Peephole 112.b	changed ljmp to sjmp
                           2030 ;	Peephole 199	optimized misc jump sequence
   04E3 BD 1F 05           2031 	cjne	r5,#0x1F,00104$
                           2032 ;00121$:
                           2033 ;	Peephole 200	removed redundant sjmp
   04E6                    2034 00122$:
                           2035 ;     genCmpEq
                           2036 ;	Peephole 112.b	changed ljmp to sjmp
                           2037 ;	Peephole 199	optimized misc jump sequence
   04E6 BE 00 02           2038 	cjne	r6,#0x00,00104$
                           2039 ;00123$:
                           2040 ;	Peephole 200	removed redundant sjmp
   04E9                    2041 00124$:
                           2042 ;nerd.c:507: ret = 1;
                           2043 ;     genAssign
   04E9 7A 01              2044 	mov	r2,#0x01
   04EB                    2045 00104$:
                           2046 ;nerd.c:511: UpdatedKeys.head = (++UpdatedKeys.head) & (UPDATE_KEYS_MAX - 1);
                           2047 ;     genPointerGet
                           2048 ;     genNearPointerGet
                           2049 ;     genPlus
                           2050 ;     genPlusIncr
                           2051 ;     genPointerSet
                           2052 ;     genNearPointerSet
                           2053 ;	Peephole 133	removed redundant moves
   04EB 78 77              2054 	mov	r0,#_UpdatedKeys
   04ED 06                 2055 	inc	@r0
   04EE 86 05              2056 	mov	ar5,@r0
                           2057 ;     genAnd
   04F0 74 0F              2058 	mov	a,#0x0F
   04F2 5D                 2059 	anl	a,r5
                           2060 ;     genPointerSet
                           2061 ;     genNearPointerSet
   04F3 78 77              2062 	mov	r0,#_UpdatedKeys
   04F5 A6 E0              2063 	mov	@r0,acc
                           2064 ;nerd.c:514: if(ret==1) break;
                           2065 ;     genCmpEq
                           2066 ;	Peephole 112.b	changed ljmp to sjmp
                           2067 ;	Peephole 199	optimized misc jump sequence
   04F7 BA 01 C3           2068 	cjne	r2,#0x01,00108$
                           2069 ;00125$:
                           2070 ;	Peephole 200	removed redundant sjmp
   04FA                    2071 00126$:
   04FA                    2072 00110$:
                           2073 ;nerd.c:517: UpdatedKeys.head = UpdatedKeys.tail; /* ｽｷｬﾝｷｭｰを空にする */
                           2074 ;     genPointerGet
                           2075 ;     genNearPointerGet
   04FA 78 78              2076 	mov	r0,#(_UpdatedKeys + 0x0001)
   04FC 86 03              2077 	mov	ar3,@r0
                           2078 ;     genPointerSet
                           2079 ;     genNearPointerSet
   04FE 78 77              2080 	mov	r0,#_UpdatedKeys
   0500 A6 03              2081 	mov	@r0,ar3
                           2082 ;nerd.c:521: __debug_lo();
                           2083 ;     genAssign
                           2084 ;     genAnd
                           2085 ;	Peephole 248.b	optimized and to xdata
   0502 90 7F 96           2086 	mov	dptr,#_OUTA
   0505 E0                 2087 	movx	a,@dptr
   0506 FB                 2088 	mov	r3,a
   0507 54 EF              2089 	anl	a,#0xEF
   0509 F0                 2090 	movx	@dptr,a
                           2091 ;nerd.c:523: return ret;
                           2092 ;     genRet
   050A 8A 82              2093 	mov	dpl,r2
   050C                    2094 00111$:
   050C 22                 2095 	ret
                           2096 ;------------------------------------------------------------
                           2097 ;Allocation info for local variables in function 'get_parent_map_num'
                           2098 ;------------------------------------------------------------
                           2099 ;usage_id                  Allocated to registers r2 
                           2100 ;map                       Allocated to registers r2 
                           2101 ;------------------------------------------------------------
                           2102 ;nerd.c:531: static uchar get_parent_map_num(const uchar usage_id)
                           2103 ;	-----------------------------------------
                           2104 ;	 function get_parent_map_num
                           2105 ;	-----------------------------------------
   050D                    2106 _get_parent_map_num:
                           2107 ;     genReceive
   050D AA 82              2108 	mov	r2,dpl
                           2109 ;nerd.c:535: switch(usage_id) {
                           2110 ;     genCmpEq
   050F BA EE 02           2111 	cjne	r2,#0xEE,00109$
                           2112 ;	Peephole 112.b	changed ljmp to sjmp
   0512 80 05              2113 	sjmp	00101$
   0514                    2114 00109$:
                           2115 ;     genCmpEq
                           2116 ;	Peephole 112.b	changed ljmp to sjmp
                           2117 ;nerd.c:536: case USID_INHERIT_CTRL:	 map = KEYMAP_NCTRL; break;
                           2118 ;	Peephole 112.b	changed ljmp to sjmp
                           2119 ;	Peephole 199	optimized misc jump sequence
   0514 BA EF 0A           2120 	cjne	r2,#0xEF,00103$
   0517 80 04              2121 	sjmp	00102$
                           2122 ;00110$:
   0519                    2123 00101$:
                           2124 ;     genAssign
   0519 7A 01              2125 	mov	r2,#0x01
                           2126 ;nerd.c:537: case USID_INHERIT_META:	 map = KEYMAP_NMETA; break;
                           2127 ;	Peephole 112.b	changed ljmp to sjmp
   051B 80 06              2128 	sjmp	00104$
   051D                    2129 00102$:
                           2130 ;     genAssign
   051D 7A 02              2131 	mov	r2,#0x02
                           2132 ;nerd.c:538: default:                 map = KEYMAP_PLAIN;
                           2133 ;	Peephole 112.b	changed ljmp to sjmp
   051F 80 02              2134 	sjmp	00104$
   0521                    2135 00103$:
                           2136 ;     genAssign
   0521 7A 00              2137 	mov	r2,#0x00
                           2138 ;nerd.c:539: }
   0523                    2139 00104$:
                           2140 ;nerd.c:541: return map;
                           2141 ;     genRet
   0523 8A 82              2142 	mov	dpl,r2
   0525                    2143 00105$:
   0525 22                 2144 	ret
                           2145 ;------------------------------------------------------------
                           2146 ;Allocation info for local variables in function 'send_curr_empty'
                           2147 ;------------------------------------------------------------
                           2148 ;i                         Allocated to registers r2 
                           2149 ;------------------------------------------------------------
                           2150 ;nerd.c:550: static void send_curr_empty(void)
                           2151 ;	-----------------------------------------
                           2152 ;	 function send_curr_empty
                           2153 ;	-----------------------------------------
   0526                    2154 _send_curr_empty:
                           2155 ;nerd.c:555: for(i=2; i<KBD_REPORT_SIZE; i++)
                           2156 ;     genAssign
   0526 7A 02              2157 	mov	r2,#0x02
   0528                    2158 00101$:
                           2159 ;     genCmpLt
                           2160 ;     genCmp
   0528 C3                 2161 	clr	c
   0529 EA                 2162 	mov	a,r2
   052A 64 80              2163 	xrl	a,#0x80
   052C 94 88              2164 	subb	a,#0x88
                           2165 ;     genIfxJump
                           2166 ;	Peephole 108	removed ljmp by inverse jump logic
   052E 50 0F              2167 	jnc	00105$
   0530                    2168 00109$:
                           2169 ;nerd.c:556: SendCurr[i] = USID_NONE;
                           2170 ;     genPlus
                           2171 ;	Peephole 236.g	used r2 instead of ar2
   0530 EA                 2172 	mov	a,r2
   0531 24 00              2173 	add	a,#_SendCurr
   0533 F5 82              2174 	mov	dpl,a
                           2175 ;	Peephole 181	changed mov to clr
   0535 E4                 2176 	clr	a
   0536 34 1C              2177 	addc	a,#(_SendCurr >> 8)
   0538 F5 83              2178 	mov	dph,a
                           2179 ;     genPointerSet
                           2180 ;     genFarPointerSet
                           2181 ;	Peephole 181	changed mov to clr
   053A E4                 2182 	clr	a
   053B F0                 2183 	movx	@dptr,a
                           2184 ;nerd.c:555: for(i=2; i<KBD_REPORT_SIZE; i++)
                           2185 ;     genPlus
                           2186 ;     genPlusIncr
   053C 0A                 2187 	inc	r2
                           2188 ;	Peephole 112.b	changed ljmp to sjmp
   053D 80 E9              2189 	sjmp	00101$
   053F                    2190 00105$:
   053F 22                 2191 	ret
                           2192 ;------------------------------------------------------------
                           2193 ;Allocation info for local variables in function 'send_curr_append_key'
                           2194 ;------------------------------------------------------------
                           2195 ;usage_id                  Allocated to registers r2 
                           2196 ;i                         Allocated to registers r4 
                           2197 ;ret                       Allocated to registers r3 
                           2198 ;------------------------------------------------------------
                           2199 ;nerd.c:565: static bool send_curr_append_key(const uchar usage_id)
                           2200 ;	-----------------------------------------
                           2201 ;	 function send_curr_append_key
                           2202 ;	-----------------------------------------
   0540                    2203 _send_curr_append_key:
                           2204 ;     genReceive
   0540 AA 82              2205 	mov	r2,dpl
                           2206 ;nerd.c:570: ret = FALSE;
                           2207 ;     genAssign
   0542 7B 00              2208 	mov	r3,#0x00
                           2209 ;nerd.c:572: for(i=2; i<KBD_REPORT_SIZE; i++) {
                           2210 ;     genAssign
   0544 7C 02              2211 	mov	r4,#0x02
   0546                    2212 00103$:
                           2213 ;     genCmpLt
                           2214 ;     genCmp
   0546 C3                 2215 	clr	c
   0547 EC                 2216 	mov	a,r4
   0548 64 80              2217 	xrl	a,#0x80
   054A 94 88              2218 	subb	a,#0x88
                           2219 ;     genIfxJump
                           2220 ;	Peephole 108	removed ljmp by inverse jump logic
   054C 50 1F              2221 	jnc	00106$
   054E                    2222 00112$:
                           2223 ;nerd.c:573: if(SendCurr[i] == USID_NONE) {
                           2224 ;     genPlus
                           2225 ;	Peephole 236.g	used r4 instead of ar4
   054E EC                 2226 	mov	a,r4
   054F 24 00              2227 	add	a,#_SendCurr
   0551 FD                 2228 	mov	r5,a
                           2229 ;	Peephole 181	changed mov to clr
   0552 E4                 2230 	clr	a
   0553 34 1C              2231 	addc	a,#(_SendCurr >> 8)
   0555 FE                 2232 	mov	r6,a
                           2233 ;     genPointerGet
                           2234 ;     genFarPointerGet
   0556 8D 82              2235 	mov	dpl,r5
   0558 8E 83              2236 	mov	dph,r6
   055A E0                 2237 	movx	a,@dptr
                           2238 ;     genCmpEq
                           2239 ;	Peephole 115.b	jump optimization
   055B FF                 2240 	mov	r7,a
   055C 60 02              2241 	jz	00114$
   055E                    2242 00113$:
                           2243 ;	Peephole 112.b	changed ljmp to sjmp
   055E 80 0A              2244 	sjmp	00105$
   0560                    2245 00114$:
                           2246 ;nerd.c:575: SendCurr[i] = usage_id;
                           2247 ;     genPointerSet
                           2248 ;     genFarPointerSet
   0560 8D 82              2249 	mov	dpl,r5
   0562 8E 83              2250 	mov	dph,r6
   0564 EA                 2251 	mov	a,r2
   0565 F0                 2252 	movx	@dptr,a
                           2253 ;nerd.c:576: ret = TRUE;
                           2254 ;     genAssign
   0566 7B 01              2255 	mov	r3,#0x01
                           2256 ;nerd.c:577: break;
                           2257 ;	Peephole 112.b	changed ljmp to sjmp
   0568 80 03              2258 	sjmp	00106$
   056A                    2259 00105$:
                           2260 ;nerd.c:572: for(i=2; i<KBD_REPORT_SIZE; i++) {
                           2261 ;     genPlus
                           2262 ;     genPlusIncr
   056A 0C                 2263 	inc	r4
                           2264 ;	Peephole 112.b	changed ljmp to sjmp
   056B 80 D9              2265 	sjmp	00103$
   056D                    2266 00106$:
                           2267 ;nerd.c:581: return ret;
                           2268 ;     genRet
   056D 8B 82              2269 	mov	dpl,r3
   056F                    2270 00107$:
   056F 22                 2271 	ret
                           2272 ;------------------------------------------------------------
                           2273 ;Allocation info for local variables in function 'send_curr_remove_key'
                           2274 ;------------------------------------------------------------
                           2275 ;usage_id                  Allocated to registers r2 
                           2276 ;i                         Allocated to registers r4 
                           2277 ;j                         Allocated to registers r6 
                           2278 ;ret                       Allocated to registers r3 
                           2279 ;------------------------------------------------------------
                           2280 ;nerd.c:590: static bool send_curr_remove_key(const uchar usage_id)
                           2281 ;	-----------------------------------------
                           2282 ;	 function send_curr_remove_key
                           2283 ;	-----------------------------------------
   0570                    2284 _send_curr_remove_key:
                           2285 ;     genReceive
   0570 AA 82              2286 	mov	r2,dpl
                           2287 ;nerd.c:595: ret = FALSE;
                           2288 ;     genAssign
   0572 7B 00              2289 	mov	r3,#0x00
                           2290 ;nerd.c:597: for(i=2; i<KBD_REPORT_SIZE; i++) {
                           2291 ;     genAssign
   0574 7C 02              2292 	mov	r4,#0x02
                           2293 ;     genAssign
   0576 7D 02              2294 	mov	r5,#0x02
   0578                    2295 00103$:
                           2296 ;     genCmpLt
                           2297 ;     genCmp
   0578 C3                 2298 	clr	c
   0579 ED                 2299 	mov	a,r5
   057A 64 80              2300 	xrl	a,#0x80
   057C 94 88              2301 	subb	a,#0x88
                           2302 ;     genIfxJump
                           2303 ;	Peephole 108	removed ljmp by inverse jump logic
   057E 50 46              2304 	jnc	00106$
   0580                    2305 00118$:
                           2306 ;nerd.c:598: if(SendCurr[i] != usage_id) continue;
                           2307 ;     genPlus
                           2308 ;	Peephole 236.g	used r5 instead of ar5
   0580 ED                 2309 	mov	a,r5
   0581 24 00              2310 	add	a,#_SendCurr
   0583 F5 82              2311 	mov	dpl,a
                           2312 ;	Peephole 181	changed mov to clr
   0585 E4                 2313 	clr	a
   0586 34 1C              2314 	addc	a,#(_SendCurr >> 8)
   0588 F5 83              2315 	mov	dph,a
                           2316 ;     genPointerGet
                           2317 ;     genFarPointerGet
   058A E0                 2318 	movx	a,@dptr
                           2319 ;     genCmpEq
                           2320 ;	Peephole 105	removed redundant mov
   058B FE                 2321 	mov	r6,a
                           2322 ;	Peephole 112.b	changed ljmp to sjmp
                           2323 ;	Peephole 199	optimized misc jump sequence
   058C B5 02 32           2324 	cjne	a,ar2,00105$
                           2325 ;00119$:
                           2326 ;	Peephole 200	removed redundant sjmp
   058F                    2327 00120$:
                           2328 ;nerd.c:601: for(j=i+1; j<KBD_REPORT_SIZE; j++) {
                           2329 ;     genPlus
                           2330 ;     genPlusIncr
   058F 74 01              2331 	mov	a,#0x01
                           2332 ;	Peephole 236.a	used r4 instead of ar4
   0591 2C                 2333 	add	a,r4
   0592 FE                 2334 	mov	r6,a
                           2335 ;     genAssign
   0593                    2336 00107$:
                           2337 ;     genCmpLt
                           2338 ;     genCmp
   0593 C3                 2339 	clr	c
   0594 EE                 2340 	mov	a,r6
   0595 64 80              2341 	xrl	a,#0x80
   0597 94 88              2342 	subb	a,#0x88
                           2343 ;     genIfxJump
                           2344 ;	Peephole 108	removed ljmp by inverse jump logic
   0599 50 1D              2345 	jnc	00110$
   059B                    2346 00121$:
                           2347 ;nerd.c:602: SendCurr[j-1] = SendCurr[j];
                           2348 ;     genMinus
                           2349 ;     genMinusDec
   059B EE                 2350 	mov	a,r6
   059C 14                 2351 	dec	a
                           2352 ;     genPlus
   059D 24 00              2353 	add	a,#_SendCurr
   059F FF                 2354 	mov	r7,a
                           2355 ;	Peephole 240	use clr instead of addc a,#0
   05A0 E4                 2356 	clr	a
   05A1 34 1C              2357 	addc	a,#(_SendCurr >> 8)
   05A3 F8                 2358 	mov	r0,a
                           2359 ;     genPlus
                           2360 ;	Peephole 236.g	used r6 instead of ar6
   05A4 EE                 2361 	mov	a,r6
   05A5 24 00              2362 	add	a,#_SendCurr
   05A7 F5 82              2363 	mov	dpl,a
                           2364 ;	Peephole 181	changed mov to clr
   05A9 E4                 2365 	clr	a
   05AA 34 1C              2366 	addc	a,#(_SendCurr >> 8)
   05AC F5 83              2367 	mov	dph,a
                           2368 ;     genPointerGet
                           2369 ;     genFarPointerGet
   05AE E0                 2370 	movx	a,@dptr
                           2371 ;     genPointerSet
                           2372 ;     genFarPointerSet
                           2373 ;	Peephole 136	removed redundant moves
   05AF F9                 2374 	mov	r1,a
   05B0 8F 82              2375 	mov	dpl,r7
   05B2 88 83              2376 	mov	dph,r0
   05B4 F0                 2377 	movx	@dptr,a
                           2378 ;nerd.c:601: for(j=i+1; j<KBD_REPORT_SIZE; j++) {
                           2379 ;     genPlus
                           2380 ;     genPlusIncr
   05B5 0E                 2381 	inc	r6
                           2382 ;	Peephole 112.b	changed ljmp to sjmp
   05B6 80 DB              2383 	sjmp	00107$
   05B8                    2384 00110$:
                           2385 ;nerd.c:604: SendCurr[KBD_REPORT_SIZE-1] = USID_NONE; /* 末尾は"ｷｰなし"にする */
                           2386 ;     genPointerSet
                           2387 ;     genFarPointerSet
   05B8 90 1C 07           2388 	mov	dptr,#(_SendCurr + 0x0007)
                           2389 ;	Peephole 181	changed mov to clr
   05BB E4                 2390 	clr	a
   05BC F0                 2391 	movx	@dptr,a
                           2392 ;nerd.c:605: ret = TRUE;
                           2393 ;     genAssign
   05BD 7B 01              2394 	mov	r3,#0x01
                           2395 ;nerd.c:606: break;
                           2396 ;	Peephole 112.b	changed ljmp to sjmp
   05BF 80 05              2397 	sjmp	00106$
   05C1                    2398 00105$:
                           2399 ;nerd.c:597: for(i=2; i<KBD_REPORT_SIZE; i++) {
                           2400 ;     genPlus
                           2401 ;     genPlusIncr
   05C1 0D                 2402 	inc	r5
                           2403 ;     genAssign
   05C2 8D 04              2404 	mov	ar4,r5
                           2405 ;	Peephole 112.b	changed ljmp to sjmp
   05C4 80 B2              2406 	sjmp	00103$
   05C6                    2407 00106$:
                           2408 ;nerd.c:609: return ret;
                           2409 ;     genRet
   05C6 8B 82              2410 	mov	dpl,r3
   05C8                    2411 00111$:
   05C8 22                 2412 	ret
                           2413 ;------------------------------------------------------------
                           2414 ;Allocation info for local variables in function 'is_mod_key'
                           2415 ;------------------------------------------------------------
                           2416 ;usage_id                  Allocated to registers r2 
                           2417 ;ret                       Allocated to registers r3 
                           2418 ;------------------------------------------------------------
                           2419 ;nerd.c:618: static bool is_mod_key(const uchar usage_id)
                           2420 ;	-----------------------------------------
                           2421 ;	 function is_mod_key
                           2422 ;	-----------------------------------------
   05C9                    2423 _is_mod_key:
                           2424 ;     genReceive
   05C9 AA 82              2425 	mov	r2,dpl
                           2426 ;nerd.c:622: ret = FALSE;
                           2427 ;     genAssign
   05CB 7B 00              2428 	mov	r3,#0x00
                           2429 ;nerd.c:624: if((usage_id >= USID_MOD_START) && (usage_id <= USID_MOD_END))
                           2430 ;     genCmpLt
                           2431 ;     genCmp
   05CD BA E0 00           2432 	cjne	r2,#0xE0,00112$
   05D0                    2433 00112$:
                           2434 ;     genIfxJump
                           2435 ;	Peephole 112.b	changed ljmp to sjmp
                           2436 ;	Peephole 160	removed sjmp by inverse jump logic
   05D0 40 09              2437 	jc	00104$
   05D2                    2438 00113$:
                           2439 ;     genCmpGt
                           2440 ;     genCmp
                           2441 ;     genIfxJump
                           2442 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   05D2 EA                 2443 	mov	a,r2
   05D3 24 18              2444 	add	a,#0xff - 0xE7
                           2445 ;	Peephole 112.b	changed ljmp to sjmp
                           2446 ;	Peephole 160	removed sjmp by inverse jump logic
   05D5 40 04              2447 	jc	00104$
   05D7                    2448 00114$:
                           2449 ;nerd.c:625: ret = TRUE;
                           2450 ;     genAssign
   05D7 7B 01              2451 	mov	r3,#0x01
                           2452 ;	Peephole 112.b	changed ljmp to sjmp
   05D9 80 05              2453 	sjmp	00105$
   05DB                    2454 00104$:
                           2455 ;nerd.c:626: else if(usage_id == USID_NERD_CTRL)
                           2456 ;     genCmpEq
                           2457 ;	Peephole 112.b	changed ljmp to sjmp
                           2458 ;	Peephole 199	optimized misc jump sequence
   05DB BA E9 02           2459 	cjne	r2,#0xE9,00105$
                           2460 ;00115$:
                           2461 ;	Peephole 200	removed redundant sjmp
   05DE                    2462 00116$:
                           2463 ;nerd.c:627: ret = TRUE;
                           2464 ;     genAssign
   05DE 7B 01              2465 	mov	r3,#0x01
   05E0                    2466 00105$:
                           2467 ;nerd.c:631: return ret;
                           2468 ;     genRet
   05E0 8B 82              2469 	mov	dpl,r3
   05E2                    2470 00107$:
   05E2 22                 2471 	ret
                           2472 ;------------------------------------------------------------
                           2473 ;Allocation info for local variables in function 'nerd_loop'
                           2474 ;------------------------------------------------------------
                           2475 ;scan                      Allocated to registers r2 
                           2476 ;sw                        Allocated with name '_nerd_loop_sw_1_1'
                           2477 ;usid                      Allocated to registers r4 
                           2478 ;usid_orig                 Allocated to registers r3 
                           2479 ;map                       Allocated to registers r5 
                           2480 ;mask                      Allocated to registers r3 
                           2481 ;mod_new                   Allocated to registers r2 
                           2482 ;mod_stat                  Allocated with name '_nerd_loop_mod_stat_1_1'
                           2483 ;map_old                   Allocated to registers r5 
                           2484 ;sloc0                     Allocated with name '_nerd_loop_sloc0_1_0'
                           2485 ;------------------------------------------------------------
                           2486 ;nerd.c:639: static void nerd_loop(void)
                           2487 ;	-----------------------------------------
                           2488 ;	 function nerd_loop
                           2489 ;	-----------------------------------------
   05E3                    2490 _nerd_loop:
                           2491 ;nerd.c:644: while(1) {
   05E3                    2492 00143$:
                           2493 ;nerd.c:646: if(UpdatedKeys.head == UpdatedKeys.tail) continue;
                           2494 ;     genPointerGet
                           2495 ;     genNearPointerGet
   05E3 78 77              2496 	mov	r0,#_UpdatedKeys
   05E5 86 02              2497 	mov	ar2,@r0
                           2498 ;     genPointerGet
                           2499 ;     genNearPointerGet
   05E7 78 78              2500 	mov	r0,#(_UpdatedKeys + 0x0001)
   05E9 86 03              2501 	mov	ar3,@r0
                           2502 ;     genCmpEq
   05EB EA                 2503 	mov	a,r2
   05EC B5 03 02           2504 	cjne	a,ar3,00181$
                           2505 ;	Peephole 112.b	changed ljmp to sjmp
   05EF 80 F2              2506 	sjmp	00143$
   05F1                    2507 00181$:
                           2508 ;nerd.c:649: scan = UpdatedKeys.dat[UpdatedKeys.head].scan;
                           2509 ;     genLeftShift
                           2510 ;     genLeftShiftLiteral
                           2511 ;     genlshOne
                           2512 ;	Peephole 254	optimized left shift
   05F1 EA                 2513 	mov	a,r2
   05F2 2A                 2514 	add	a,r2
                           2515 ;     genPlus
                           2516 ;	Peephole 177.b	removed redundant mov
   05F3 FA                 2517 	mov	r2,a
   05F4 24 79              2518 	add	a,#(_UpdatedKeys + 0x0002)
   05F6 F8                 2519 	mov	r0,a
                           2520 ;     genPointerGet
                           2521 ;     genNearPointerGet
   05F7 86 02              2522 	mov	ar2,@r0
                           2523 ;nerd.c:650: sw =   UpdatedKeys.dat[UpdatedKeys.head].sw;
                           2524 ;     genPlus
                           2525 ;     genPlusIncr
   05F9 08                 2526 	inc	r0
                           2527 ;     genPointerGet
                           2528 ;     genNearPointerGet
   05FA 86 28              2529 	mov	_nerd_loop_sw_1_1,@r0
                           2530 ;nerd.c:653: usid = Keymap[MapSet][KEYMAP_PLAIN][scan];
                           2531 ;     genCast
   05FC 78 99              2532 	mov	r0,#_MapSet
   05FE 86 04              2533 	mov	ar4,@r0
   0600 7D 00              2534 	mov	r5,#0x00
                           2535 ;     genAssign
   0602 75 35 80           2536 	mov	__mulint_PARM_2,#0x80
   0605 75 36 01           2537 	mov	(__mulint_PARM_2 + 1),#0x01
                           2538 ;     genCall
   0608 8C 82              2539 	mov	dpl,r4
   060A 8D 83              2540 	mov	dph,r5
   060C C0 02              2541 	push	ar2
   060E 12 14 39           2542 	lcall	__mulint
   0611 AC 82              2543 	mov	r4,dpl
   0613 AD 83              2544 	mov	r5,dph
   0615 D0 02              2545 	pop	ar2
                           2546 ;     genPlus
                           2547 ;	Peephole 236.g	used r4 instead of ar4
   0617 EC                 2548 	mov	a,r4
   0618 24 2A              2549 	add	a,#_Keymap
   061A FC                 2550 	mov	r4,a
                           2551 ;	Peephole 236.g	used r5 instead of ar5
   061B ED                 2552 	mov	a,r5
   061C 34 0A              2553 	addc	a,#(_Keymap >> 8)
   061E FD                 2554 	mov	r5,a
                           2555 ;     genCast
   061F 8A 06              2556 	mov	ar6,r2
   0621 7F 00              2557 	mov	r7,#0x00
                           2558 ;     genPlus
                           2559 ;	Peephole 236.g	used r6 instead of ar6
   0623 EE                 2560 	mov	a,r6
                           2561 ;	Peephole 236.a	used r4 instead of ar4
   0624 2C                 2562 	add	a,r4
   0625 F5 82              2563 	mov	dpl,a
                           2564 ;	Peephole 236.g	used r7 instead of ar7
   0627 EF                 2565 	mov	a,r7
                           2566 ;	Peephole 236.b	used r5 instead of ar5
   0628 3D                 2567 	addc	a,r5
   0629 F5 83              2568 	mov	dph,a
                           2569 ;     genPointerGet
                           2570 ;     genCodePointerGet
                           2571 ;	Peephole 181	changed mov to clr
   062B E4                 2572 	clr	a
   062C 93                 2573 	movc	a,@a+dptr
   062D FC                 2574 	mov	r4,a
                           2575 ;nerd.c:654: map_old = get_map_num(); /* 変更前のｷｰﾏｯﾌﾟ番号を保存 */
                           2576 ;     genCall
   062E C0 02              2577 	push	ar2
   0630 C0 04              2578 	push	ar4
   0632 12 02 8E           2579 	lcall	_get_map_num
   0635 AD 82              2580 	mov	r5,dpl
   0637 D0 04              2581 	pop	ar4
   0639 D0 02              2582 	pop	ar2
                           2583 ;nerd.c:657: if(update_nerd_status(usid, sw) == TRUE) {
                           2584 ;     genAssign
   063B 85 28 35           2585 	mov	_update_nerd_status_PARM_2,_nerd_loop_sw_1_1
                           2586 ;     genCall
   063E 8C 82              2587 	mov	dpl,r4
   0640 C0 02              2588 	push	ar2
   0642 C0 05              2589 	push	ar5
   0644 12 02 A9           2590 	lcall	_update_nerd_status
   0647 AE 82              2591 	mov	r6,dpl
   0649 D0 05              2592 	pop	ar5
   064B D0 02              2593 	pop	ar2
                           2594 ;     genCmpEq
                           2595 ;	Peephole 112.b	changed ljmp to sjmp
                           2596 ;	Peephole 199	optimized misc jump sequence
   064D BE 01 18           2597 	cjne	r6,#0x01,00104$
                           2598 ;00182$:
                           2599 ;	Peephole 200	removed redundant sjmp
   0650                    2600 00183$:
                           2601 ;nerd.c:659: send_curr_empty();			  /* 押下なしのﾚﾎﾟｰﾄを作成 */
                           2602 ;     genCall
   0650 C0 02              2603 	push	ar2
   0652 C0 05              2604 	push	ar5
   0654 12 05 26           2605 	lcall	_send_curr_empty
   0657 D0 05              2606 	pop	ar5
   0659 D0 02              2607 	pop	ar2
                           2608 ;nerd.c:660: ScanWith[map_old] = SCAN_EMPTY;
                           2609 ;     genPlus
                           2610 ;	Peephole 236.g	used r5 instead of ar5
   065B ED                 2611 	mov	a,r5
   065C 24 5A              2612 	add	a,#_ScanWith
   065E F5 82              2613 	mov	dpl,a
                           2614 ;	Peephole 181	changed mov to clr
   0660 E4                 2615 	clr	a
   0661 34 1C              2616 	addc	a,#(_ScanWith >> 8)
   0663 F5 83              2617 	mov	dph,a
                           2618 ;     genPointerSet
                           2619 ;     genFarPointerSet
   0665 74 FF              2620 	mov	a,#0xFF
   0667 F0                 2621 	movx	@dptr,a
   0668                    2622 00104$:
                           2623 ;nerd.c:662: map = get_map_num();			  /* ｷｰﾏｯﾌﾟ番号取得 */
                           2624 ;     genCall
   0668 C0 02              2625 	push	ar2
   066A 12 02 8E           2626 	lcall	_get_map_num
   066D AD 82              2627 	mov	r5,dpl
   066F D0 02              2628 	pop	ar2
                           2629 ;nerd.c:663: usid = Keymap[MapSet][map][scan]; /* ｷｰﾏｯﾌﾟに応じた usage id を取得 */
                           2630 ;     genCast
   0671 78 99              2631 	mov	r0,#_MapSet
   0673 86 06              2632 	mov	ar6,@r0
   0675 7F 00              2633 	mov	r7,#0x00
                           2634 ;     genAssign
   0677 75 35 80           2635 	mov	__mulint_PARM_2,#0x80
   067A 75 36 01           2636 	mov	(__mulint_PARM_2 + 1),#0x01
                           2637 ;     genCall
   067D 8E 82              2638 	mov	dpl,r6
   067F 8F 83              2639 	mov	dph,r7
   0681 C0 02              2640 	push	ar2
   0683 C0 05              2641 	push	ar5
   0685 12 14 39           2642 	lcall	__mulint
   0688 AE 82              2643 	mov	r6,dpl
   068A AF 83              2644 	mov	r7,dph
   068C D0 05              2645 	pop	ar5
   068E D0 02              2646 	pop	ar2
                           2647 ;     genPlus
                           2648 ;	Peephole 236.g	used r6 instead of ar6
   0690 EE                 2649 	mov	a,r6
   0691 24 2A              2650 	add	a,#_Keymap
   0693 FE                 2651 	mov	r6,a
                           2652 ;	Peephole 236.g	used r7 instead of ar7
   0694 EF                 2653 	mov	a,r7
   0695 34 0A              2654 	addc	a,#(_Keymap >> 8)
   0697 FF                 2655 	mov	r7,a
                           2656 ;     genMult
                           2657 ;     genMultOneByte
   0698 ED                 2658 	mov	a,r5
   0699 75 F0 40           2659 	mov	b,#0x40
   069C A4                 2660 	mul	ab
                           2661 ;     genPlus
                           2662 ;	Peephole 236.a	used r6 instead of ar6
   069D 2E                 2663 	add	a,r6
   069E FE                 2664 	mov	r6,a
                           2665 ;	Peephole 236.g	used r7 instead of ar7
   069F EF                 2666 	mov	a,r7
   06A0 35 F0              2667 	addc	a,b
   06A2 FF                 2668 	mov	r7,a
                           2669 ;     genCast
   06A3 8A 2A              2670 	mov	_nerd_loop_sloc0_1_0,r2
   06A5 75 2B 00           2671 	mov	(_nerd_loop_sloc0_1_0 + 1),#0x00
                           2672 ;     genPlus
   06A8 E5 2A              2673 	mov	a,_nerd_loop_sloc0_1_0
                           2674 ;	Peephole 236.a	used r6 instead of ar6
   06AA 2E                 2675 	add	a,r6
   06AB F5 82              2676 	mov	dpl,a
   06AD E5 2B              2677 	mov	a,(_nerd_loop_sloc0_1_0 + 1)
                           2678 ;	Peephole 236.b	used r7 instead of ar7
   06AF 3F                 2679 	addc	a,r7
   06B0 F5 83              2680 	mov	dph,a
                           2681 ;     genPointerGet
                           2682 ;     genCodePointerGet
                           2683 ;	Peephole 181	changed mov to clr
   06B2 E4                 2684 	clr	a
   06B3 93                 2685 	movc	a,@a+dptr
   06B4 FC                 2686 	mov	r4,a
                           2687 ;nerd.c:666: if(is_inherit_key(usid) == TRUE) {
                           2688 ;     genCmpLt
                           2689 ;     genCmp
   06B5 BC ED 00           2690 	cjne	r4,#0xED,00184$
   06B8                    2691 00184$:
                           2692 ;     genNot
                           2693 ;	Peephole 105	removed redundant mov
                           2694 ;     genIfx
                           2695 ;	Peephole 105	removed redundant mov
                           2696 ;	Peephole 245	optimized complement (r6 and acc set needed?)
   06B8 B3                 2697 	cpl	c
   06B9 E4                 2698 	clr	a
   06BA 33                 2699 	rlc	a
   06BB FE                 2700 	mov	r6,a
                           2701 ;     genIfxJump
                           2702 ;	Peephole 110	removed ljmp by inverse jump logic
   06BC 60 0A              2703 	jz	00149$
   06BE                    2704 00186$:
                           2705 ;     genCmpGt
                           2706 ;     genCmp
   06BE C3                 2707 	clr	c
   06BF 74 EF              2708 	mov	a,#0xEF
   06C1 9C                 2709 	subb	a,r4
                           2710 ;     genNot
                           2711 ;	Peephole 105	removed redundant mov
                           2712 ;     genIfx
                           2713 ;	Peephole 105	removed redundant mov
                           2714 ;	Peephole 245	optimized complement (r6 and acc set needed?)
   06C2 B3                 2715 	cpl	c
   06C3 E4                 2716 	clr	a
   06C4 33                 2717 	rlc	a
   06C5 FE                 2718 	mov	r6,a
                           2719 ;     genIfxJump
                           2720 ;	Peephole 109	removed ljmp by inverse jump logic
   06C6 70 04              2721 	jnz	00150$
   06C8                    2722 00188$:
   06C8                    2723 00149$:
                           2724 ;     genAssign
   06C8 7E 00              2725 	mov	r6,#0x00
                           2726 ;	Peephole 112.b	changed ljmp to sjmp
   06CA 80 02              2727 	sjmp	00151$
   06CC                    2728 00150$:
                           2729 ;     genAssign
   06CC 7E 01              2730 	mov	r6,#0x01
   06CE                    2731 00151$:
                           2732 ;     genIfx
   06CE EE                 2733 	mov	a,r6
                           2734 ;     genIfxJump
                           2735 ;	Peephole 110	removed ljmp by inverse jump logic
   06CF 60 04              2736 	jz	00147$
   06D1                    2737 00189$:
                           2738 ;     genAssign
   06D1 7E 01              2739 	mov	r6,#0x01
                           2740 ;	Peephole 112.b	changed ljmp to sjmp
   06D3 80 02              2741 	sjmp	00148$
   06D5                    2742 00147$:
                           2743 ;     genAssign
   06D5 7E 00              2744 	mov	r6,#0x00
   06D7                    2745 00148$:
                           2746 ;     genCmpEq
   06D7 BE 01 02           2747 	cjne	r6,#0x01,00190$
   06DA 80 03              2748 	sjmp	00191$
   06DC                    2749 00190$:
   06DC 02 07 F5           2750 	ljmp	00133$
   06DF                    2751 00191$:
                           2752 ;nerd.c:668: usid_orig = usid;
                           2753 ;     genAssign
   06DF 8C 03              2754 	mov	ar3,r4
                           2755 ;nerd.c:671: while(is_inherit_key(usid) == TRUE)
   06E1                    2756 00105$:
                           2757 ;     genCmpLt
                           2758 ;     genCmp
   06E1 BC ED 00           2759 	cjne	r4,#0xED,00192$
   06E4                    2760 00192$:
                           2761 ;     genNot
                           2762 ;	Peephole 105	removed redundant mov
                           2763 ;     genIfx
                           2764 ;	Peephole 105	removed redundant mov
                           2765 ;	Peephole 245	optimized complement (r7 and acc set needed?)
   06E4 B3                 2766 	cpl	c
   06E5 E4                 2767 	clr	a
   06E6 33                 2768 	rlc	a
   06E7 FF                 2769 	mov	r7,a
                           2770 ;     genIfxJump
                           2771 ;	Peephole 110	removed ljmp by inverse jump logic
   06E8 60 0A              2772 	jz	00154$
   06EA                    2773 00194$:
                           2774 ;     genCmpGt
                           2775 ;     genCmp
   06EA C3                 2776 	clr	c
   06EB 74 EF              2777 	mov	a,#0xEF
   06ED 9C                 2778 	subb	a,r4
                           2779 ;     genNot
                           2780 ;	Peephole 105	removed redundant mov
                           2781 ;     genIfx
                           2782 ;	Peephole 105	removed redundant mov
                           2783 ;	Peephole 245	optimized complement (r7 and acc set needed?)
   06EE B3                 2784 	cpl	c
   06EF E4                 2785 	clr	a
   06F0 33                 2786 	rlc	a
   06F1 FF                 2787 	mov	r7,a
                           2788 ;     genIfxJump
                           2789 ;	Peephole 109	removed ljmp by inverse jump logic
   06F2 70 04              2790 	jnz	00155$
   06F4                    2791 00196$:
   06F4                    2792 00154$:
                           2793 ;     genAssign
   06F4 7F 00              2794 	mov	r7,#0x00
                           2795 ;	Peephole 112.b	changed ljmp to sjmp
   06F6 80 02              2796 	sjmp	00156$
   06F8                    2797 00155$:
                           2798 ;     genAssign
   06F8 7F 01              2799 	mov	r7,#0x01
   06FA                    2800 00156$:
                           2801 ;     genIfx
   06FA EF                 2802 	mov	a,r7
                           2803 ;     genIfxJump
                           2804 ;	Peephole 110	removed ljmp by inverse jump logic
   06FB 60 04              2805 	jz	00152$
   06FD                    2806 00197$:
                           2807 ;     genAssign
   06FD 7F 01              2808 	mov	r7,#0x01
                           2809 ;	Peephole 112.b	changed ljmp to sjmp
   06FF 80 02              2810 	sjmp	00153$
   0701                    2811 00152$:
                           2812 ;     genAssign
   0701 7F 00              2813 	mov	r7,#0x00
   0703                    2814 00153$:
                           2815 ;     genCmpEq
                           2816 ;	Peephole 112.b	changed ljmp to sjmp
                           2817 ;	Peephole 199	optimized misc jump sequence
   0703 BF 01 64           2818 	cjne	r7,#0x01,00107$
                           2819 ;00198$:
                           2820 ;	Peephole 200	removed redundant sjmp
   0706                    2821 00199$:
                           2822 ;nerd.c:672: usid = Keymap[MapSet][get_parent_map_num(usid)][scan];
                           2823 ;     genCast
   0706 78 99              2824 	mov	r0,#_MapSet
   0708 86 07              2825 	mov	ar7,@r0
   070A 7E 00              2826 	mov	r6,#0x00
                           2827 ;     genAssign
   070C 75 35 80           2828 	mov	__mulint_PARM_2,#0x80
   070F 75 36 01           2829 	mov	(__mulint_PARM_2 + 1),#0x01
                           2830 ;     genCall
   0712 8F 82              2831 	mov	dpl,r7
   0714 8E 83              2832 	mov	dph,r6
   0716 C0 02              2833 	push	ar2
   0718 C0 03              2834 	push	ar3
   071A C0 04              2835 	push	ar4
   071C C0 05              2836 	push	ar5
   071E 12 14 39           2837 	lcall	__mulint
   0721 AE 82              2838 	mov	r6,dpl
   0723 AF 83              2839 	mov	r7,dph
   0725 D0 05              2840 	pop	ar5
   0727 D0 04              2841 	pop	ar4
   0729 D0 03              2842 	pop	ar3
   072B D0 02              2843 	pop	ar2
                           2844 ;     genPlus
                           2845 ;	Peephole 236.g	used r6 instead of ar6
   072D EE                 2846 	mov	a,r6
   072E 24 2A              2847 	add	a,#_Keymap
   0730 FE                 2848 	mov	r6,a
                           2849 ;	Peephole 236.g	used r7 instead of ar7
   0731 EF                 2850 	mov	a,r7
   0732 34 0A              2851 	addc	a,#(_Keymap >> 8)
   0734 FF                 2852 	mov	r7,a
                           2853 ;     genCall
   0735 8C 82              2854 	mov	dpl,r4
   0737 C0 02              2855 	push	ar2
   0739 C0 03              2856 	push	ar3
   073B C0 05              2857 	push	ar5
   073D C0 06              2858 	push	ar6
   073F C0 07              2859 	push	ar7
   0741 12 05 0D           2860 	lcall	_get_parent_map_num
   0744 E5 82              2861 	mov	a,dpl
   0746 D0 07              2862 	pop	ar7
   0748 D0 06              2863 	pop	ar6
   074A D0 05              2864 	pop	ar5
   074C D0 03              2865 	pop	ar3
   074E D0 02              2866 	pop	ar2
                           2867 ;     genMult
                           2868 ;     genMultOneByte
   0750 75 F0 40           2869 	mov	b,#0x40
   0753 A4                 2870 	mul	ab
                           2871 ;     genPlus
                           2872 ;	Peephole 236.a	used r6 instead of ar6
   0754 2E                 2873 	add	a,r6
   0755 FE                 2874 	mov	r6,a
                           2875 ;	Peephole 236.g	used r7 instead of ar7
   0756 EF                 2876 	mov	a,r7
   0757 35 F0              2877 	addc	a,b
   0759 FF                 2878 	mov	r7,a
                           2879 ;     genPlus
   075A E5 2A              2880 	mov	a,_nerd_loop_sloc0_1_0
                           2881 ;	Peephole 236.a	used r6 instead of ar6
   075C 2E                 2882 	add	a,r6
   075D F5 82              2883 	mov	dpl,a
   075F E5 2B              2884 	mov	a,(_nerd_loop_sloc0_1_0 + 1)
                           2885 ;	Peephole 236.b	used r7 instead of ar7
   0761 3F                 2886 	addc	a,r7
   0762 F5 83              2887 	mov	dph,a
                           2888 ;     genPointerGet
                           2889 ;     genCodePointerGet
                           2890 ;	Peephole 181	changed mov to clr
   0764 E4                 2891 	clr	a
   0765 93                 2892 	movc	a,@a+dptr
   0766 FC                 2893 	mov	r4,a
   0767 02 06 E1           2894 	ljmp	00105$
   076A                    2895 00107$:
                           2896 ;nerd.c:674: if(is_mod_key(usid_orig) == FALSE) {
                           2897 ;     genCall
   076A 8B 82              2898 	mov	dpl,r3
   076C C0 02              2899 	push	ar2
   076E C0 04              2900 	push	ar4
   0770 C0 05              2901 	push	ar5
   0772 12 05 C9           2902 	lcall	_is_mod_key
   0775 AE 82              2903 	mov	r6,dpl
   0777 D0 05              2904 	pop	ar5
   0779 D0 04              2905 	pop	ar4
   077B D0 02              2906 	pop	ar2
                           2907 ;     genCmpEq
   077D BE 00 02           2908 	cjne	r6,#0x00,00200$
   0780 80 03              2909 	sjmp	00201$
   0782                    2910 00200$:
   0782 02 08 63           2911 	ljmp	00134$
   0785                    2912 00201$:
                           2913 ;nerd.c:675: if(sw == KEY_SW_PRESSED) {
                           2914 ;     genCmpEq
   0785 E5 28              2915 	mov	a,_nerd_loop_sw_1_1
                           2916 ;	Peephole 162	removed sjmp by inverse jump logic
   0787 60 02              2917 	jz	00203$
   0789                    2918 00202$:
                           2919 ;	Peephole 112.b	changed ljmp to sjmp
   0789 80 2D              2920 	sjmp	00115$
   078B                    2921 00203$:
                           2922 ;nerd.c:677: if(send_curr_append_key(usid) == TRUE) {
                           2923 ;     genCall
   078B 8C 82              2924 	mov	dpl,r4
   078D C0 02              2925 	push	ar2
   078F C0 04              2926 	push	ar4
   0791 C0 05              2927 	push	ar5
   0793 12 05 40           2928 	lcall	_send_curr_append_key
   0796 AE 82              2929 	mov	r6,dpl
   0798 D0 05              2930 	pop	ar5
   079A D0 04              2931 	pop	ar4
   079C D0 02              2932 	pop	ar2
                           2933 ;     genCmpEq
   079E BE 01 02           2934 	cjne	r6,#0x01,00204$
   07A1 80 03              2935 	sjmp	00205$
   07A3                    2936 00204$:
   07A3 02 08 63           2937 	ljmp	00134$
   07A6                    2938 00205$:
                           2939 ;nerd.c:680: ScanWith[map] = scan;
                           2940 ;     genPlus
                           2941 ;	Peephole 236.g	used r5 instead of ar5
   07A6 ED                 2942 	mov	a,r5
   07A7 24 5A              2943 	add	a,#_ScanWith
   07A9 F5 82              2944 	mov	dpl,a
                           2945 ;	Peephole 181	changed mov to clr
   07AB E4                 2946 	clr	a
   07AC 34 1C              2947 	addc	a,#(_ScanWith >> 8)
   07AE F5 83              2948 	mov	dph,a
                           2949 ;     genPointerSet
                           2950 ;     genFarPointerSet
   07B0 EA                 2951 	mov	a,r2
   07B1 F0                 2952 	movx	@dptr,a
                           2953 ;nerd.c:681: mod_stat = MODSTAT_INH_PRESSED;
                           2954 ;     genAssign
   07B2 75 29 02           2955 	mov	_nerd_loop_mod_stat_1_1,#0x02
   07B5 02 08 63           2956 	ljmp	00134$
   07B8                    2957 00115$:
                           2958 ;nerd.c:685: mod_stat = MODSTAT_INH_REL_NOT_FOUND;
                           2959 ;     genAssign
   07B8 75 29 03           2960 	mov	_nerd_loop_mod_stat_1_1,#0x03
                           2961 ;nerd.c:686: if(send_curr_remove_key(usid) == TRUE) {
                           2962 ;     genCall
   07BB 8C 82              2963 	mov	dpl,r4
   07BD C0 02              2964 	push	ar2
   07BF C0 04              2965 	push	ar4
   07C1 C0 05              2966 	push	ar5
   07C3 12 05 70           2967 	lcall	_send_curr_remove_key
   07C6 AE 82              2968 	mov	r6,dpl
   07C8 D0 05              2969 	pop	ar5
   07CA D0 04              2970 	pop	ar4
   07CC D0 02              2971 	pop	ar2
                           2972 ;     genCmpEq
   07CE BE 01 02           2973 	cjne	r6,#0x01,00206$
   07D1 80 03              2974 	sjmp	00207$
   07D3                    2975 00206$:
   07D3 02 08 63           2976 	ljmp	00134$
   07D6                    2977 00207$:
                           2978 ;nerd.c:689: if(scan == ScanWith[map])
                           2979 ;     genPlus
                           2980 ;	Peephole 236.g	used r5 instead of ar5
   07D6 ED                 2981 	mov	a,r5
   07D7 24 5A              2982 	add	a,#_ScanWith
   07D9 FE                 2983 	mov	r6,a
                           2984 ;	Peephole 181	changed mov to clr
   07DA E4                 2985 	clr	a
   07DB 34 1C              2986 	addc	a,#(_ScanWith >> 8)
   07DD FF                 2987 	mov	r7,a
                           2988 ;     genPointerGet
                           2989 ;     genFarPointerGet
   07DE 8E 82              2990 	mov	dpl,r6
   07E0 8F 83              2991 	mov	dph,r7
   07E2 E0                 2992 	movx	a,@dptr
   07E3 FB                 2993 	mov	r3,a
                           2994 ;     genCmpEq
   07E4 EA                 2995 	mov	a,r2
                           2996 ;	Peephole 112.b	changed ljmp to sjmp
                           2997 ;	Peephole 199	optimized misc jump sequence
   07E5 B5 03 07           2998 	cjne	a,ar3,00111$
                           2999 ;00208$:
                           3000 ;	Peephole 200	removed redundant sjmp
   07E8                    3001 00209$:
                           3002 ;nerd.c:690: ScanWith[map] = SCAN_EMPTY;
                           3003 ;     genPointerSet
                           3004 ;     genFarPointerSet
   07E8 8E 82              3005 	mov	dpl,r6
   07EA 8F 83              3006 	mov	dph,r7
   07EC 74 FF              3007 	mov	a,#0xFF
   07EE F0                 3008 	movx	@dptr,a
   07EF                    3009 00111$:
                           3010 ;nerd.c:692: mod_stat = MODSTAT_INH_REL_FOUND;
                           3011 ;     genAssign
   07EF 75 29 04           3012 	mov	_nerd_loop_mod_stat_1_1,#0x04
   07F2 02 08 63           3013 	ljmp	00134$
   07F5                    3014 00133$:
                           3015 ;nerd.c:696: } else if(usid != USID_NERD_LOCK) {
                           3016 ;     genCmpEq
   07F5 BC EC 03           3017 	cjne	r4,#0xEC,00210$
   07F8 02 08 63           3018 	ljmp	00134$
   07FB                    3019 00210$:
                           3020 ;nerd.c:698: if(is_mod_key(usid) == FALSE) {
                           3021 ;     genCall
   07FB 8C 82              3022 	mov	dpl,r4
   07FD C0 02              3023 	push	ar2
   07FF C0 04              3024 	push	ar4
   0801 C0 05              3025 	push	ar5
   0803 12 05 C9           3026 	lcall	_is_mod_key
   0806 AB 82              3027 	mov	r3,dpl
   0808 D0 05              3028 	pop	ar5
   080A D0 04              3029 	pop	ar4
   080C D0 02              3030 	pop	ar2
                           3031 ;     genCmpEq
                           3032 ;	Peephole 112.b	changed ljmp to sjmp
                           3033 ;	Peephole 199	optimized misc jump sequence
   080E BB 00 52           3034 	cjne	r3,#0x00,00134$
                           3035 ;00211$:
                           3036 ;	Peephole 200	removed redundant sjmp
   0811                    3037 00212$:
                           3038 ;nerd.c:699: if(sw == KEY_SW_PRESSED) {
                           3039 ;     genCmpEq
   0811 E5 28              3040 	mov	a,_nerd_loop_sw_1_1
                           3041 ;	Peephole 162	removed sjmp by inverse jump logic
   0813 60 02              3042 	jz	00214$
   0815                    3043 00213$:
                           3044 ;	Peephole 112.b	changed ljmp to sjmp
   0815 80 17              3045 	sjmp	00126$
   0817                    3046 00214$:
                           3047 ;nerd.c:701: if(send_curr_append_key(usid) == TRUE) {
                           3048 ;     genCall
   0817 8C 82              3049 	mov	dpl,r4
   0819 C0 04              3050 	push	ar4
   081B C0 05              3051 	push	ar5
   081D 12 05 40           3052 	lcall	_send_curr_append_key
   0820 AB 82              3053 	mov	r3,dpl
   0822 D0 05              3054 	pop	ar5
   0824 D0 04              3055 	pop	ar4
                           3056 ;     genCmpEq
                           3057 ;	Peephole 112.b	changed ljmp to sjmp
                           3058 ;	Peephole 199	optimized misc jump sequence
   0826 BB 01 3A           3059 	cjne	r3,#0x01,00134$
                           3060 ;00215$:
                           3061 ;	Peephole 200	removed redundant sjmp
   0829                    3062 00216$:
                           3063 ;nerd.c:703: mod_stat = MODSTAT_GEN_PRESSED;
                           3064 ;     genAssign
   0829 75 29 05           3065 	mov	_nerd_loop_mod_stat_1_1,#0x05
                           3066 ;	Peephole 112.b	changed ljmp to sjmp
   082C 80 35              3067 	sjmp	00134$
   082E                    3068 00126$:
                           3069 ;nerd.c:707: mod_stat = MODSTAT_GEN_REL_NOT_FOUND;
                           3070 ;     genAssign
   082E 75 29 06           3071 	mov	_nerd_loop_mod_stat_1_1,#0x06
                           3072 ;nerd.c:708: if(send_curr_remove_key(usid) == TRUE) {
                           3073 ;     genCall
   0831 8C 82              3074 	mov	dpl,r4
   0833 C0 02              3075 	push	ar2
   0835 C0 04              3076 	push	ar4
   0837 C0 05              3077 	push	ar5
   0839 12 05 70           3078 	lcall	_send_curr_remove_key
   083C AB 82              3079 	mov	r3,dpl
   083E D0 05              3080 	pop	ar5
   0840 D0 04              3081 	pop	ar4
   0842 D0 02              3082 	pop	ar2
                           3083 ;     genCmpEq
                           3084 ;	Peephole 112.b	changed ljmp to sjmp
                           3085 ;	Peephole 199	optimized misc jump sequence
   0844 BB 01 1C           3086 	cjne	r3,#0x01,00134$
                           3087 ;00217$:
                           3088 ;	Peephole 200	removed redundant sjmp
   0847                    3089 00218$:
                           3090 ;nerd.c:711: if(scan == ScanWith[map])
                           3091 ;     genPlus
                           3092 ;	Peephole 236.g	used r5 instead of ar5
   0847 ED                 3093 	mov	a,r5
   0848 24 5A              3094 	add	a,#_ScanWith
   084A FB                 3095 	mov	r3,a
                           3096 ;	Peephole 181	changed mov to clr
   084B E4                 3097 	clr	a
   084C 34 1C              3098 	addc	a,#(_ScanWith >> 8)
   084E FE                 3099 	mov	r6,a
                           3100 ;     genPointerGet
                           3101 ;     genFarPointerGet
   084F 8B 82              3102 	mov	dpl,r3
   0851 8E 83              3103 	mov	dph,r6
   0853 E0                 3104 	movx	a,@dptr
   0854 FF                 3105 	mov	r7,a
                           3106 ;     genCmpEq
   0855 EA                 3107 	mov	a,r2
                           3108 ;	Peephole 112.b	changed ljmp to sjmp
                           3109 ;	Peephole 199	optimized misc jump sequence
   0856 B5 07 07           3110 	cjne	a,ar7,00122$
                           3111 ;00219$:
                           3112 ;	Peephole 200	removed redundant sjmp
   0859                    3113 00220$:
                           3114 ;nerd.c:712: ScanWith[map] = SCAN_EMPTY;
                           3115 ;     genPointerSet
                           3116 ;     genFarPointerSet
   0859 8B 82              3117 	mov	dpl,r3
   085B 8E 83              3118 	mov	dph,r6
   085D 74 FF              3119 	mov	a,#0xFF
   085F F0                 3120 	movx	@dptr,a
   0860                    3121 00122$:
                           3122 ;nerd.c:714: mod_stat = MODSTAT_GEN_REL_FOUND;
                           3123 ;     genAssign
   0860 75 29 07           3124 	mov	_nerd_loop_mod_stat_1_1,#0x07
   0863                    3125 00134$:
                           3126 ;nerd.c:721: mod_new = 0x00;
                           3127 ;     genAssign
   0863 7A 00              3128 	mov	r2,#0x00
                           3129 ;nerd.c:722: if(is_mod_key(usid) == TRUE) {
                           3130 ;     genCall
   0865 8C 82              3131 	mov	dpl,r4
   0867 C0 02              3132 	push	ar2
   0869 C0 04              3133 	push	ar4
   086B C0 05              3134 	push	ar5
   086D 12 05 C9           3135 	lcall	_is_mod_key
   0870 AB 82              3136 	mov	r3,dpl
   0872 D0 05              3137 	pop	ar5
   0874 D0 04              3138 	pop	ar4
   0876 D0 02              3139 	pop	ar2
                           3140 ;     genCmpEq
                           3141 ;	Peephole 112.b	changed ljmp to sjmp
                           3142 ;	Peephole 199	optimized misc jump sequence
   0878 BB 01 2B           3143 	cjne	r3,#0x01,00141$
                           3144 ;00221$:
                           3145 ;	Peephole 200	removed redundant sjmp
   087B                    3146 00222$:
                           3147 ;nerd.c:726: if(usid == USID_NERD_CTRL) usid = USID_MOD_CTRL_L;
                           3148 ;     genCmpEq
                           3149 ;	Peephole 112.b	changed ljmp to sjmp
                           3150 ;	Peephole 199	optimized misc jump sequence
   087B BC E9 02           3151 	cjne	r4,#0xE9,00136$
                           3152 ;00223$:
                           3153 ;	Peephole 200	removed redundant sjmp
   087E                    3154 00224$:
                           3155 ;     genAssign
   087E 7C E0              3156 	mov	r4,#0xE0
   0880                    3157 00136$:
                           3158 ;nerd.c:729: mask = 1 << (usid & 0x0F);
                           3159 ;     genAnd
   0880 74 0F              3160 	mov	a,#0x0F
   0882 5C                 3161 	anl	a,r4
                           3162 ;     genLeftShift
                           3163 ;	Peephole 185	changed order of increment (acc incremented also!)
   0883 04                 3164 	inc	a
   0884 F5 F0              3165 	mov	b,a
   0886 74 01              3166 	mov	a,#0x01
   0888 80 02              3167 	sjmp	00227$
   088A                    3168 00225$:
   088A 25 E0              3169 	add	a,acc
   088C                    3170 00227$:
   088C D5 F0 FB           3171 	djnz	b,00225$
   088F FB                 3172 	mov	r3,a
                           3173 ;nerd.c:730: if(sw == KEY_SW_PRESSED) {
                           3174 ;     genCmpEq
   0890 E5 28              3175 	mov	a,_nerd_loop_sw_1_1
                           3176 ;	Peephole 162	removed sjmp by inverse jump logic
   0892 60 02              3177 	jz	00229$
   0894                    3178 00228$:
                           3179 ;	Peephole 112.b	changed ljmp to sjmp
   0894 80 08              3180 	sjmp	00138$
   0896                    3181 00229$:
                           3182 ;nerd.c:732: mod_new |= mask;  /* 押下時 ﾋﾞｯﾄON */
                           3183 ;     genOr
   0896 EB                 3184 	mov	a,r3
   0897 42 02              3185 	orl	ar2,a
                           3186 ;nerd.c:733: mod_stat = MODSTAT_MOD_PRESSED;
                           3187 ;     genAssign
   0899 75 29 00           3188 	mov	_nerd_loop_mod_stat_1_1,#0x00
                           3189 ;	Peephole 112.b	changed ljmp to sjmp
   089C 80 08              3190 	sjmp	00141$
   089E                    3191 00138$:
                           3192 ;nerd.c:736: mod_new &= ~mask; /* ﾘﾘｰｽ時 ﾋﾞｯﾄOFF */
                           3193 ;	genCpl
   089E EB                 3194 	mov	a,r3
   089F F4                 3195 	cpl	a
                           3196 ;     genAnd
                           3197 ;	Peephole 105	removed redundant mov
   08A0 FB                 3198 	mov	r3,a
   08A1 52 02              3199 	anl	ar2,a
                           3200 ;nerd.c:737: mod_stat = MODSTAT_MOD_RELEASED;
                           3201 ;     genAssign
   08A3 75 29 01           3202 	mov	_nerd_loop_mod_stat_1_1,#0x01
   08A6                    3203 00141$:
                           3204 ;nerd.c:742: SendCurr[0] = adjust_mod(map, mod_new, mod_stat);
                           3205 ;     genAssign
   08A6 8A 26              3206 	mov	_adjust_mod_PARM_2,r2
                           3207 ;     genAssign
   08A8 85 29 27           3208 	mov	_adjust_mod_PARM_3,_nerd_loop_mod_stat_1_1
                           3209 ;     genCall
   08AB 8D 82              3210 	mov	dpl,r5
   08AD 12 03 22           3211 	lcall	_adjust_mod
   08B0 AA 82              3212 	mov	r2,dpl
                           3213 ;     genPointerSet
                           3214 ;     genFarPointerSet
   08B2 90 1C 00           3215 	mov	dptr,#_SendCurr
   08B5 EA                 3216 	mov	a,r2
   08B6 F0                 3217 	movx	@dptr,a
                           3218 ;nerd.c:745: enq_report(&SendCurr[0]);
                           3219 ;     genCall
                           3220 ;	Peephole 182.a	used 16 bit load of DPTR
   08B7 90 1C 00           3221 	mov	dptr,#_SendCurr
   08BA 75 F0 01           3222 	mov	b,#0x01
   08BD 12 01 CF           3223 	lcall	_enq_report
                           3224 ;nerd.c:748: UpdatedKeys.head = (++UpdatedKeys.head) & (UPDATE_KEYS_MAX - 1);
                           3225 ;     genPointerGet
                           3226 ;     genNearPointerGet
                           3227 ;     genPlus
                           3228 ;     genPlusIncr
                           3229 ;     genPointerSet
                           3230 ;     genNearPointerSet
                           3231 ;	Peephole 133	removed redundant moves
   08C0 78 77              3232 	mov	r0,#_UpdatedKeys
   08C2 06                 3233 	inc	@r0
   08C3 86 02              3234 	mov	ar2,@r0
                           3235 ;     genAnd
   08C5 74 0F              3236 	mov	a,#0x0F
   08C7 5A                 3237 	anl	a,r2
                           3238 ;     genPointerSet
                           3239 ;     genNearPointerSet
   08C8 78 77              3240 	mov	r0,#_UpdatedKeys
   08CA A6 E0              3241 	mov	@r0,acc
   08CC 02 05 E3           3242 	ljmp	00143$
   08CF                    3243 00145$:
   08CF 22                 3244 	ret
                           3245 ;------------------------------------------------------------
                           3246 ;Allocation info for local variables in function 'EnqPreSend'
                           3247 ;------------------------------------------------------------
                           3248 ;MAX                       Allocated to registers 
                           3249 ;wait                      Allocated with name '_EnqPreSend_wait_1_1'
                           3250 ;i                         Allocated to registers r3 
                           3251 ;j                         Allocated to registers r3 
                           3252 ;n                         Allocated to registers 
                           3253 ;usid                      Allocated to registers r5 
                           3254 ;en                        Allocated to registers r2 
                           3255 ;------------------------------------------------------------
                           3256 ;nerd.c:758: static void EnqPreSend(void)
                           3257 ;	-----------------------------------------
                           3258 ;	 function EnqPreSend
                           3259 ;	-----------------------------------------
   08D0                    3260 _EnqPreSend:
                           3261 ;nerd.c:761: volatile ulong wait = 65535 * 2;		/* approx. (350 * 2) ms */
                           3262 ;     genAssign
   08D0 75 2C FE           3263 	mov	_EnqPreSend_wait_1_1,#0xFE
   08D3 75 2D FF           3264 	mov	(_EnqPreSend_wait_1_1 + 1),#0xFF
   08D6 75 2E 01           3265 	mov	(_EnqPreSend_wait_1_1 + 2),#0x01
   08D9 75 2F 00           3266 	mov	(_EnqPreSend_wait_1_1 + 3),#0x00
                           3267 ;nerd.c:768: en = FALSE;
                           3268 ;     genAssign
   08DC 7A 00              3269 	mov	r2,#0x00
                           3270 ;nerd.c:770: for(i=0; i<MAX; i++) {
                           3271 ;     genAssign
   08DE 7B 00              3272 	mov	r3,#0x00
   08E0                    3273 00114$:
                           3274 ;     genCmpLt
                           3275 ;     genCmp
   08E0 BB 06 00           3276 	cjne	r3,#0x06,00135$
   08E3                    3277 00135$:
                           3278 ;     genIfxJump
                           3279 ;	Peephole 108	removed ljmp by inverse jump logic
   08E3 50 0F              3280 	jnc	00103$
   08E5                    3281 00136$:
                           3282 ;nerd.c:771: SendCurr[i] = USID_NONE;
                           3283 ;     genPlus
                           3284 ;	Peephole 236.g	used r3 instead of ar3
   08E5 EB                 3285 	mov	a,r3
   08E6 24 00              3286 	add	a,#_SendCurr
   08E8 F5 82              3287 	mov	dpl,a
                           3288 ;	Peephole 181	changed mov to clr
   08EA E4                 3289 	clr	a
   08EB 34 1C              3290 	addc	a,#(_SendCurr >> 8)
   08ED F5 83              3291 	mov	dph,a
                           3292 ;     genPointerSet
                           3293 ;     genFarPointerSet
                           3294 ;	Peephole 181	changed mov to clr
   08EF E4                 3295 	clr	a
   08F0 F0                 3296 	movx	@dptr,a
                           3297 ;nerd.c:770: for(i=0; i<MAX; i++) {
                           3298 ;     genPlus
                           3299 ;     genPlusIncr
   08F1 0B                 3300 	inc	r3
                           3301 ;nerd.c:774: while(wait-- > 0) ;
                           3302 ;	Peephole 112.b	changed ljmp to sjmp
   08F2 80 EC              3303 	sjmp	00114$
   08F4                    3304 00103$:
                           3305 ;     genAssign
   08F4 AB 2C              3306 	mov	r3,_EnqPreSend_wait_1_1
   08F6 AC 2D              3307 	mov	r4,(_EnqPreSend_wait_1_1 + 1)
   08F8 AD 2E              3308 	mov	r5,(_EnqPreSend_wait_1_1 + 2)
   08FA AE 2F              3309 	mov	r6,(_EnqPreSend_wait_1_1 + 3)
                           3310 ;     genMinus
                           3311 ;     genMinusDec
   08FC 15 2C              3312 	dec	_EnqPreSend_wait_1_1
   08FE 74 FF              3313 	mov	a,#0xff
   0900 B5 2C 0C           3314 	cjne	a,_EnqPreSend_wait_1_1,00137$
   0903 15 2D              3315 	dec	(_EnqPreSend_wait_1_1 + 1)
   0905 B5 2D 07           3316 	cjne	a,(_EnqPreSend_wait_1_1 + 1),00137$
   0908 15 2E              3317 	dec	(_EnqPreSend_wait_1_1 + 2)
   090A B5 2E 02           3318 	cjne	a,(_EnqPreSend_wait_1_1 + 2),00137$
   090D 15 2F              3319 	dec	(_EnqPreSend_wait_1_1 + 3)
   090F                    3320 00137$:
                           3321 ;     genIfx
   090F EB                 3322 	mov	a,r3
   0910 4C                 3323 	orl	a,r4
   0911 4D                 3324 	orl	a,r5
   0912 4E                 3325 	orl	a,r6
                           3326 ;     genIfxJump
                           3327 ;	Peephole 109	removed ljmp by inverse jump logic
                           3328 ;nerd.c:776: for(i=0; i<n; i++) {
                           3329 ;     genAssign
                           3330 ;     genAssign
                           3331 ;	Peephole 256.d	loading r4 with zero from a
   0913 70 DF              3332 	jnz	00103$
   0915                    3333 00138$:
   0915 7B 02              3334 	mov	r3,#0x02
   0917 FC                 3335 	mov	r4,a
   0918                    3336 00108$:
                           3337 ;     genCmpLt
                           3338 ;     genCmp
   0918 BC 01 00           3339 	cjne	r4,#0x01,00139$
   091B                    3340 00139$:
                           3341 ;     genIfxJump
                           3342 ;	Peephole 108	removed ljmp by inverse jump logic
   091B 50 1F              3343 	jnc	00111$
   091D                    3344 00140$:
                           3345 ;nerd.c:777: usid = PreSend[i];
                           3346 ;     genPlus
                           3347 ;	Peephole 236.g	used r4 instead of ar4
   091D EC                 3348 	mov	a,r4
                           3349 ;	Peephole 181	changed mov to clr
                           3350 ;     genPointerGet
                           3351 ;     genCodePointerGet
                           3352 ;	Peephole 181	changed mov to clr
                           3353 ;	Peephole 186.d	optimized movc sequence
   091E 90 0A 29           3354 	mov	dptr,#_PreSend
   0921 93                 3355 	movc	a,@a+dptr
   0922 FD                 3356 	mov	r5,a
                           3357 ;nerd.c:780: if(usid >= USID_MOD_START) continue;
                           3358 ;     genCmpLt
                           3359 ;     genCmp
   0923 BD E0 00           3360 	cjne	r5,#0xE0,00141$
   0926                    3361 00141$:
                           3362 ;     genIfxJump
                           3363 ;	Peephole 108	removed ljmp by inverse jump logic
   0926 50 11              3364 	jnc	00110$
   0928                    3365 00142$:
                           3366 ;nerd.c:782: SendCurr[j++] = usid;
                           3367 ;     genAssign
   0928 8B 06              3368 	mov	ar6,r3
                           3369 ;     genPlus
                           3370 ;     genPlusIncr
   092A 0B                 3371 	inc	r3
                           3372 ;     genPlus
                           3373 ;	Peephole 236.g	used r6 instead of ar6
   092B EE                 3374 	mov	a,r6
   092C 24 00              3375 	add	a,#_SendCurr
   092E F5 82              3376 	mov	dpl,a
                           3377 ;	Peephole 181	changed mov to clr
   0930 E4                 3378 	clr	a
   0931 34 1C              3379 	addc	a,#(_SendCurr >> 8)
   0933 F5 83              3380 	mov	dph,a
                           3381 ;     genPointerSet
                           3382 ;     genFarPointerSet
   0935 ED                 3383 	mov	a,r5
   0936 F0                 3384 	movx	@dptr,a
                           3385 ;nerd.c:783: en = TRUE;
                           3386 ;     genAssign
   0937 7A 01              3387 	mov	r2,#0x01
   0939                    3388 00110$:
                           3389 ;nerd.c:776: for(i=0; i<n; i++) {
                           3390 ;     genPlus
                           3391 ;     genPlusIncr
   0939 0C                 3392 	inc	r4
                           3393 ;	Peephole 112.b	changed ljmp to sjmp
   093A 80 DC              3394 	sjmp	00108$
   093C                    3395 00111$:
                           3396 ;nerd.c:786: if(en) {
                           3397 ;     genIfx
   093C EA                 3398 	mov	a,r2
                           3399 ;     genIfxJump
                           3400 ;	Peephole 110	removed ljmp by inverse jump logic
   093D 60 28              3401 	jz	00122$
   093F                    3402 00143$:
                           3403 ;nerd.c:787: enq_report(&SendCurr[0]);			  /* ﾚﾎﾟｰﾄｷｭｰに追加 */
                           3404 ;     genCall
                           3405 ;	Peephole 182.a	used 16 bit load of DPTR
   093F 90 1C 00           3406 	mov	dptr,#_SendCurr
   0942 75 F0 01           3407 	mov	b,#0x01
   0945 12 01 CF           3408 	lcall	_enq_report
                           3409 ;nerd.c:789: for(i=0; i<8; i++) {
                           3410 ;     genAssign
   0948 7A 00              3411 	mov	r2,#0x00
   094A                    3412 00118$:
                           3413 ;     genCmpLt
                           3414 ;     genCmp
   094A BA 08 00           3415 	cjne	r2,#0x08,00144$
   094D                    3416 00144$:
                           3417 ;     genIfxJump
                           3418 ;	Peephole 108	removed ljmp by inverse jump logic
   094D 50 0F              3419 	jnc	00121$
   094F                    3420 00145$:
                           3421 ;nerd.c:790: SendCurr[i] = USID_NONE;
                           3422 ;     genPlus
                           3423 ;	Peephole 236.g	used r2 instead of ar2
   094F EA                 3424 	mov	a,r2
   0950 24 00              3425 	add	a,#_SendCurr
   0952 F5 82              3426 	mov	dpl,a
                           3427 ;	Peephole 181	changed mov to clr
   0954 E4                 3428 	clr	a
   0955 34 1C              3429 	addc	a,#(_SendCurr >> 8)
   0957 F5 83              3430 	mov	dph,a
                           3431 ;     genPointerSet
                           3432 ;     genFarPointerSet
                           3433 ;	Peephole 181	changed mov to clr
   0959 E4                 3434 	clr	a
   095A F0                 3435 	movx	@dptr,a
                           3436 ;nerd.c:789: for(i=0; i<8; i++) {
                           3437 ;     genPlus
                           3438 ;     genPlusIncr
   095B 0A                 3439 	inc	r2
                           3440 ;	Peephole 112.b	changed ljmp to sjmp
   095C 80 EC              3441 	sjmp	00118$
   095E                    3442 00121$:
                           3443 ;nerd.c:792: enq_report(&SendCurr[0]);
                           3444 ;     genCall
                           3445 ;	Peephole 182.a	used 16 bit load of DPTR
   095E 90 1C 00           3446 	mov	dptr,#_SendCurr
   0961 75 F0 01           3447 	mov	b,#0x01
                           3448 ;	Peephole 253.c	replaced lcall with ljmp
   0964 02 01 CF           3449 	ljmp	_enq_report
   0967                    3450 00122$:
   0967 22                 3451 	ret
                           3452 ;------------------------------------------------------------
                           3453 ;Allocation info for local variables in function 'core_apply_reset_values'
                           3454 ;------------------------------------------------------------
                           3455 ;------------------------------------------------------------
                           3456 ;nerd.c:801: void core_apply_reset_values(void) using 1
                           3457 ;	-----------------------------------------
                           3458 ;	 function core_apply_reset_values
                           3459 ;	-----------------------------------------
   0968                    3460 _core_apply_reset_values:
                    000A   3461 	ar2 = 0x0a
                    000B   3462 	ar3 = 0x0b
                    000C   3463 	ar4 = 0x0c
                    000D   3464 	ar5 = 0x0d
                    000E   3465 	ar6 = 0x0e
                    000F   3466 	ar7 = 0x0f
                    0008   3467 	ar0 = 0x08
                    0009   3468 	ar1 = 0x09
                           3469 ;nerd.c:803: kbd_idle_mode		  = FALSE;
                           3470 ;     genAssign
   0968 C2 02              3471 	clr	_kbd_idle_mode
                           3472 ;nerd.c:804: kbd_idle_duration	  = 125;
                           3473 ;     genAssign
   096A 75 30 7D           3474 	mov	_kbd_idle_duration,#0x7D
   096D                    3475 00101$:
   096D 22                 3476 	ret
                           3477 ;------------------------------------------------------------
                           3478 ;Allocation info for local variables in function 'setup_keyboard'
                           3479 ;------------------------------------------------------------
                           3480 ;i                         Allocated to registers r2 
                           3481 ;------------------------------------------------------------
                           3482 ;nerd.c:811: static void setup_keyboard(void)
                           3483 ;	-----------------------------------------
                           3484 ;	 function setup_keyboard
                           3485 ;	-----------------------------------------
   096E                    3486 _setup_keyboard:
                    0002   3487 	ar2 = 0x02
                    0003   3488 	ar3 = 0x03
                    0004   3489 	ar4 = 0x04
                    0005   3490 	ar5 = 0x05
                    0006   3491 	ar6 = 0x06
                    0007   3492 	ar7 = 0x07
                    0000   3493 	ar0 = 0x00
                    0001   3494 	ar1 = 0x01
                           3495 ;nerd.c:815: ScanCode = 0;
                           3496 ;     genAssign
   096E 75 21 00           3497 	mov	_ScanCode,#0x00
                           3498 ;nerd.c:818: for(i=0; i<sizeof(SendCurr); i++) {
                           3499 ;     genAssign
   0971 7A 00              3500 	mov	r2,#0x00
   0973                    3501 00101$:
                           3502 ;     genCmpLt
                           3503 ;     genCmp
   0973 BA 08 00           3504 	cjne	r2,#0x08,00121$
   0976                    3505 00121$:
                           3506 ;     genIfxJump
                           3507 ;	Peephole 108	removed ljmp by inverse jump logic
   0976 50 0F              3508 	jnc	00118$
   0978                    3509 00122$:
                           3510 ;nerd.c:819: SendCurr[i] = 0;   /* 0: 空 */
                           3511 ;     genPlus
                           3512 ;	Peephole 236.g	used r2 instead of ar2
   0978 EA                 3513 	mov	a,r2
   0979 24 00              3514 	add	a,#_SendCurr
   097B F5 82              3515 	mov	dpl,a
                           3516 ;	Peephole 181	changed mov to clr
   097D E4                 3517 	clr	a
   097E 34 1C              3518 	addc	a,#(_SendCurr >> 8)
   0980 F5 83              3519 	mov	dph,a
                           3520 ;     genPointerSet
                           3521 ;     genFarPointerSet
                           3522 ;	Peephole 181	changed mov to clr
   0982 E4                 3523 	clr	a
   0983 F0                 3524 	movx	@dptr,a
                           3525 ;nerd.c:818: for(i=0; i<sizeof(SendCurr); i++) {
                           3526 ;     genPlus
                           3527 ;     genPlusIncr
   0984 0A                 3528 	inc	r2
                           3529 ;nerd.c:823: for(i=0; i<sizeof(ScanBuf); i++) {
                           3530 ;	Peephole 112.b	changed ljmp to sjmp
   0985 80 EC              3531 	sjmp	00101$
   0987                    3532 00118$:
                           3533 ;     genAssign
   0987 7A 00              3534 	mov	r2,#0x00
   0989                    3535 00105$:
                           3536 ;     genCmpLt
                           3537 ;     genCmp
   0989 BA 40 00           3538 	cjne	r2,#0x40,00123$
   098C                    3539 00123$:
                           3540 ;     genIfxJump
                           3541 ;	Peephole 108	removed ljmp by inverse jump logic
   098C 50 09              3542 	jnc	00108$
   098E                    3543 00124$:
                           3544 ;nerd.c:824: ScanBuf[i] = KEY_SW_RELEASED;			/* 全ﾘﾘｰｽ */
                           3545 ;     genPlus
                           3546 ;	Peephole 236.g	used r2 instead of ar2
   098E EA                 3547 	mov	a,r2
   098F 24 37              3548 	add	a,#_ScanBuf
                           3549 ;     genPointerSet
                           3550 ;     genNearPointerSet
                           3551 ;	Peephole 239	used a instead of acc
   0991 F8                 3552 	mov	r0,a
   0992 76 80              3553 	mov	@r0,#0x80
                           3554 ;nerd.c:823: for(i=0; i<sizeof(ScanBuf); i++) {
                           3555 ;     genPlus
                           3556 ;     genPlusIncr
   0994 0A                 3557 	inc	r2
                           3558 ;	Peephole 112.b	changed ljmp to sjmp
   0995 80 F2              3559 	sjmp	00105$
   0997                    3560 00108$:
                           3561 ;nerd.c:828: UpdatedKeys.head = UpdatedKeys.tail = 0;
                           3562 ;     genPointerSet
                           3563 ;     genNearPointerSet
   0997 78 78              3564 	mov	r0,#(_UpdatedKeys + 0x0001)
   0999 76 00              3565 	mov	@r0,#0x00
                           3566 ;     genPointerSet
                           3567 ;     genNearPointerSet
   099B 78 77              3568 	mov	r0,#_UpdatedKeys
   099D 76 00              3569 	mov	@r0,#0x00
                           3570 ;nerd.c:831: ModSave = 0x00;
                           3571 ;     genAssign
   099F 78 9A              3572 	mov	r0,#_ModSave
   09A1 76 00              3573 	mov	@r0,#0x00
                           3574 ;nerd.c:834: Report.head = Report.tail = 0;
                           3575 ;     genPointerSet
                           3576 ;     genFarPointerSet
   09A3 90 1C 19           3577 	mov	dptr,#(_Report + 0x0001)
                           3578 ;	Peephole 181	changed mov to clr
                           3579 ;     genPointerSet
                           3580 ;     genFarPointerSet
                           3581 ;	Peephole 181	changed mov to clr
                           3582 ;	Peephole 219	removed redundant clear
   09A6 E4                 3583 	clr	a
   09A7 F0                 3584 	movx	@dptr,a
   09A8 90 1C 18           3585 	mov	dptr,#_Report
   09AB F0                 3586 	movx	@dptr,a
                           3587 ;nerd.c:837: for(i=0; i<KEYMAP_MAX; i++) {
                           3588 ;     genAssign
   09AC 7A 00              3589 	mov	r2,#0x00
   09AE                    3590 00109$:
                           3591 ;     genCmpLt
                           3592 ;     genCmp
   09AE BA 06 00           3593 	cjne	r2,#0x06,00125$
   09B1                    3594 00125$:
                           3595 ;     genIfxJump
                           3596 ;	Peephole 108	removed ljmp by inverse jump logic
   09B1 50 10              3597 	jnc	00113$
   09B3                    3598 00126$:
                           3599 ;nerd.c:838: ScanWith[i] = SCAN_EMPTY;
                           3600 ;     genPlus
                           3601 ;	Peephole 236.g	used r2 instead of ar2
   09B3 EA                 3602 	mov	a,r2
   09B4 24 5A              3603 	add	a,#_ScanWith
   09B6 F5 82              3604 	mov	dpl,a
                           3605 ;	Peephole 181	changed mov to clr
   09B8 E4                 3606 	clr	a
   09B9 34 1C              3607 	addc	a,#(_ScanWith >> 8)
   09BB F5 83              3608 	mov	dph,a
                           3609 ;     genPointerSet
                           3610 ;     genFarPointerSet
   09BD 74 FF              3611 	mov	a,#0xFF
   09BF F0                 3612 	movx	@dptr,a
                           3613 ;nerd.c:837: for(i=0; i<KEYMAP_MAX; i++) {
                           3614 ;     genPlus
                           3615 ;     genPlusIncr
   09C0 0A                 3616 	inc	r2
                           3617 ;	Peephole 112.b	changed ljmp to sjmp
   09C1 80 EB              3618 	sjmp	00109$
   09C3                    3619 00113$:
   09C3 22                 3620 	ret
                           3621 ;------------------------------------------------------------
                           3622 ;Allocation info for local variables in function '_sdcc_external_startup'
                           3623 ;------------------------------------------------------------
                           3624 ;i                         Allocated to registers r2 
                           3625 ;------------------------------------------------------------
                           3626 ;nerd.c:848: uchar _sdcc_external_startup(void)
                           3627 ;	-----------------------------------------
                           3628 ;	 function _sdcc_external_startup
                           3629 ;	-----------------------------------------
   09C4                    3630 __sdcc_external_startup:
                           3631 ;nerd.c:856: for(i=2; i>0; i--) ;
                           3632 ;     genAssign
   09C4 7A 02              3633 	mov	r2,#0x02
   09C6                    3634 00101$:
                           3635 ;     genCmpGt
                           3636 ;     genCmp
                           3637 ;     genIfxJump
                           3638 ;	Peephole 108	removed ljmp by inverse jump logic
                           3639 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   09C6 EA                 3640 	mov	a,r2
   09C7 24 FF              3641 	add	a,#0xff - 0x00
   09C9 50 03              3642 	jnc	00104$
   09CB                    3643 00109$:
                           3644 ;     genMinus
                           3645 ;     genMinusDec
   09CB 1A                 3646 	dec	r2
                           3647 ;	Peephole 112.b	changed ljmp to sjmp
   09CC 80 F8              3648 	sjmp	00101$
   09CE                    3649 00104$:
                           3650 ;nerd.c:859: USBCS &= ~0x04;				/* tristate the Disconnect pin */
                           3651 ;     genAssign
                           3652 ;     genAnd
                           3653 ;	Peephole 248.b	optimized and to xdata
                           3654 ;nerd.c:860: USBCS |= 0x08;				/* disconnect USB core		   */
                           3655 ;     genAssign
                           3656 ;     genOr
                           3657 ;	Peephole 248.a	optimized or to xdata
                           3658 ;	Peephole 248.g	optimized and/or to volatile xdata
   09CE 90 7F D6           3659 	mov	dptr,#_USBCS
   09D1 E0                 3660 	movx	a,@dptr
   09D2 54 FB              3661 	anl	a,#0xFB
   09D4 F0                 3662 	movx	@dptr,a
   09D5 E0                 3663 	movx	a,@dptr
   09D6 FA                 3664 	mov	r2,a
   09D7 44 08              3665 	orl	a,#0x08
   09D9 F0                 3666 	movx	@dptr,a
                           3667 ;nerd.c:863: return 0;
                           3668 ;     genRet
   09DA 75 82 00           3669 	mov	dpl,#0x00
   09DD                    3670 00105$:
   09DD 22                 3671 	ret
                           3672 ;------------------------------------------------------------
                           3673 ;Allocation info for local variables in function 'main'
                           3674 ;------------------------------------------------------------
                           3675 ;wait                      Allocated to registers r2 r3 
                           3676 ;------------------------------------------------------------
                           3677 ;nerd.c:875: void main(void)
                           3678 ;	-----------------------------------------
                           3679 ;	 function main
                           3680 ;	-----------------------------------------
   09DE                    3681 _main:
                           3682 ;nerd.c:881: while(wait-- > 0) ;
                           3683 ;     genAssign
   09DE 7A 00              3684 	mov	r2,#0x00
   09E0 7B 40              3685 	mov	r3,#0x40
   09E2                    3686 00101$:
                           3687 ;     genAssign
   09E2 8A 04              3688 	mov	ar4,r2
   09E4 8B 05              3689 	mov	ar5,r3
                           3690 ;     genMinus
                           3691 ;     genMinusDec
   09E6 1A                 3692 	dec	r2
   09E7 BA FF 01           3693 	cjne	r2,#0xff,00112$
   09EA 1B                 3694 	dec	r3
   09EB                    3695 00112$:
                           3696 ;     genIfx
   09EB EC                 3697 	mov	a,r4
   09EC 4D                 3698 	orl	a,r5
                           3699 ;     genIfxJump
                           3700 ;	Peephole 109	removed ljmp by inverse jump logic
   09ED 70 F3              3701 	jnz	00101$
   09EF                    3702 00113$:
                           3703 ;nerd.c:884: __di();						  /* disable global interrupt */
                           3704 ;     genAssign
   09EF C2 AF              3705 	clr	_EA
                           3706 ;nerd.c:886: init_mcu();					  /* init ez-usb hardware */
                           3707 ;     genCall
   09F1 12 01 75           3708 	lcall	_init_mcu
                           3709 ;nerd.c:887: init_interrupt_usb();
                           3710 ;     genCall
   09F4 12 12 BC           3711 	lcall	_init_interrupt_usb
                           3712 ;nerd.c:888: init_interrupt_timer0();
                           3713 ;     genCall
   09F7 12 01 94           3714 	lcall	_init_interrupt_timer0
                           3715 ;nerd.c:889: init_interrupt_timer2();
                           3716 ;     genCall
   09FA 12 01 B6           3717 	lcall	_init_interrupt_timer2
                           3718 ;nerd.c:891: __debug_out_init();			  /* for serial debug */
                           3719 ;     genCall
   09FD 12 13 E6           3720 	lcall	_InitSci1
                           3721 ;nerd.c:893: __ei();						  /* enable global interrupt */
                           3722 ;     genAssign
   0A00 D2 AF              3723 	setb	_EA
                           3724 ;nerd.c:895: apply_reset_values();		  /* initialize global variables */
                           3725 ;     genCall
   0A02 12 0D 2A           3726 	lcall	_apply_reset_values
                           3727 ;nerd.c:896: setup_keyboard();
                           3728 ;     genCall
   0A05 12 09 6E           3729 	lcall	_setup_keyboard
                           3730 ;nerd.c:899: USBCS |= 0x02;				  /* activate RENUM						*/
                           3731 ;     genAssign
                           3732 ;     genOr
                           3733 ;	Peephole 248.a	optimized or to xdata
                           3734 ;nerd.c:900: USBCS &= ~0x08;				  /* deactivate DISCON					*/
                           3735 ;     genAssign
                           3736 ;     genAnd
                           3737 ;	Peephole 248.b	optimized and to xdata
                           3738 ;nerd.c:901: USBCS |= 0x04;				  /* release tristate on Disconnect pin */
                           3739 ;     genAssign
                           3740 ;     genOr
                           3741 ;	Peephole 248.a	optimized or to xdata
                           3742 ;	Peephole 248.d	optimized or/and/or to volatile xdata
   0A08 90 7F D6           3743 	mov	dptr,#_USBCS
   0A0B E0                 3744 	movx	a,@dptr
   0A0C 44 02              3745 	orl	a,#0x02
   0A0E F0                 3746 	movx	@dptr,a
   0A0F E0                 3747 	movx	a,@dptr
   0A10 54 F7              3748 	anl	a,#0xF7
   0A12 F0                 3749 	movx	@dptr,a
   0A13 E0                 3750 	movx	a,@dptr
   0A14 FA                 3751 	mov	r2,a
   0A15 44 04              3752 	orl	a,#0x04
   0A17 F0                 3753 	movx	@dptr,a
                           3754 ;nerd.c:904: MapSet = get_mapset_num();	  /* select keymap set */
                           3755 ;     genCall
   0A18 12 04 AF           3756 	lcall	_get_mapset_num
   0A1B E5 82              3757 	mov	a,dpl
                           3758 ;     genAssign
   0A1D 78 99              3759 	mov	r0,#_MapSet
   0A1F F6                 3760 	mov	@r0,a
                           3761 ;nerd.c:906: EnqPreSend();				  /* enqueue keys send automatic */
                           3762 ;     genCall
   0A20 12 08 D0           3763 	lcall	_EnqPreSend
                           3764 ;nerd.c:908: nerd_loop();				  /* main loop of nerd */
                           3765 ;     genCall
   0A23 12 05 E3           3766 	lcall	_nerd_loop
                           3767 ;nerd.c:910: while(1) ;					  /* dummy loop */
   0A26                    3768 00105$:
                           3769 ;	Peephole 112.b	changed ljmp to sjmp
   0A26 80 FE              3770 	sjmp	00105$
   0A28                    3771 00107$:
   0A28 22                 3772 	ret
                           3773 	.area CSEG    (CODE)
   0A29                    3774 _PreSend:
   0A29 00                 3775 	.db #0x00
   0A2A                    3776 _Keymap:
   0A2A 1F                 3777 	.db #0x1F
   0A2B 14                 3778 	.db #0x14
   0A2C 1A                 3779 	.db #0x1A
   0A2D 16                 3780 	.db #0x16
   0A2E 04                 3781 	.db #0x04
   0A2F 1D                 3782 	.db #0x1D
   0A30 1B                 3783 	.db #0x1B
   0A31 06                 3784 	.db #0x06
   0A32 20                 3785 	.db #0x20
   0A33 21                 3786 	.db #0x21
   0A34 15                 3787 	.db #0x15
   0A35 08                 3788 	.db #0x08
   0A36 07                 3789 	.db #0x07
   0A37 09                 3790 	.db #0x09
   0A38 19                 3791 	.db #0x19
   0A39 05                 3792 	.db #0x05
   0A3A 22                 3793 	.db #0x22
   0A3B 23                 3794 	.db #0x23
   0A3C 1C                 3795 	.db #0x1C
   0A3D 17                 3796 	.db #0x17
   0A3E 0A                 3797 	.db #0x0A
   0A3F 0B                 3798 	.db #0x0B
   0A40 11                 3799 	.db #0x11
   0A41 00                 3800 	.db #0x00
   0A42 1E                 3801 	.db #0x1E
   0A43 29                 3802 	.db #0x29
   0A44 2B                 3803 	.db #0x2B
   0A45 2C                 3804 	.db #0x2C
   0A46 E1                 3805 	.db #0xE1
   0A47 E2                 3806 	.db #0xE2
   0A48 EA                 3807 	.db #0xEA
   0A49 E9                 3808 	.db #0xE9
   0A4A 24                 3809 	.db #0x24
   0A4B 25                 3810 	.db #0x25
   0A4C 18                 3811 	.db #0x18
   0A4D 0C                 3812 	.db #0x0C
   0A4E 0E                 3813 	.db #0x0E
   0A4F 0D                 3814 	.db #0x0D
   0A50 10                 3815 	.db #0x10
   0A51 00                 3816 	.db #0x00
   0A52 31                 3817 	.db #0x31
   0A53 35                 3818 	.db #0x35
   0A54 2A                 3819 	.db #0x2A
   0A55 28                 3820 	.db #0x28
   0A56 EC                 3821 	.db #0xEC
   0A57 E5                 3822 	.db #0xE5
   0A58 EB                 3823 	.db #0xEB
   0A59 35                 3824 	.db #0x35
   0A5A 26                 3825 	.db #0x26
   0A5B 27                 3826 	.db #0x27
   0A5C 12                 3827 	.db #0x12
   0A5D 13                 3828 	.db #0x13
   0A5E 33                 3829 	.db #0x33
   0A5F 0F                 3830 	.db #0x0F
   0A60 36                 3831 	.db #0x36
   0A61 00                 3832 	.db #0x00
   0A62 2D                 3833 	.db #0x2D
   0A63 2E                 3834 	.db #0x2E
   0A64 30                 3835 	.db #0x30
   0A65 2F                 3836 	.db #0x2F
   0A66 34                 3837 	.db #0x34
   0A67 38                 3838 	.db #0x38
   0A68 37                 3839 	.db #0x37
   0A69 00                 3840 	.db #0x00
   0A6A ED                 3841 	.db #0xED
   0A6B ED                 3842 	.db #0xED
   0A6C ED                 3843 	.db #0xED
   0A6D ED                 3844 	.db #0xED
   0A6E 4A                 3845 	.db #0x4A
   0A6F ED                 3846 	.db #0xED
   0A70 ED                 3847 	.db #0xED
   0A71 ED                 3848 	.db #0xED
   0A72 ED                 3849 	.db #0xED
   0A73 ED                 3850 	.db #0xED
   0A74 ED                 3851 	.db #0xED
   0A75 4D                 3852 	.db #0x4D
   0A76 4C                 3853 	.db #0x4C
   0A77 4F                 3854 	.db #0x4F
   0A78 ED                 3855 	.db #0xED
   0A79 50                 3856 	.db #0x50
   0A7A ED                 3857 	.db #0xED
   0A7B ED                 3858 	.db #0xED
   0A7C ED                 3859 	.db #0xED
   0A7D ED                 3860 	.db #0xED
   0A7E ED                 3861 	.db #0xED
   0A7F 2A                 3862 	.db #0x2A
   0A80 51                 3863 	.db #0x51
   0A81 00                 3864 	.db #0x00
   0A82 ED                 3865 	.db #0xED
   0A83 ED                 3866 	.db #0xED
   0A84 ED                 3867 	.db #0xED
   0A85 ED                 3868 	.db #0xED
   0A86 ED                 3869 	.db #0xED
   0A87 ED                 3870 	.db #0xED
   0A88 ED                 3871 	.db #0xED
   0A89 ED                 3872 	.db #0xED
   0A8A ED                 3873 	.db #0xED
   0A8B ED                 3874 	.db #0xED
   0A8C ED                 3875 	.db #0xED
   0A8D ED                 3876 	.db #0xED
   0A8E ED                 3877 	.db #0xED
   0A8F ED                 3878 	.db #0xED
   0A90 ED                 3879 	.db #0xED
   0A91 00                 3880 	.db #0x00
   0A92 ED                 3881 	.db #0xED
   0A93 ED                 3882 	.db #0xED
   0A94 4C                 3883 	.db #0x4C
   0A95 ED                 3884 	.db #0xED
   0A96 00                 3885 	.db #0x00
   0A97 ED                 3886 	.db #0xED
   0A98 00                 3887 	.db #0x00
   0A99 ED                 3888 	.db #0xED
   0A9A ED                 3889 	.db #0xED
   0A9B ED                 3890 	.db #0xED
   0A9C ED                 3891 	.db #0xED
   0A9D 52                 3892 	.db #0x52
   0A9E ED                 3893 	.db #0xED
   0A9F ED                 3894 	.db #0xED
   0AA0 ED                 3895 	.db #0xED
   0AA1 00                 3896 	.db #0x00
   0AA2 ED                 3897 	.db #0xED
   0AA3 ED                 3898 	.db #0xED
   0AA4 ED                 3899 	.db #0xED
   0AA5 ED                 3900 	.db #0xED
   0AA6 ED                 3901 	.db #0xED
   0AA7 ED                 3902 	.db #0xED
   0AA8 ED                 3903 	.db #0xED
   0AA9 00                 3904 	.db #0x00
   0AAA ED                 3905 	.db #0xED
   0AAB ED                 3906 	.db #0xED
   0AAC ED                 3907 	.db #0xED
   0AAD ED                 3908 	.db #0xED
   0AAE ED                 3909 	.db #0xED
   0AAF ED                 3910 	.db #0xED
   0AB0 ED                 3911 	.db #0xED
   0AB1 ED                 3912 	.db #0xED
   0AB2 ED                 3913 	.db #0xED
   0AB3 ED                 3914 	.db #0xED
   0AB4 ED                 3915 	.db #0xED
   0AB5 ED                 3916 	.db #0xED
   0AB6 ED                 3917 	.db #0xED
   0AB7 ED                 3918 	.db #0xED
   0AB8 ED                 3919 	.db #0xED
   0AB9 ED                 3920 	.db #0xED
   0ABA ED                 3921 	.db #0xED
   0ABB ED                 3922 	.db #0xED
   0ABC ED                 3923 	.db #0xED
   0ABD ED                 3924 	.db #0xED
   0ABE ED                 3925 	.db #0xED
   0ABF ED                 3926 	.db #0xED
   0AC0 4E                 3927 	.db #0x4E
   0AC1 00                 3928 	.db #0x00
   0AC2 ED                 3929 	.db #0xED
   0AC3 ED                 3930 	.db #0xED
   0AC4 ED                 3931 	.db #0xED
   0AC5 ED                 3932 	.db #0xED
   0AC6 ED                 3933 	.db #0xED
   0AC7 00                 3934 	.db #0x00
   0AC8 ED                 3935 	.db #0xED
   0AC9 ED                 3936 	.db #0xED
   0ACA ED                 3937 	.db #0xED
   0ACB ED                 3938 	.db #0xED
   0ACC ED                 3939 	.db #0xED
   0ACD ED                 3940 	.db #0xED
   0ACE ED                 3941 	.db #0xED
   0ACF ED                 3942 	.db #0xED
   0AD0 ED                 3943 	.db #0xED
   0AD1 00                 3944 	.db #0x00
   0AD2 ED                 3945 	.db #0xED
   0AD3 ED                 3946 	.db #0xED
   0AD4 ED                 3947 	.db #0xED
   0AD5 ED                 3948 	.db #0xED
   0AD6 00                 3949 	.db #0x00
   0AD7 ED                 3950 	.db #0xED
   0AD8 ED                 3951 	.db #0xED
   0AD9 ED                 3952 	.db #0xED
   0ADA ED                 3953 	.db #0xED
   0ADB ED                 3954 	.db #0xED
   0ADC ED                 3955 	.db #0xED
   0ADD 4B                 3956 	.db #0x4B
   0ADE ED                 3957 	.db #0xED
   0ADF ED                 3958 	.db #0xED
   0AE0 ED                 3959 	.db #0xED
   0AE1 00                 3960 	.db #0x00
   0AE2 ED                 3961 	.db #0xED
   0AE3 ED                 3962 	.db #0xED
   0AE4 ED                 3963 	.db #0xED
   0AE5 ED                 3964 	.db #0xED
   0AE6 ED                 3965 	.db #0xED
   0AE7 ED                 3966 	.db #0xED
   0AE8 ED                 3967 	.db #0xED
   0AE9 00                 3968 	.db #0x00
   0AEA EF                 3969 	.db #0xEF
   0AEB EF                 3970 	.db #0xEF
   0AEC EF                 3971 	.db #0xEF
   0AED EF                 3972 	.db #0xEF
   0AEE EF                 3973 	.db #0xEF
   0AEF EF                 3974 	.db #0xEF
   0AF0 EF                 3975 	.db #0xEF
   0AF1 EF                 3976 	.db #0xEF
   0AF2 EF                 3977 	.db #0xEF
   0AF3 EF                 3978 	.db #0xEF
   0AF4 EF                 3979 	.db #0xEF
   0AF5 EF                 3980 	.db #0xEF
   0AF6 EF                 3981 	.db #0xEF
   0AF7 EF                 3982 	.db #0xEF
   0AF8 EF                 3983 	.db #0xEF
   0AF9 EF                 3984 	.db #0xEF
   0AFA EF                 3985 	.db #0xEF
   0AFB EF                 3986 	.db #0xEF
   0AFC EF                 3987 	.db #0xEF
   0AFD EF                 3988 	.db #0xEF
   0AFE EF                 3989 	.db #0xEF
   0AFF EF                 3990 	.db #0xEF
   0B00 EF                 3991 	.db #0xEF
   0B01 EF                 3992 	.db #0xEF
   0B02 EF                 3993 	.db #0xEF
   0B03 EF                 3994 	.db #0xEF
   0B04 EF                 3995 	.db #0xEF
   0B05 EF                 3996 	.db #0xEF
   0B06 EF                 3997 	.db #0xEF
   0B07 EF                 3998 	.db #0xEF
   0B08 EF                 3999 	.db #0xEF
   0B09 EF                 4000 	.db #0xEF
   0B0A EF                 4001 	.db #0xEF
   0B0B EF                 4002 	.db #0xEF
   0B0C EF                 4003 	.db #0xEF
   0B0D EF                 4004 	.db #0xEF
   0B0E EF                 4005 	.db #0xEF
   0B0F EF                 4006 	.db #0xEF
   0B10 EF                 4007 	.db #0xEF
   0B11 EF                 4008 	.db #0xEF
   0B12 EF                 4009 	.db #0xEF
   0B13 EF                 4010 	.db #0xEF
   0B14 EF                 4011 	.db #0xEF
   0B15 EF                 4012 	.db #0xEF
   0B16 EF                 4013 	.db #0xEF
   0B17 EF                 4014 	.db #0xEF
   0B18 EF                 4015 	.db #0xEF
   0B19 EF                 4016 	.db #0xEF
   0B1A EF                 4017 	.db #0xEF
   0B1B EF                 4018 	.db #0xEF
   0B1C EF                 4019 	.db #0xEF
   0B1D EF                 4020 	.db #0xEF
   0B1E EF                 4021 	.db #0xEF
   0B1F EF                 4022 	.db #0xEF
   0B20 EF                 4023 	.db #0xEF
   0B21 EF                 4024 	.db #0xEF
   0B22 EF                 4025 	.db #0xEF
   0B23 EF                 4026 	.db #0xEF
   0B24 EF                 4027 	.db #0xEF
   0B25 EF                 4028 	.db #0xEF
   0B26 EF                 4029 	.db #0xEF
   0B27 EF                 4030 	.db #0xEF
   0B28 EF                 4031 	.db #0xEF
   0B29 00                 4032 	.db #0x00
   0B2A 00                 4033 	.db #0x00
   0B2B 00                 4034 	.db #0x00
   0B2C 00                 4035 	.db #0x00
   0B2D 00                 4036 	.db #0x00
   0B2E 00                 4037 	.db #0x00
   0B2F 00                 4038 	.db #0x00
   0B30 00                 4039 	.db #0x00
   0B31 00                 4040 	.db #0x00
   0B32 00                 4041 	.db #0x00
   0B33 00                 4042 	.db #0x00
   0B34 00                 4043 	.db #0x00
   0B35 00                 4044 	.db #0x00
   0B36 00                 4045 	.db #0x00
   0B37 00                 4046 	.db #0x00
   0B38 00                 4047 	.db #0x00
   0B39 00                 4048 	.db #0x00
   0B3A 00                 4049 	.db #0x00
   0B3B 00                 4050 	.db #0x00
   0B3C 00                 4051 	.db #0x00
   0B3D 00                 4052 	.db #0x00
   0B3E 00                 4053 	.db #0x00
   0B3F 00                 4054 	.db #0x00
   0B40 00                 4055 	.db #0x00
   0B41 00                 4056 	.db #0x00
   0B42 00                 4057 	.db #0x00
   0B43 00                 4058 	.db #0x00
   0B44 00                 4059 	.db #0x00
   0B45 00                 4060 	.db #0x00
   0B46 00                 4061 	.db #0x00
   0B47 00                 4062 	.db #0x00
   0B48 00                 4063 	.db #0x00
   0B49 00                 4064 	.db #0x00
   0B4A 00                 4065 	.db #0x00
   0B4B 00                 4066 	.db #0x00
   0B4C 00                 4067 	.db #0x00
   0B4D 00                 4068 	.db #0x00
   0B4E 00                 4069 	.db #0x00
   0B4F 00                 4070 	.db #0x00
   0B50 00                 4071 	.db #0x00
   0B51 00                 4072 	.db #0x00
   0B52 00                 4073 	.db #0x00
   0B53 00                 4074 	.db #0x00
   0B54 00                 4075 	.db #0x00
   0B55 00                 4076 	.db #0x00
   0B56 00                 4077 	.db #0x00
   0B57 00                 4078 	.db #0x00
   0B58 00                 4079 	.db #0x00
   0B59 00                 4080 	.db #0x00
   0B5A 00                 4081 	.db #0x00
   0B5B 00                 4082 	.db #0x00
   0B5C 00                 4083 	.db #0x00
   0B5D 00                 4084 	.db #0x00
   0B5E 00                 4085 	.db #0x00
   0B5F 00                 4086 	.db #0x00
   0B60 00                 4087 	.db #0x00
   0B61 00                 4088 	.db #0x00
   0B62 00                 4089 	.db #0x00
   0B63 00                 4090 	.db #0x00
   0B64 00                 4091 	.db #0x00
   0B65 00                 4092 	.db #0x00
   0B66 00                 4093 	.db #0x00
   0B67 00                 4094 	.db #0x00
   0B68 00                 4095 	.db #0x00
   0B69 00                 4096 	.db #0x00
   0B6A 00                 4097 	.db #0x00
   0B6B 00                 4098 	.db #0x00
   0B6C 00                 4099 	.db #0x00
   0B6D 00                 4100 	.db #0x00
   0B6E 00                 4101 	.db #0x00
   0B6F 00                 4102 	.db #0x00
   0B70 00                 4103 	.db #0x00
   0B71 00                 4104 	.db #0x00
   0B72 00                 4105 	.db #0x00
   0B73 00                 4106 	.db #0x00
   0B74 00                 4107 	.db #0x00
   0B75 00                 4108 	.db #0x00
   0B76 00                 4109 	.db #0x00
   0B77 00                 4110 	.db #0x00
   0B78 00                 4111 	.db #0x00
   0B79 00                 4112 	.db #0x00
   0B7A 00                 4113 	.db #0x00
   0B7B 00                 4114 	.db #0x00
   0B7C 00                 4115 	.db #0x00
   0B7D 00                 4116 	.db #0x00
   0B7E 00                 4117 	.db #0x00
   0B7F 00                 4118 	.db #0x00
   0B80 00                 4119 	.db #0x00
   0B81 00                 4120 	.db #0x00
   0B82 00                 4121 	.db #0x00
   0B83 00                 4122 	.db #0x00
   0B84 00                 4123 	.db #0x00
   0B85 00                 4124 	.db #0x00
   0B86 00                 4125 	.db #0x00
   0B87 00                 4126 	.db #0x00
   0B88 00                 4127 	.db #0x00
   0B89 00                 4128 	.db #0x00
   0B8A 00                 4129 	.db #0x00
   0B8B 00                 4130 	.db #0x00
   0B8C 00                 4131 	.db #0x00
   0B8D 00                 4132 	.db #0x00
   0B8E 00                 4133 	.db #0x00
   0B8F 00                 4134 	.db #0x00
   0B90 00                 4135 	.db #0x00
   0B91 00                 4136 	.db #0x00
   0B92 00                 4137 	.db #0x00
   0B93 00                 4138 	.db #0x00
   0B94 00                 4139 	.db #0x00
   0B95 00                 4140 	.db #0x00
   0B96 00                 4141 	.db #0x00
   0B97 00                 4142 	.db #0x00
   0B98 00                 4143 	.db #0x00
   0B99 00                 4144 	.db #0x00
   0B9A 00                 4145 	.db #0x00
   0B9B 00                 4146 	.db #0x00
   0B9C 00                 4147 	.db #0x00
   0B9D 00                 4148 	.db #0x00
   0B9E 00                 4149 	.db #0x00
   0B9F 00                 4150 	.db #0x00
   0BA0 00                 4151 	.db #0x00
   0BA1 00                 4152 	.db #0x00
   0BA2 00                 4153 	.db #0x00
   0BA3 00                 4154 	.db #0x00
   0BA4 00                 4155 	.db #0x00
   0BA5 00                 4156 	.db #0x00
   0BA6 00                 4157 	.db #0x00
   0BA7 00                 4158 	.db #0x00
   0BA8 00                 4159 	.db #0x00
   0BA9 00                 4160 	.db #0x00
   0BAA 1F                 4161 	.db #0x1F
   0BAB 14                 4162 	.db #0x14
   0BAC 1A                 4163 	.db #0x1A
   0BAD 16                 4164 	.db #0x16
   0BAE 04                 4165 	.db #0x04
   0BAF 1D                 4166 	.db #0x1D
   0BB0 1B                 4167 	.db #0x1B
   0BB1 06                 4168 	.db #0x06
   0BB2 20                 4169 	.db #0x20
   0BB3 21                 4170 	.db #0x21
   0BB4 15                 4171 	.db #0x15
   0BB5 08                 4172 	.db #0x08
   0BB6 07                 4173 	.db #0x07
   0BB7 09                 4174 	.db #0x09
   0BB8 19                 4175 	.db #0x19
   0BB9 05                 4176 	.db #0x05
   0BBA 22                 4177 	.db #0x22
   0BBB 23                 4178 	.db #0x23
   0BBC 1C                 4179 	.db #0x1C
   0BBD 17                 4180 	.db #0x17
   0BBE 0A                 4181 	.db #0x0A
   0BBF 0B                 4182 	.db #0x0B
   0BC0 11                 4183 	.db #0x11
   0BC1 00                 4184 	.db #0x00
   0BC2 1E                 4185 	.db #0x1E
   0BC3 29                 4186 	.db #0x29
   0BC4 2B                 4187 	.db #0x2B
   0BC5 2C                 4188 	.db #0x2C
   0BC6 E1                 4189 	.db #0xE1
   0BC7 E2                 4190 	.db #0xE2
   0BC8 EA                 4191 	.db #0xEA
   0BC9 E9                 4192 	.db #0xE9
   0BCA 24                 4193 	.db #0x24
   0BCB 25                 4194 	.db #0x25
   0BCC 18                 4195 	.db #0x18
   0BCD 0C                 4196 	.db #0x0C
   0BCE 0E                 4197 	.db #0x0E
   0BCF 0D                 4198 	.db #0x0D
   0BD0 10                 4199 	.db #0x10
   0BD1 00                 4200 	.db #0x00
   0BD2 31                 4201 	.db #0x31
   0BD3 35                 4202 	.db #0x35
   0BD4 2A                 4203 	.db #0x2A
   0BD5 28                 4204 	.db #0x28
   0BD6 EC                 4205 	.db #0xEC
   0BD7 E5                 4206 	.db #0xE5
   0BD8 EB                 4207 	.db #0xEB
   0BD9 35                 4208 	.db #0x35
   0BDA 26                 4209 	.db #0x26
   0BDB 27                 4210 	.db #0x27
   0BDC 12                 4211 	.db #0x12
   0BDD 13                 4212 	.db #0x13
   0BDE 33                 4213 	.db #0x33
   0BDF 0F                 4214 	.db #0x0F
   0BE0 36                 4215 	.db #0x36
   0BE1 00                 4216 	.db #0x00
   0BE2 2D                 4217 	.db #0x2D
   0BE3 2E                 4218 	.db #0x2E
   0BE4 30                 4219 	.db #0x30
   0BE5 2F                 4220 	.db #0x2F
   0BE6 34                 4221 	.db #0x34
   0BE7 38                 4222 	.db #0x38
   0BE8 37                 4223 	.db #0x37
   0BE9 00                 4224 	.db #0x00
   0BEA ED                 4225 	.db #0xED
   0BEB ED                 4226 	.db #0xED
   0BEC ED                 4227 	.db #0xED
   0BED ED                 4228 	.db #0xED
   0BEE 4A                 4229 	.db #0x4A
   0BEF ED                 4230 	.db #0xED
   0BF0 ED                 4231 	.db #0xED
   0BF1 ED                 4232 	.db #0xED
   0BF2 ED                 4233 	.db #0xED
   0BF3 ED                 4234 	.db #0xED
   0BF4 ED                 4235 	.db #0xED
   0BF5 4D                 4236 	.db #0x4D
   0BF6 4C                 4237 	.db #0x4C
   0BF7 4F                 4238 	.db #0x4F
   0BF8 ED                 4239 	.db #0xED
   0BF9 50                 4240 	.db #0x50
   0BFA ED                 4241 	.db #0xED
   0BFB ED                 4242 	.db #0xED
   0BFC ED                 4243 	.db #0xED
   0BFD ED                 4244 	.db #0xED
   0BFE ED                 4245 	.db #0xED
   0BFF 2A                 4246 	.db #0x2A
   0C00 51                 4247 	.db #0x51
   0C01 00                 4248 	.db #0x00
   0C02 ED                 4249 	.db #0xED
   0C03 ED                 4250 	.db #0xED
   0C04 ED                 4251 	.db #0xED
   0C05 ED                 4252 	.db #0xED
   0C06 ED                 4253 	.db #0xED
   0C07 ED                 4254 	.db #0xED
   0C08 ED                 4255 	.db #0xED
   0C09 ED                 4256 	.db #0xED
   0C0A ED                 4257 	.db #0xED
   0C0B ED                 4258 	.db #0xED
   0C0C ED                 4259 	.db #0xED
   0C0D ED                 4260 	.db #0xED
   0C0E ED                 4261 	.db #0xED
   0C0F ED                 4262 	.db #0xED
   0C10 ED                 4263 	.db #0xED
   0C11 00                 4264 	.db #0x00
   0C12 ED                 4265 	.db #0xED
   0C13 ED                 4266 	.db #0xED
   0C14 4C                 4267 	.db #0x4C
   0C15 ED                 4268 	.db #0xED
   0C16 00                 4269 	.db #0x00
   0C17 ED                 4270 	.db #0xED
   0C18 00                 4271 	.db #0x00
   0C19 ED                 4272 	.db #0xED
   0C1A ED                 4273 	.db #0xED
   0C1B ED                 4274 	.db #0xED
   0C1C ED                 4275 	.db #0xED
   0C1D 52                 4276 	.db #0x52
   0C1E ED                 4277 	.db #0xED
   0C1F ED                 4278 	.db #0xED
   0C20 ED                 4279 	.db #0xED
   0C21 00                 4280 	.db #0x00
   0C22 ED                 4281 	.db #0xED
   0C23 ED                 4282 	.db #0xED
   0C24 ED                 4283 	.db #0xED
   0C25 ED                 4284 	.db #0xED
   0C26 ED                 4285 	.db #0xED
   0C27 ED                 4286 	.db #0xED
   0C28 ED                 4287 	.db #0xED
   0C29 00                 4288 	.db #0x00
   0C2A ED                 4289 	.db #0xED
   0C2B ED                 4290 	.db #0xED
   0C2C ED                 4291 	.db #0xED
   0C2D ED                 4292 	.db #0xED
   0C2E ED                 4293 	.db #0xED
   0C2F ED                 4294 	.db #0xED
   0C30 ED                 4295 	.db #0xED
   0C31 ED                 4296 	.db #0xED
   0C32 ED                 4297 	.db #0xED
   0C33 ED                 4298 	.db #0xED
   0C34 ED                 4299 	.db #0xED
   0C35 ED                 4300 	.db #0xED
   0C36 ED                 4301 	.db #0xED
   0C37 ED                 4302 	.db #0xED
   0C38 ED                 4303 	.db #0xED
   0C39 ED                 4304 	.db #0xED
   0C3A ED                 4305 	.db #0xED
   0C3B ED                 4306 	.db #0xED
   0C3C ED                 4307 	.db #0xED
   0C3D ED                 4308 	.db #0xED
   0C3E ED                 4309 	.db #0xED
   0C3F ED                 4310 	.db #0xED
   0C40 4E                 4311 	.db #0x4E
   0C41 00                 4312 	.db #0x00
   0C42 ED                 4313 	.db #0xED
   0C43 ED                 4314 	.db #0xED
   0C44 ED                 4315 	.db #0xED
   0C45 ED                 4316 	.db #0xED
   0C46 ED                 4317 	.db #0xED
   0C47 00                 4318 	.db #0x00
   0C48 ED                 4319 	.db #0xED
   0C49 ED                 4320 	.db #0xED
   0C4A ED                 4321 	.db #0xED
   0C4B ED                 4322 	.db #0xED
   0C4C ED                 4323 	.db #0xED
   0C4D ED                 4324 	.db #0xED
   0C4E ED                 4325 	.db #0xED
   0C4F ED                 4326 	.db #0xED
   0C50 ED                 4327 	.db #0xED
   0C51 00                 4328 	.db #0x00
   0C52 ED                 4329 	.db #0xED
   0C53 ED                 4330 	.db #0xED
   0C54 ED                 4331 	.db #0xED
   0C55 ED                 4332 	.db #0xED
   0C56 00                 4333 	.db #0x00
   0C57 ED                 4334 	.db #0xED
   0C58 ED                 4335 	.db #0xED
   0C59 ED                 4336 	.db #0xED
   0C5A ED                 4337 	.db #0xED
   0C5B ED                 4338 	.db #0xED
   0C5C ED                 4339 	.db #0xED
   0C5D 4B                 4340 	.db #0x4B
   0C5E ED                 4341 	.db #0xED
   0C5F ED                 4342 	.db #0xED
   0C60 ED                 4343 	.db #0xED
   0C61 00                 4344 	.db #0x00
   0C62 ED                 4345 	.db #0xED
   0C63 ED                 4346 	.db #0xED
   0C64 ED                 4347 	.db #0xED
   0C65 ED                 4348 	.db #0xED
   0C66 ED                 4349 	.db #0xED
   0C67 ED                 4350 	.db #0xED
   0C68 ED                 4351 	.db #0xED
   0C69 00                 4352 	.db #0x00
   0C6A EF                 4353 	.db #0xEF
   0C6B EF                 4354 	.db #0xEF
   0C6C EF                 4355 	.db #0xEF
   0C6D EF                 4356 	.db #0xEF
   0C6E EF                 4357 	.db #0xEF
   0C6F EF                 4358 	.db #0xEF
   0C70 EF                 4359 	.db #0xEF
   0C71 EF                 4360 	.db #0xEF
   0C72 EF                 4361 	.db #0xEF
   0C73 EF                 4362 	.db #0xEF
   0C74 EF                 4363 	.db #0xEF
   0C75 EF                 4364 	.db #0xEF
   0C76 EF                 4365 	.db #0xEF
   0C77 EF                 4366 	.db #0xEF
   0C78 EF                 4367 	.db #0xEF
   0C79 EF                 4368 	.db #0xEF
   0C7A EF                 4369 	.db #0xEF
   0C7B EF                 4370 	.db #0xEF
   0C7C EF                 4371 	.db #0xEF
   0C7D EF                 4372 	.db #0xEF
   0C7E EF                 4373 	.db #0xEF
   0C7F EF                 4374 	.db #0xEF
   0C80 EF                 4375 	.db #0xEF
   0C81 EF                 4376 	.db #0xEF
   0C82 EF                 4377 	.db #0xEF
   0C83 EF                 4378 	.db #0xEF
   0C84 EF                 4379 	.db #0xEF
   0C85 EF                 4380 	.db #0xEF
   0C86 EF                 4381 	.db #0xEF
   0C87 EF                 4382 	.db #0xEF
   0C88 EF                 4383 	.db #0xEF
   0C89 EF                 4384 	.db #0xEF
   0C8A EF                 4385 	.db #0xEF
   0C8B EF                 4386 	.db #0xEF
   0C8C EF                 4387 	.db #0xEF
   0C8D EF                 4388 	.db #0xEF
   0C8E EF                 4389 	.db #0xEF
   0C8F EF                 4390 	.db #0xEF
   0C90 EF                 4391 	.db #0xEF
   0C91 EF                 4392 	.db #0xEF
   0C92 EF                 4393 	.db #0xEF
   0C93 EF                 4394 	.db #0xEF
   0C94 EF                 4395 	.db #0xEF
   0C95 EF                 4396 	.db #0xEF
   0C96 EF                 4397 	.db #0xEF
   0C97 EF                 4398 	.db #0xEF
   0C98 EF                 4399 	.db #0xEF
   0C99 EF                 4400 	.db #0xEF
   0C9A EF                 4401 	.db #0xEF
   0C9B EF                 4402 	.db #0xEF
   0C9C EF                 4403 	.db #0xEF
   0C9D EF                 4404 	.db #0xEF
   0C9E EF                 4405 	.db #0xEF
   0C9F EF                 4406 	.db #0xEF
   0CA0 EF                 4407 	.db #0xEF
   0CA1 EF                 4408 	.db #0xEF
   0CA2 EF                 4409 	.db #0xEF
   0CA3 EF                 4410 	.db #0xEF
   0CA4 EF                 4411 	.db #0xEF
   0CA5 EF                 4412 	.db #0xEF
   0CA6 EF                 4413 	.db #0xEF
   0CA7 EF                 4414 	.db #0xEF
   0CA8 EF                 4415 	.db #0xEF
   0CA9 00                 4416 	.db #0x00
   0CAA 00                 4417 	.db #0x00
   0CAB 00                 4418 	.db #0x00
   0CAC 00                 4419 	.db #0x00
   0CAD 00                 4420 	.db #0x00
   0CAE 00                 4421 	.db #0x00
   0CAF 00                 4422 	.db #0x00
   0CB0 00                 4423 	.db #0x00
   0CB1 00                 4424 	.db #0x00
   0CB2 00                 4425 	.db #0x00
   0CB3 00                 4426 	.db #0x00
   0CB4 00                 4427 	.db #0x00
   0CB5 00                 4428 	.db #0x00
   0CB6 00                 4429 	.db #0x00
   0CB7 00                 4430 	.db #0x00
   0CB8 00                 4431 	.db #0x00
   0CB9 00                 4432 	.db #0x00
   0CBA 00                 4433 	.db #0x00
   0CBB 00                 4434 	.db #0x00
   0CBC 00                 4435 	.db #0x00
   0CBD 00                 4436 	.db #0x00
   0CBE 00                 4437 	.db #0x00
   0CBF 00                 4438 	.db #0x00
   0CC0 00                 4439 	.db #0x00
   0CC1 00                 4440 	.db #0x00
   0CC2 00                 4441 	.db #0x00
   0CC3 00                 4442 	.db #0x00
   0CC4 00                 4443 	.db #0x00
   0CC5 00                 4444 	.db #0x00
   0CC6 00                 4445 	.db #0x00
   0CC7 00                 4446 	.db #0x00
   0CC8 00                 4447 	.db #0x00
   0CC9 00                 4448 	.db #0x00
   0CCA 00                 4449 	.db #0x00
   0CCB 00                 4450 	.db #0x00
   0CCC 00                 4451 	.db #0x00
   0CCD 00                 4452 	.db #0x00
   0CCE 00                 4453 	.db #0x00
   0CCF 00                 4454 	.db #0x00
   0CD0 00                 4455 	.db #0x00
   0CD1 00                 4456 	.db #0x00
   0CD2 00                 4457 	.db #0x00
   0CD3 00                 4458 	.db #0x00
   0CD4 00                 4459 	.db #0x00
   0CD5 00                 4460 	.db #0x00
   0CD6 00                 4461 	.db #0x00
   0CD7 00                 4462 	.db #0x00
   0CD8 00                 4463 	.db #0x00
   0CD9 00                 4464 	.db #0x00
   0CDA 00                 4465 	.db #0x00
   0CDB 00                 4466 	.db #0x00
   0CDC 00                 4467 	.db #0x00
   0CDD 00                 4468 	.db #0x00
   0CDE 00                 4469 	.db #0x00
   0CDF 00                 4470 	.db #0x00
   0CE0 00                 4471 	.db #0x00
   0CE1 00                 4472 	.db #0x00
   0CE2 00                 4473 	.db #0x00
   0CE3 00                 4474 	.db #0x00
   0CE4 00                 4475 	.db #0x00
   0CE5 00                 4476 	.db #0x00
   0CE6 00                 4477 	.db #0x00
   0CE7 00                 4478 	.db #0x00
   0CE8 00                 4479 	.db #0x00
   0CE9 00                 4480 	.db #0x00
   0CEA 00                 4481 	.db #0x00
   0CEB 00                 4482 	.db #0x00
   0CEC 00                 4483 	.db #0x00
   0CED 00                 4484 	.db #0x00
   0CEE 00                 4485 	.db #0x00
   0CEF 00                 4486 	.db #0x00
   0CF0 00                 4487 	.db #0x00
   0CF1 00                 4488 	.db #0x00
   0CF2 00                 4489 	.db #0x00
   0CF3 00                 4490 	.db #0x00
   0CF4 00                 4491 	.db #0x00
   0CF5 00                 4492 	.db #0x00
   0CF6 00                 4493 	.db #0x00
   0CF7 00                 4494 	.db #0x00
   0CF8 00                 4495 	.db #0x00
   0CF9 00                 4496 	.db #0x00
   0CFA 00                 4497 	.db #0x00
   0CFB 00                 4498 	.db #0x00
   0CFC 00                 4499 	.db #0x00
   0CFD 00                 4500 	.db #0x00
   0CFE 00                 4501 	.db #0x00
   0CFF 00                 4502 	.db #0x00
   0D00 00                 4503 	.db #0x00
   0D01 00                 4504 	.db #0x00
   0D02 00                 4505 	.db #0x00
   0D03 00                 4506 	.db #0x00
   0D04 00                 4507 	.db #0x00
   0D05 00                 4508 	.db #0x00
   0D06 00                 4509 	.db #0x00
   0D07 00                 4510 	.db #0x00
   0D08 00                 4511 	.db #0x00
   0D09 00                 4512 	.db #0x00
   0D0A 00                 4513 	.db #0x00
   0D0B 00                 4514 	.db #0x00
   0D0C 00                 4515 	.db #0x00
   0D0D 00                 4516 	.db #0x00
   0D0E 00                 4517 	.db #0x00
   0D0F 00                 4518 	.db #0x00
   0D10 00                 4519 	.db #0x00
   0D11 00                 4520 	.db #0x00
   0D12 00                 4521 	.db #0x00
   0D13 00                 4522 	.db #0x00
   0D14 00                 4523 	.db #0x00
   0D15 00                 4524 	.db #0x00
   0D16 00                 4525 	.db #0x00
   0D17 00                 4526 	.db #0x00
   0D18 00                 4527 	.db #0x00
   0D19 00                 4528 	.db #0x00
   0D1A 00                 4529 	.db #0x00
   0D1B 00                 4530 	.db #0x00
   0D1C 00                 4531 	.db #0x00
   0D1D 00                 4532 	.db #0x00
   0D1E 00                 4533 	.db #0x00
   0D1F 00                 4534 	.db #0x00
   0D20 00                 4535 	.db #0x00
   0D21 00                 4536 	.db #0x00
   0D22 00                 4537 	.db #0x00
   0D23 00                 4538 	.db #0x00
   0D24 00                 4539 	.db #0x00
   0D25 00                 4540 	.db #0x00
   0D26 00                 4541 	.db #0x00
   0D27 00                 4542 	.db #0x00
   0D28 00                 4543 	.db #0x00
   0D29 00                 4544 	.db #0x00
                           4545 	.area XINIT   (CODE)
