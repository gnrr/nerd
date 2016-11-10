;;-----------------------------------------------------------------------------
;;	File:		dscr.a51
;;	Contents:	This file contains descriptor data tables.  
;;
;;	Copyright (c) 1997 AnchorChips, Inc. All rights reserved
;;-----------------------------------------------------------------------------

DSCR_DEVICE	equ	1	;; Descriptor type: Device
DSCR_CONFIG	equ	2	;; Descriptor type: Configuration
DSCR_STRING	equ	3	;; Descriptor type: String
DSCR_INTRFC	equ	4	;; Descriptor type: Interface
DSCR_ENDPNT	equ	5	;; Descriptor type: Endpoint

ET_CONTROL	equ	0	;; Endpoint type: Control
ET_ISO		equ	1	;; Endpoint type: Isochronous
ET_BULK		equ	2	;; Endpoint type: Bulk
ET_INT		equ	3	;; Endpoint type: Interrupt

public		DeviceDscr, ConfigDscr, StringDscr, UserDscr

DSCR	SEGMENT	CODE

;;-----------------------------------------------------------------------------
;; Global Variables
;;-----------------------------------------------------------------------------
		rseg DSCR		;; locate the descriptor table in on-part memory.

DeviceDscr:	db	deviceDscrEnd-DeviceDscr		;; Descriptor length
		db	DSCR_DEVICE	;; Decriptor type
		dw	0001H		;; Specification Version (BCD)
		db	00H  		;; Device class
		db	00H		;; Device sub-class
		db	00H		;; Device sub-sub-class
		db	64		;; Maximum packet size
		dw	4705H		;; Vendor ID
		dw	0210H		;; Product ID
		dw	0100H		;; Product version ID
		db	1		;; Manufacturer string index
		db	2		;; Product string index
		db	0		;; Serial number string index
		db	1		;; Numder of configurations
deviceDscrEnd:

ConfigDscr:	db	ConfigDscrEnd-ConfigDscr		;; Descriptor length
		db	DSCR_CONFIG	;; Descriptor type
		db	074H		;; Configuration + End Points length (LSB)
		db	00		;; Configuration length (MSB)
		db	1		;; Number of interfaces
		db	1		;; Interface number
		db	0		;; Configuration string
		db	10100000b	;; Attributes (b7 - buspwr, b6 - selfpwr, b5 - rwu)
		db	0		;; Power requirement (div 2 ma)
ConfigDscrEnd:

IntrfcDscr:
		db	IntrfcDscrEnd-IntrfcDscr		;; Descriptor length
		db	DSCR_INTRFC	;; Descriptor type
		db	0		;; Zero-based index of this interface
		db	0		;; Alternate setting
		db	14		;; Number of end points 
		db	0ffH		;; Interface class
		db	00H		;; Interface sub class
		db	00H		;; Interface sub sub class
		db	0		;; Interface descriptor string index
IntrfcDscrEnd:

EpO1Dscr:
		db	EpO1DscrEnd-EpO1Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	01H		;; Endpoint number, and direction
		db	ET_BULK		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	00H		;; Polling interval
EpO1DscrEnd:

EpO2Dscr:
		db	EpO2DscrEnd-EpO2Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	02H		;; Endpoint number, and direction
		db	ET_BULK		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	00H		;; Polling interval
EpO2DscrEnd:

EpO3Dscr:
		db	EpO3DscrEnd-EpO3Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	03H		;; Endpoint number, and direction
		db	ET_BULK		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	00H		;; Polling interval
EpO3DscrEnd:

EpO4Dscr:
		db	EpO4DscrEnd-EpO4Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	04H		;; Endpoint number, and direction
		db	ET_BULK		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	00H		;; Polling interval
EpO4DscrEnd:

EpO5Dscr:
		db	EpO5DscrEnd-EpO5Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	05H		;; Endpoint number, and direction
		db	ET_BULK		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	00H		;; Polling interval
EpO5DscrEnd:

EpO6Dscr:
		db	EpO6DscrEnd-EpO6Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	06H		;; Endpoint number, and direction
		db	ET_BULK		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	00H		;; Polling interval
EpO6DscrEnd:

EpO7Dscr:
		db	EpO7DscrEnd-EpO7Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	07H		;; Endpoint number, and direction
		db	ET_BULK		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	00H		;; Polling interval
EpO7DscrEnd:
		
EpI1Dscr:
		db	EpI1DscrEnd-EpI1Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	81H		;; Endpoint number, and direction
		db	ET_INT		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	01H		;; Polling interval
EpI1DscrEnd:

EpI2Dscr:
		db	EpI2DscrEnd-EpI2Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	82H		;; Endpoint number, and direction
		db	ET_BULK		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	00H		;; Polling interval
EpI2DscrEnd:

EpI3Dscr:
		db	EpI3DscrEnd-EpI3Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	83H		;; Endpoint number, and direction
		db	ET_BULK		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	00H		;; Polling interval
EpI3DscrEnd:

EpI4Dscr:
		db	EpI4DscrEnd-EpI4Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	84H		;; Endpoint number, and direction
		db	ET_BULK		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	00H		;; Polling interval
EpI4DscrEnd:

EpI5Dscr:
		db	EpI5DscrEnd-EpI5Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	85H		;; Endpoint number, and direction
		db	ET_BULK		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	00H		;; Polling interval
EpI5DscrEnd:

EpI6Dscr:
		db	EpI6DscrEnd-EpI6Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	86H		;; Endpoint number, and direction
		db	ET_BULK		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	00H		;; Polling interval
EpI6DscrEnd:

EpI7Dscr:
		db	EpI7DscrEnd-EpI7Dscr		;; Descriptor length
		db	DSCR_ENDPNT	;; Descriptor type
		db	87H		;; Endpoint number, and direction
		db	ET_BULK		;; Endpoint type
		db	40H		;; Maximun packet size (LSB)
		db	00H		;; Max packect size (MSB)
		db	00H		;; Polling interval
EpI7DscrEnd:

StringDscr:
StringDscr0:
		db	StringDscr0End-StringDscr0		;; String descriptor length
		db	DSCR_STRING
		db	09H,04H
StringDscr0End:


StringDscr1:	
		db	StringDscr1End-StringDscr1		;; String descriptor length
		db	DSCR_STRING
		db	'A',00
		db	'n',00
		db	'c',00
		db	'h',00
		db	'o',00
		db	'r',00
		db	' ',00
		db	'C',00
		db	'h',00
		db	'i',00
		db	'p',00
		db	's',00
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
		db	'D',00
		db	'e',00
		db	'v',00
		db	'i',00
		db	'c',00
		db	'e',00
StringDscr2End:

UserDscr:		
		dw	0000H
		end
		
