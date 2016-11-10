ASxxxx Assembler V01.70 + NoICE + SDCC mods + Flat24 Feb-1999  (Intel 8051), page 1.



                              1 ;
                              2 ;
                              3 ; Copyright (C) 2003 Arnim Laeuger
                              4 ;
                              5 ;  This program is free software; you can redistribute it and/or modify
                              6 ;  it under the terms of the GNU General Public License as published by
                              7 ;  the Free Software Foundation; either version 2 of the License, or
                              8 ;  (at your option) any later version. See also the file COPYING which
                              9 ;  came with this application.
                             10 ;
                             11 ;  This program is distributed in the hope that it will be useful,
                             12 ;  but WITHOUT ANY WARRANTY; without even the implied warranty of
                             13 ;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
                             14 ;  GNU General Public License for more details.
                             15 ;
                             16 ;  You should have received a copy of the GNU General Public License
                             17 ;  along with this program; if not, write to the Free Software
                             18 ;  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
                             19 ;
                             20 ;
                             21 ; $Id: initializer.asm,v 1.1 2003/12/23 22:56:38 arniml Exp $
                             22 ;
                             23 
                             24 	.module	initializer
                             25 
                             26 	.globl	_string_index
                             27 
                             28 	.area	CSEG
                             29 
   0A99                      30 _string_index:
   0A99 C3 09                31 	.db	#_string_langid,      #(_string_langid      >> 8)
   0A9B C7 09                32 	.db	#_string_mfg,         #(_string_mfg         >> 8)
   0A9D E9 09                33 	.db	#_string_prod,        #(_string_prod        >> 8)
   0A9F 0F 0A                34 	.db	#_string_if_keyboard, #(_string_if_keyboard >> 8)
