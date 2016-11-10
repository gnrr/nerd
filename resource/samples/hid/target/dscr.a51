;;-----------------------------------------------------------------------------
;;	File:		dscr.a51
;;	Contents:	This file contains descriptor data tables.  
;;
;;	Copyright (c) 1997 AnchorChips, Inc. All rights reserved
;;      Adapted for use with HIDs by Jan Axelson (jan@lvr.com)
;;-----------------------------------------------------------------------------

; These tables are adapted to work with the usbhidio code available from www.lvr.com.
; The descriptors are for a vendor-defined HID-class device that exchanges
; blocks of generic data with the host.
; Uses Lakeview Research's Vendor ID.
; The interface descriptor describes a HID.
; Also added were a HID descriptor, two interrupt endpoints, and a report descriptor.
; The string descriptors were changed.

DSCR_DEVICE	equ	1	;; Descriptor type: Device
DSCR_CONFIG	equ	2	;; Descriptor type: Configuration
DSCR_STRING	equ	3	;; Descriptor type: String
DSCR_INTRFC	equ	4	;; Descriptor type: Interface
DSCR_ENDPNT	equ	5	;; Descriptor type: Endpoint

ET_CONTROL	equ	0	;; Endpoint type: Control
ET_ISO		equ	1	;; Endpoint type: Isochronous
ET_BULK		equ	2	;; Endpoint type: Bulk
ET_INT		equ	3	;; Endpoint type: Interrupt

public		DeviceDscr, ConfigDscr, StringDscr, UserDscr, ReportDscr, ReportDscrEnd

DSCR	SEGMENT	CODE

;;-----------------------------------------------------------------------------
;; Global Variables
;;-----------------------------------------------------------------------------
		rseg DSCR		;; locate the descriptor table in on-part memory.

DeviceDscr:	db	deviceDscrEnd-DeviceDscr		;; Descriptor length
		db	DSCR_DEVICE	;; Decriptor type
		db	10H, 01H		;; Specification Version (BCD)
		db	00H  		;; Device class
		db	00H		;; Device sub-class
		db	00H		;; Device sub-sub-class
		db	64		;; Maximum packet size
		db	25H, 09H	;; Vendor ID
		db	34H, 12H	;; Product ID
		dw	0001H		;; Product version ID
		db	1		;; Manufacturer string index
		db	2		;; Product string index
		db	0		;; Serial number string index
		db	1		;; Numder of configurations
deviceDscrEnd:

ConfigDscr:	db	ConfigDscrEnd-ConfigDscr		;; Descriptor length
		db	DSCR_CONFIG	;; Descriptor type
		db	EPAllDscrEnd-ConfigDscr	;; Configuration + End Points length (LSB)
		db	00		;; Configuration length (MSB)
		db	1		;; Number of interfaces
		db	1		;; Interface number
		db	0		;; Configuration string
		db	10100000b	;; Attributes (b7 - buspwr, b6 - selfpwr, b5 - rwu)
		db	25		;; Power requirement (div 2 ma)
ConfigDscrEnd:

IntrfcDscr:
		db	IntrfcDscrEnd-IntrfcDscr		;; Descriptor length
		db	DSCR_INTRFC	;; Descriptor type
		db	0		;; Zero-based index of this interface
		db	0		;; Alternate setting
		db	2		;; Number of end points 
		db	03H		;; Interface class
		db	00H		;; Interface sub class
		db	00H		;; Interface sub sub class
		db	0		;; Interface descriptor string index
IntrfcDscrEnd:

HIDDscr:
		db	9		;; Length
		db	21H		;; Type
		db	10H, 01H	;; HID class spec.# compliance (0110 = 1.1)
		db	0		;; Country localization (0=none)
		db	1		;; Number of descriptors to follow (excluding endpoint)
		db	22H		;; Descriptor type to follow (report)
		db	ReportDscrEnd - ReportDscr, 0	;; Report descriptor length
		
HIDDscrEnd:

EpO2Dscr:
		db	EpO2DscrEnd-EpO2Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	00000010b	;; Endpoint number, and direction
		db	ET_INT		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	100		;; Polling interval
EpO2DscrEnd:
		
EpI1Dscr:
		db	EpI1DscrEnd-EpI1Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	10000001b	;; Endpoint number, and direction
  		db	ET_INT		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	100		;; Polling interval
EpI1DscrEnd:

EpAllDscrEnd:

ReportDscr:
		db	06H, 0A0H, 0FFH	;; Usage Page (FFA0H = vendor defined)
		db	09H, 01H	;; Usage (Vendor defined)
		db	0A1H, 01H	;; Collection (Application)
		db	09H, 02H	;; Usage (vendor defined)
		db	0A1H, 00H	;; Collection (Physical)
		db	06H, 0A1H, 0FFH	;; Usage Page (vendor defined)

;; The input report
		db	09H, 03H	;; Usage (vendor defined)
		db	09H, 04H	;; Usage (vendor defined)
		db	15H, 80H	;; Logical minimum (80H = -128)
		db	25H, 7FH	;; Logical maximum (7FH = 127)
		db	35H, 00H	;; Physical minimum (0)
		db	45H, 0FFH	;; Physical maximum (255)
		db	75H, 08H	;; Report size (8 bits)
		db	95H, 02H	;; Report count (2 fields)
		db	81H, 02H	;; Input (Data, Variable, Absolute)
;; The output report
		db	09H, 05H	;; Usage (vendor defined)
		db	09H, 06H	;; Usage (vendor defined)
		db	15H, 80H	;; Logical minimum (80H = -128)
		db	25H, 7FH	;; Logical maximum (7FH = 127)
		db	35H, 00H	;; Physical minimum (0)
		db	45H, 0FFH	;; Physical maximum (255)
		db	75H, 08H	;; Report size (8 bits)
		db	95H, 02H	;; Report count (2 fields)
		db	91H, 02H	;; Output (Data, Variable, Absolute)

		db	0C0H		;; End Collection (Physical)
		db	0C0H		;; End Collection (Application)	
ReportDscrEnd:

StringDscr:
StringDscr0:
		db	StringDscr0End-StringDscr0		;; String descriptor length
		db	DSCR_STRING
		db	09H,04H
StringDscr0End:


StringDscr1:	
		db	StringDscr1End-StringDscr1		;; String descriptor length
		db	DSCR_STRING
		db	'U',00
		db	'S',00
		db	'B',00
		db	' ',00
		db	'C',00
		db	'o',00
		db	'm',00
		db	'p',00
		db	'l',00
		db	'e',00
		db	't',00
		db	'e',00
StringDscr1End:

StringDscr2:	
		db	StringDscr2End-StringDscr2		;; Descriptor length
		db	DSCR_STRING
		db	'E',00
		db	'Z',00
		db	'-',00
		db	'U',00
		db	'S',00
		db	'B',00
		db	' ',00
		db	'H',00
		db	'I',00
		db	'D',00
StringDscr2End:

UserDscr:		
		dw	0000H
		end
		                                                                             
