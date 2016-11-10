;;
;; dscr.a51 - This file contains descriptor data tables.
;;   by uratan! 2004.5.19
;;     modified from sample source 'dscr.a51' of AnchorChips, Inc.
;;
	;;
	;; (コメントを ;; 二つではじめるのは、エディターのフォントに)
	;; (よっては印象が薄くてわかりづらいからです)
	;;
	;; USB の各種デスクリプタを記述します。
	;; Cypress の開発ツールのサンプルをたたき台に、かなり変更しました。
	;;

$gen					;; expand macro in listing

;;
;; set/reset this option
;;
$set	(develop)		;; use invalid PID when UZK
	;;
	;; $reset にすると、AN2131 のオリジナルの PID:0x2131 を使用します。
	;;
$set	(r_w_u)			;; enable remote wake up bit
	;;
	;; $reset にすると、config descriptor 中の「remote wake up できまっせ」
	;; のビットを無効にします。
	;;
$set	(mouse)			;; enable mouse as HID3
	;;
	;; $reset にすると、HID3 のマウスデバイスが削除されます。
	;; periph.c 内の #define MOUSE と同期するよう変更すべきです。
	;;

;;
;; firmware version
;;
bcdDevice	equ	0180H

;;
;; ...
;;
bcdUSB	equ	0100H		;; USB Specification Release Number
bcdHID	equ	0110H		;; HID Class Specification compliance

;;
;; my device IDs
;;
idVendor	equ	0547H	;; (Anchor Chips Inc.)
$if	(develop)
idProduct	equ	0ffffH	;; (I expect to be none existance one)
$else	;;(develop)
idProduct	equ	2131H	;; (EZ-USB - AN2131SC)
$endif	;;(develop)

;;
;; power requirement
;;
bMaxPower	equ	50/2	;; [2mA/1] (about 30mA measured by tester)
	;;
	;; 実際に測定して 30mA 弱でした
	;;

;;
;; misc constants
;;
DSCR_DEVICE	equ	01H		;; Descriptor type: Device
DSCR_CONFIG	equ	02H		;; Descriptor type: Configuration
DSCR_STRING	equ	03H		;; Descriptor type: String
DSCR_INTRFC	equ	04H		;; Descriptor type: Interface
DSCR_ENDPNT	equ	05H		;; Descriptor type: Endpoint

DSCR_HID	equ	21H		;; Descriptor type: HID
DSCR_REPORT	equ	22H		;; Descriptor type: report
DSCR_PHYSCL	equ	23H		;; Descriptor type: physical

ET_CONTROL	equ	0		;; Endpoint type: Control
ET_ISO		equ	1		;; Endpoint type: Isochronous
ET_BULK		equ	2		;; Endpoint type: Bulk
ET_INT		equ	3		;; Endpoint type: Interrupt

;;
;; macro for 2byte constants in descriptor
;;
ddw	macro	x
	db	LOW(x), HIGH(x)
endm
	;;
	;; 記述を見やすくするために、USB のエンディアンでのワードを定義する
	;; マクロを追加しました。
	;;

;;
;; share some values between C codes
;;
public	DeviceDscr, ConfigDscr, StringDscr
public	HIDDscr1, ReportDscr1, ReportDscr1Len
public	HIDDscr2, ReportDscr2, ReportDscr2Len
$if	(mouse)
public	HIDDscr3, ReportDscr3, ReportDscr3Len
$endif	;;(mouse)
public	DscrRWU


DSCR	SEGMENT	CODE

;;-----------------------------------------------------------------------------
;; Global Variables
;;-----------------------------------------------------------------------------
	rseg DSCR	;; locate the descriptor table in on-part memory.

DeviceDscr:
	db	12H				;; Descriptor length
	db	DSCR_DEVICE		;; Decriptor type
	ddw	bcdUSB			;; Specification Version (BCD)
	db	00H  			;; Device class
	db	00H				;; Device sub-class
	db	00H				;; Device sub-sub-class
	db	64				;; Maximum packet size
	ddw	idVendor		;; Vendor ID
	ddw	idProduct		;; Product ID
	ddw	bcdDevice		;; Product version ID
	db	1				;; Manufacturer string index
	db	2				;; Product string index
	db	0				;; Serial number string index
	db	1				;; Numder of configurations

ConfigDscr:
	db	09H				;; Descriptor length
	db	DSCR_CONFIG		;; Descriptor type
	ddw	ConfigLength	;; Configuration -> End Points length
$if	(mouse)
	db	3				;; Number of interfaces
$else	;;(mouse)
	db	2				;; Number of interfaces
$endif	;;(mouse)
	db	1				;; Configuration number
	db	0				;; Configuration string index
