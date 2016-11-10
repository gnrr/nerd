#pragma NOIV					// Do not generate interrupt vectors
//-----------------------------------------------------------------------------
//	File:		periph.c
//	Contents:	Hooks required to implement USB peripheral function.
//
//	Copyright (c) 2001 Cypress Semiconductor, Inc. All rights reserved
//-----------------------------------------------------------------------------
#include <ezusb.h>
#include <ezregs.h>

#define	min(a,b) (((a)<(b))?(a):(b))

#define GD_HID	0x21
#define GD_REPORT	0x22
#define CR_SET_REPORT 0x09
#define GD_IF0 0x00
#define GD_IF1 0x01
#define HID_OUTPUT_REPORT 2

#define BTN_ADDR		0x41

extern BOOL	GotSUD;			// Received setup data flag
extern BOOL Sleep;

WORD	pHID1Dscr;
WORD	pHID1ReportDscr;
WORD	pHID1ReportDscrEnd;
extern code HID1Dscr;
extern code HID1ReportDscr; 
extern code HID1ReportDscrEnd;

WORD	pHID2Dscr;
WORD	pHID2ReportDscr;
WORD	pHID2ReportDscrEnd;
extern code HID2Dscr;
extern code HID2ReportDscr; 
extern code HID2ReportDscrEnd;

void TD_Poll(void);

BYTE	Configuration;		// Current configuration
BYTE	AlternateSetting;	// Alternate settings

BYTE HID1buttons;
BYTE HID1oldbuttons;
BYTE HID2buttons;
BYTE HID2oldbuttons;
BYTE read_buttons (void);

unsigned char old_cursol;
unsigned char old_button;
//-----------------------------------------------------------------------------
// Task Dispatcher hooks
//	The following hooks are called by the task dispatcher.
//-----------------------------------------------------------------------------
void TD_Init(void) 				// Called once at startup
{
	PORTBCFG = 0x00;				// Port B as I/O port
	OEB 	 = 0x00;				// Set input mode
	//OUTB	 = 0x00;				// Port out data init
	PORTCCFG = 0x00;				// Port C as I/O port
	OEC 	 = 0x00;				// Set input mode
	//OUTC	 = 0x00;				// Port out data init
	old_cursol = 0x00;
	old_button = 0x00;

	// Enable endpoint 2 IN and endpoint 1 IN
								
	IN07VAL |= bmEP1 | bmEP2; // Validate all EP's

	// Setup breakpoint to trigger on TD_Poll()
	BPADDR = (WORD)TD_Poll;
	USBBAV |= bmBPEN;				// Enable the breakpoint
	USBBAV &= ~bmBPPULSE;

}

unsigned char get_button(void)
{
	return ((PINSC & 0x03) | ((PINSB & 0x0f) << 2));
}

void TD_Poll(void) 				// Called repeatedly while the device is idle
{
	if(!(EPIO[IN2BUF_ID].cntrl & bmEPBUSY)){	// Is the IN2BUF available,
		HID1buttons = get_button();

		// clear button state as seen by the host
		IN2BUF[0] = IN2BUF[1] = IN2BUF[2] =0x00;

		if(!(HID1buttons & 0x04)) IN2BUF[2] -= 0x02;
		if(!(HID1buttons & 0x08)) IN2BUF[2] += 0x02;
		if(!(HID1buttons & 0x10)) IN2BUF[1] += 0x02;
		if(!(HID1buttons & 0x20)) IN2BUF[1] -= 0x02;
		if(IN2BUF[1] != 0 || IN2BUF[2] != 0) IN2BC = 3;

		if((HID1buttons & 0x03) == (get_button() & 0x03)){	// Debounce
			if((HID1oldbuttons - (HID1buttons & 0x03)) != 0){	//Change in button state
				if(!(HID1buttons & 0x01)) IN2BUF[0] |= 0x02; // left click
				if(!(HID1buttons & 0x02)) IN2BUF[0] |= 0x01; // right click
				IN2BC = 3;
			}
			HID1oldbuttons = HID1buttons;
		}
	}
}

BOOL TD_Suspend(void) 			// Called before the device goes into suspend mode
{
	// Turn off breakpoint light before entering suspend
	USBBAV |= bmBREAK;		// Clear the breakpoint
	return(TRUE);
}

BOOL TD_Resume(void) 			// Called after the device resumes
{
	return(TRUE);
}

//-----------------------------------------------------------------------------
// Device Request hooks
//	The following hooks are called by the end point 0 device request parser.
//-----------------------------------------------------------------------------

BOOL DR_ClassRequest(void)
{
	return(TRUE);
}


