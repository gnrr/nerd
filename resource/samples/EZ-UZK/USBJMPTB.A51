	;;
	;; 本来はすでにライブラリになっているものをリンクして使えば
	;; いいのですが、fw.c のコメントにも書いたように、
	;; 「レジスタのセーブ・リストアのために結構なバイト数のコードをはく
	;; 割り込みハンドラの記述」をなるべく減らすために再定義します。
	;;
NAME		USBJmpTbl

extrn		code (ISR_Sudav, ISR_Susp, ISR_Ures)
extrn		code (ISR_Ep1in, ISR_Ep2in, ISR_Ep3in, ISR_dummy)
public		USB_AutoVector, USB_Jump_Table
;------------------------------------------------------------------------------
; Interrupt Vectors
;------------------------------------------------------------------------------
		CSEG	AT 43H
USB_AutoVector	equ	$ + 2
		ljmp	USB_Jump_Table	; Autovector will replace byte 45
;------------------------------------------------------------------------------
; USB Jump Table
;------------------------------------------------------------------------------
?PR?USB_JUMP_TABLE?USBJT	segment	code page	; Place jump table on a page boundary
		RSEG 	?PR?USB_JUMP_TABLE?USBJT	; autovector jump table
USB_Jump_Table:
		ljmp	ISR_Sudav	; Setup Data Available
		db	0
		ljmp	ISR_dummy	; (ISR_Sof ; Start of Frame)
		db	0
		ljmp	ISR_dummy	; (ISR_Sutok ; Setup Data Loading)
		db	0
		ljmp	ISR_Susp	; Global Suspend
		db 	0
		ljmp	ISR_Ures	; USB Reset
		db	0
		ljmp	ISR_dummy	; (ISR_IBN ; IN Bulk NAK interrupt)
		db	0
		ljmp	ISR_dummy	; (ISR_Ep0in ; End Point 0 In)
		db	0
		ljmp	ISR_dummy	; (ISR_Ep0out ; End Point 0 Out)
		db	0
		ljmp	ISR_Ep1in	; End Point 1 In
		db	0
		ljmp	ISR_dummy	; (ISR_Ep1out ; End Point 1 Out)
		db	0
		ljmp	ISR_Ep2in	; End Point 2 In
		db	0
		ljmp	ISR_dummy
		db	0
		ljmp	ISR_Ep3in	; End Point 3 In
		db	0
		ljmp	ISR_dummy
		db	0
		ljmp	ISR_dummy
		db	0
		ljmp	ISR_dummy
		db	0
		ljmp	ISR_dummy
		db	0
		ljmp	ISR_dummy
		db	0
		ljmp	ISR_dummy
		db	0
		ljmp	ISR_dummy
		db	0
		ljmp	ISR_dummy	; (ISR_Ep7in ; End Point 7 In)
		db	0
		ljmp	ISR_dummy	; (ISR_Ep7out ; End Point 7 Out)
		db	0
;
		end