$if	(r_w_u)
DscrRWU	equ	1
	db	10100000b		;; Attributes (b7:buspwr, b6:selfpwr, b5:rwu)
$else	;;(r_w_u)
DscrRWU	equ	0
	db	10000000b		;; Attributes (b7:buspwr, b6:selfpwr, b5:rwu)
$endif	;;(r_w_u)
	db	bMaxPower		;; Power requirement [x2mA]


;;
;; first interface is used as KBD, with endpoint 1
;;
IntrfcDscr1:
	db	09H				;; Descriptor length
	db	DSCR_INTRFC		;; Descriptor type
	db	0				;; Zero-based index of this interface
	db	0				;; Alternate setting
	db	1				;; Number of end points
	db	03H				;; Interface class (HID)
	db	01H				;; Interface sub class (boot device)
	db	01H				;; Interface protocol (keyboard)
	db	3				;; Interface descriptor string index

HIDDscr1:
	db	09H				;; Descriptor length
	db	DSCR_HID		;; Descriptor type
	ddw	bcdHID			;; HID Class Specification compliance
	db	0				;; Country localization (=none)
	db	1				;; Number of descriptors to follow
	db	DSCR_REPORT		;; And it's a Report descriptor
	ddw	ReportDscr1Len

EpI1Dscr:
	db	07H				;; Descriptor length
	db	DSCR_ENDPNT		;; Descriptor type
	db	81H				;; Endpoint number, and direction
	db	ET_INT			;; Endpoint type
	ddw	64				;; Maximun packet size
	db	10				;; Polling interval [msec]


;;
;; second interface is used as control, with endpoint 2
;;
IntrfcDscr2:
	db	09H				;; Descriptor length
	db	DSCR_INTRFC		;; Descriptor type
	db	1				;; Zero-based index of this interface
	db	0				;; Alternate setting
	db	1				;; Number of end points
	db	03H				;; Interface class (HID)
	db	00H				;; Interface sub class (no subclass)
	db	00H				;; Interface protocol (none)
	db	4				;; Interface descriptor string index

HIDDscr2:
	db	09H				;; Descriptor length
	db	DSCR_HID		;; Descriptor type
	ddw	bcdHID			;; HID Class Specification compliance
	db	0				;; Country localization (=none)
	db	1				;; Number of descriptors to follow
	db	DSCR_REPORT		;; And it's a Report descriptor
	ddw	ReportDscr2Len

EpI2Dscr:
	db	07H				;; Descriptor length
	db	DSCR_ENDPNT		;; Descriptor type
	db	82H				;; Endpoint number, and direction
	db	ET_INT			;; Endpoint type
	ddw	64				;; Maximun packet size
	db	10				;; Polling interval [msec]

$if	(mouse)
;;
;; third interface is used as mouse, with endpoint 3
;;
IntrfcDscr3:
	db	09H				;; Descriptor length
	db	DSCR_INTRFC		;; Descriptor type
	db	2				;; Zero-based index of this interface
	db	0				;; Alternate setting
	db	1				;; Number of end points
	db	03H				;; Interface class (HID)
	db	01H				;; Interface sub class (boot device)
	db	02H				;; Interface protocol (mouse)
	db	5				;; Interface descriptor string index

HIDDscr3:
	db	09H				;; Descriptor length
	db	DSCR_HID		;; Descriptor type
	ddw	bcdHID			;; HID Class Specification compliance
	db	0				;; Country localization (=none)
	db	1				;; Number of descriptors to follow
	db	DSCR_REPORT		;; And it's a Report descriptor
	ddw	ReportDscr3Len

EpI3Dscr:
	db	07H				;; Descriptor length
	db	DSCR_ENDPNT		;; Descriptor type
	db	83H				;; Endpoint number, and direction
	db	ET_INT			;; Endpoint type
	ddw	64				;; Maximun packet size
	db	10				;; Polling interval [msec]
$endif	;;(mouse)

;;
;; configration descriptor includes to here
;;
ConfigLength	equ	$-ConfigDscr


	;;
	;; 以下、HID デバイスとしての report descriptor の記述です。
	;;