BOOL DR_GetDescriptor(void)
{
	BYTE HID1length,i;
	BYTE HID2length,j;

	pHID1Dscr = (WORD)&HID1Dscr;
	pHID1ReportDscr = (WORD)&HID1ReportDscr;
	pHID1ReportDscrEnd = (WORD)&HID1ReportDscrEnd;

	pHID2Dscr = (WORD)&HID2Dscr;
	pHID2ReportDscr = (WORD)&HID2ReportDscr;
	pHID2ReportDscrEnd = (WORD)&HID2ReportDscrEnd;

	switch (SETUPDAT[3])
	{
		case GD_HID:					//HID Descriptor			
			switch (SETUPDAT[4])
			{		
				case GD_IF0:
					SUDPTRH = MSB(pHID1Dscr);
					SUDPTRL = LSB(pHID1Dscr);
					break;
				case GD_IF1:
					SUDPTRH = MSB(pHID2Dscr);
					SUDPTRL = LSB(pHID2Dscr);	
					break;
				default:
					EZUSB_STALL_EP0();
			}			
			return (FALSE);
			break;
		case GD_REPORT:					//Report Descriptor
			switch (SETUPDAT[4])
			{
				case GD_IF0:
					HID1length = pHID1ReportDscrEnd - pHID1ReportDscr;
	
					while (HID1length)
					{
						for(i=0; i<min(HID1length,64); i++)
						*(IN0BUF+i) = *((BYTE xdata *)pHID1ReportDscr+i);
	
						//set length and arm Endpoint
						EZUSB_SET_EP_BYTES(IN0BUF_ID,min(HID1length,64));	
						HID1length -= min(HID1length,64);
		
						// Wait for it to go out (Rev C and above)
						while(EP0CS & 0x04)
						;
					}
					break;
				case GD_IF1:
					HID2length = pHID2ReportDscrEnd - pHID2ReportDscr;
	
					while (HID2length)
					{
						for(j=0; j<min(HID2length,64); j++)
						*(IN0BUF+j) = *((BYTE xdata *)pHID2ReportDscr+j);
	
						//set length and arm Endpoint
						EZUSB_SET_EP_BYTES(IN0BUF_ID,min(HID2length,64));	
						HID2length -= min(HID2length,64);
	
						// Wait for it to go out (Rev C and above)
						while(EP0CS & 0x04)
						;
					}			
					break;
				default:
					EZUSB_STALL_EP0();
			}
			return (FALSE);
			break;
		default:
			return(TRUE);
	}
}

BOOL DR_SetConfiguration(void)	// Called when a Set Configuration command is received
{
	Configuration = SETUPDAT[2];
	return(TRUE);				// Handled by user code
}

BOOL DR_GetConfiguration(void)	// Called when a Get Configuration command is received
{
	IN0BUF[0] = Configuration;
	EZUSB_SET_EP_BYTES(IN0BUF_ID,1);
	return(TRUE);				// Handled by user code
}

BOOL DR_SetInterface(void) 		// Called when a Set Interface command is received
{
	AlternateSetting = SETUPDAT[2];
	return(TRUE);				// Handled by user code
}

BOOL DR_GetInterface(void) 		// Called when a Set Interface command is received
{
	IN0BUF[0] = AlternateSetting;
	EZUSB_SET_EP_BYTES(IN0BUF_ID,1);
	return(TRUE);				// Handled by user code
}

BOOL DR_GetStatus(void)
{
	return(TRUE);
}

BOOL DR_ClearFeature(void)
{
	return(TRUE);
}

BOOL DR_SetFeature(void)
{
	return(TRUE);
}

BOOL DR_VendorCmnd(void)
{
	return(TRUE);
}

//-----------------------------------------------------------------------------
// USB Interrupt Handlers
//	The following functions are called by the USB interrupt jump table.
//-----------------------------------------------------------------------------

// Setup Data Available Interrupt Handler
void ISR_Sudav(void) interrupt 0
{
	GotSUD = TRUE;				// Set flag
	EZUSB_IRQ_CLEAR();
	USBIRQ = bmSUDAV;			// Clear SUDAV IRQ
}

// Setup Token Interrupt Handler
void ISR_Sutok(void) interrupt 0
{
	EZUSB_IRQ_CLEAR();
	USBIRQ = bmSUTOK;			// Clear SUTOK IRQ
}

void ISR_Sof(void) interrupt 0
{
	EZUSB_IRQ_CLEAR();
	USBIRQ = bmSOF;				// Clear SOF IRQ
}

void ISR_Ures(void) interrupt 0
{
	EZUSB_IRQ_CLEAR();
	USBIRQ = bmURES;			// Clear URES IRQ
}

void ISR_IBN(void) interrupt 0
{
   // ISR for the IN Bulk NAK (IBN) interrupt.
}

void ISR_Susp(void) interrupt 0
{
	Sleep = TRUE;
	EZUSB_IRQ_CLEAR();
	USBIRQ = bmSUSP;
}

void ISR_Ep0in(void) interrupt 0
{
}

void ISR_Ep0out(void) interrupt 0
{
}

void ISR_Ep1in(void) interrupt 0
{
}

void ISR_Ep1out(void) interrupt 0
{
}

void ISR_Ep2in(void) interrupt 0
{
}

void ISR_Ep2out(void) interrupt 0
{
}

void ISR_Ep3in(void) interrupt 0
{
}

void ISR_Ep3out(void) interrupt 0
{
}

void ISR_Ep4in(void) interrupt 0
{
}

void ISR_Ep4out(void) interrupt 0
{
}

void ISR_Ep5in(void) interrupt 0
{
}

void ISR_Ep5out(void) interrupt 0
{
}

void ISR_Ep6in(void) interrupt 0
{
}

void ISR_Ep6out(void) interrupt 0
{
}

void ISR_Ep7in(void) interrupt 0
{
}

void ISR_Ep7out(void) interrupt 0
{
}