;;
;; Standard USB Keyboard
;;
;;  KBD->host (8bytes)
;;  +-+-+-+-+-+-+-+-+ +----+ +--------+ +-----+ +-----+ +-----+ +-----+ +-----+
;;  |x x x x x x x x| |rsrv| |keycode1| | kc2 | | kc3 | | kc4 | | kc5 | | kc6 |
;;  +-+-+-+-+-+-+-+-+ +----+ +--------+ +-----+ +-----+ +-----+ +-----+ +-----+
;;   | | | | | | | |
;;   | | | | | | | LEFT CTRL
;;   | | | | | | LEFT SHIFT
;;   | | | | | LEFT ALT
;;   | | | | LEFT GUI             NUM LOCK
;;   | | | RIGHT CTRL          CAPS LOCK |
;;   | | RIGHT SHIFT       SCROLL LOCK | |
;;   | RIGHT ALT             COMPOSE | | |
;;   RIGHT GUI                KANA | | | |
;;                               | | | | |
;;  host->KBD             +-+-+-+-+-+-+-+-+
;;     (1 byte for LEDs)  |0 0 0 x x x x x|
;;                        +-+-+-+-+-+-+-+-+
;;
ReportDscr1:
	db	05H, 01H		;; Usage_Page (Generic Desktop)
	db	09H, 06H		;; Usage (Keyboard)
	db	0A1H, 01H		;; Collection (Application)
	db	05H, 07H		;;   Usage page (Key Codes)
	db	19H, 0E0H		;;   Usage_Minimum (224)
	db	29H, 0E7H		;;   Usage_Maximum (231)
	db	15H, 00H		;;   Logical_Minimum (0)
	db	25H, 01H		;;   Logical_Maximum (1)
	db	75H, 01H		;;   Report_Size (1)
	db	95H, 08H		;;   Report_Count (8)
	db	81H, 02H		;;   Input (Data,Var,Abs) = Modifier Byte
	db	81H, 01H		;;   Input (Constant) = Reserved Byte
	db	19H, 00H		;;   Usage_Minimum (0)
	db	29H, 0e7H		;;   Usage_Maximum (231)
	db	15H, 00H		;;   Logical_Minimum (0)
	db	25H, 0e7H		;;   Logical_Maximum (231)
	db	75H, 08H		;;   Report_Size (8)
	db	95H, 06H		;;   Report_Count (6)
	db	81H, 00H		;;   Input (Data,Array) = Keycode Bytes(6)
	db	05H, 08H		;;   Usage Page (LEDs)
	db	19H, 01H		;;   Usage_Minimum (1)
	db	29H, 05H		;;   Usage_Maximum (5)
	db	15H, 00H		;;   Logical_Minimum (0)
	db	25H, 01H		;;   Logical_Maximum (1)
	db	75H, 01H		;;   Report_Size (1)
	db	95H, 05H		;;   Report_Count (5)
	db	91H, 02H		;;   Output (Data,Var,Abs) = LEDs (5 bits)
	db	95H, 03H		;;   Report_Count (3)
	db	91H, 01H		;;   Output (Constant) = Pad (3 bits)
	db	0C0H			;; End_Collection
ReportDscr1Len	equ	$-ReportDscr1

;;
;; vendor specific report
;;
	;;
	;; UZK 制御用のデバイスです。
	;;
ReportDscr2:
	db	06H, 0A0H, 0FFH	;; Usage Page (FFA0H = vendor defined)
	db	09H, 01H		;; Usage (Vendor defined)
	db	0A1H, 01H		;; Collection (Application)
	db	09H, 02H		;; Usage (vendor defined)
	db	0A1H, 00H		;; Collection (Physical)
	db	06H, 0A1H, 0FFH	;; Usage Page (vendor defined)
;; The input report (2 byte)
	db	09H, 03H		;; Usage (vendor defined)
	db	09H, 04H		;; Usage (vendor defined)
	db	15H, 80H		;; Logical minimum (80H = -128)
	db	25H, 7FH		;; Logical maximum (7FH = 127)
	db	35H, 00H		;; Physical minimum (0)
	db	45H, 0FFH		;; Physical maximum (255)
	db	75H, 08H		;; Report size (8 bits)
	db	95H, 02H		;; Report count (1 fields)
	db	81H, 02H		;; Input (Data, Variable, Absolute)
;; The output report (9 bytes)
	db	09H, 05H		;; Usage (vendor defined)
	db	09H, 06H		;; Usage (vendor defined)
	db	15H, 80H		;; Logical minimum (80H = -128)
	db	25H, 7FH		;; Logical maximum (7FH = 127)
	db	35H, 00H		;; Physical minimum (0)
	db	45H, 0FFH		;; Physical maximum (255)
	db	75H, 08H		;; Report size (8 bits)
	db	95H, 09H		;; Report count (9 fields)
	db	91H, 02H		;; Output (Data, Variable, Absolute)
	db	0C0H			;; End Collection (Physical)
	db	0C0H			;; End Collection (Application)
ReportDscr2Len	equ	$-ReportDscr2

$if	(mouse)
;;
;; 5 Key Magic Ball Mouse (Arvel)
;;
;;  mouse->host (4bytes)
;;  +-+-+-+-+-+-+-+-+           +--------+ +--------+ +--------+
;;  |          x x x|           |   dX   | |   dY   | | Wheel  |
;;  +-+-+-+-+-+-+-+-+           +--------+ +--------+ +--------+
;;         | | | | |                            -         +1
;;         | | | | LEFT BUTTON                  |          |
;;         | | | RIGHT BUTTON    - <===> +      |     +7 <=|=> -7
;;         | | CENTER BUTTON                    |          |
;;         | LEFT BODY BUTTON                   +          -1
;;         RIGHT BODY BUTTON                         (one of 4 values)
;;
	;;
	;; 手持ちの Magic Ball Mouse の例ですが、ほぼ標準的なようです
	;;
ReportDscr3:
	db	05H, 01H		;; Usage_Page (Generic Desktop)
	db	09H, 02H		;; Usage (Mouse)
	db	0A1H, 01H		;; Collection (Application)
	db	09H, 01H		;; Usage (Pointer)
	db	0A1H, 00H		;; Collection (Physical)
	db	05H, 09H		;; Usage_Page (Button)
	db	19H, 01H		;;   Usage_Minimum (1)
	db	29H, 05H		;;   Usage_Maximum (5)
	db	15H, 00H		;;   Logical_Minimum (0)
	db	25H, 01H		;;   Logical_Maximum (1)
	db	75H, 01H		;;   Report_Size (1)
	db	95H, 05H		;;   Report_Count (5)
	db	81H, 02H		;;   Input (Data,Var,Abs) = Button (5bits)
	db	95H, 03H		;;   Report_Count (3)
	db	81H, 01H		;;   Input (Constant) = Reserved (3bits)
	db	05H, 01H		;; Usage_Page (Generic Desktop)
	db	09H, 30H		;; Usage (X)
	db	09H, 31H		;; Usage (Y)
	db	09H, 38H		;; Usage (Wheel)
	db	15H, 81H		;;   Logical_Minimum (-127)
	db	25H, 7fH		;;   Logical_Maximum (127)
	db	75H, 08H		;;   Report_Size (8)
	db	95H, 03H		;;   Report_Count (3)
	db	81H, 06H		;;   Input (Data,Var,Rel) = Mouse Motion
	db	0C0H			;; End_Collection
	db	0C0H			;; End_Collection
ReportDscr3Len	equ	$-ReportDscr3
$endif	;;(mouse)


;;
;; strings
;;
StringDscr:
StringDscr0:
	db	StringDscr0Len	;; String descriptor length
	db	DSCR_STRING
	ddw	0409H
StringDscr0Len	equ	$-Stringdscr0

;;
;; 1 for Manufacturer string
;;
StringDscr1:
	db	StringDscr1Len	;; String descriptor length
	db	DSCR_STRING
	ddw	'A'				;; "Anchor Chips Inc."
	ddw	'n'
	ddw	'c'
	ddw	'h'
	ddw	'o'
	ddw	'r'
	ddw	' '
	ddw	'C'
	ddw	'h'
	ddw	'i'
	ddw	'p'
	ddw	's'
	ddw	' '
	ddw	'I'
	ddw	'n'
	ddw	'c'
	ddw	'.'
StringDscr1Len	equ	$-Stringdscr1

	;;
	;; 以下、UZK 関係の string です。コード短縮のため短く短くしています
	;;
;;
;; 2 for Product string
;;
StringDscr2:
	db	StringDscr2Len	;; Descriptor length
	db	DSCR_STRING
	ddw	'U'				;; "UZK"
	ddw	'Z'
	ddw	'K'
StringDscr2Len	equ	$-Stringdscr2

;;
;; 3 for name of keybaord
;;
StringDscr3:
	db	StringDscr3Len	;; Descriptor length
	db	DSCR_STRING
	ddw	'K'				;; "KB"
	ddw	'B'
StringDscr3Len	equ	$-Stringdscr3

;;
;; 4 for name of UZK
;;
StringDscr4:
	db	StringDscr4Len	;; Descriptor length
	db	DSCR_STRING
	ddw	'C'				;; "CTRL"
	ddw	'T'
	ddw	'R'
	ddw	'L'
StringDscr4Len	equ	$-Stringdscr4

$if	(mouse)
;;
;; 5 for name of mouse
;;
StringDscr5:
	db	StringDscr5Len	;; Descriptor length
	db	DSCR_STRING
	ddw	'M'				;; "MS"
	ddw	'S'
StringDscr5Len	equ	$-Stringdscr5
$endif	;;(mouse)

	end

