#pragma NOIV					// Do not generate interrupt vectors
//-----------------------------------------------------------------------------
//	File:		periph.c
//	Contents:	Hooks required to implement USB peripheral function.
//
//	Copyright (c) 1997 AnchorChips, Inc. All rights reserved
//-----------------------------------------------------------------------------
#include <ezusb.h>
#include <ezregs.h>

extern BOOL	GotSUD;			// Received setup data flag
extern BOOL	Sleep;
extern BOOL	Rwuen;
extern BOOL	Selfpwr;

BYTE	Configuration;		// Current configuration
BYTE	AlternateSetting;	// Alternate settings
BYTE  suspCount;
//-----------------------------------------------------------------------------
// Task Dispatcher hooks
//	The following hooks are called by the task dispatcher.
//-----------------------------------------------------------------------------

void TD_Init(void) 				// Called once at startup
{
	// Enable endpoints 0-7 IN and OUT
	IN07VAL |= bmEP1 + bmEP2 + bmEP3 + bmEP4 + bmEP5 + bmEP6 + bmEP7;
	OUT07VAL |= bmEP1 + bmEP2 + bmEP3 + bmEP4 + bmEP5 + bmEP6 + bmEP7;

   // Enable interrupts for the OUT endpoints
   OUT07IEN |= bmEP1 + bmEP2 + bmEP3 + bmEP4 + bmEP5 + bmEP6 + bmEP7;
   IN07IEN |= bmEP1 + bmEP2 + bmEP3 + bmEP4 + bmEP5 + bmEP6 + bmEP7;

   suspCount = 1;

   OEA = 0xFF;

   Rwuen = TRUE;				// Enable remote-wakeup
}

void TD_Poll(void) 				// Called repeatedly while the device is idle
{
}

BOOL TD_Suspend(void) 			// Called before the device goes into suspend mode
{
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

BOOL DR_GetDescriptor(void)
{
	return(TRUE);
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

#define EZUSB_UNARM_EP(ep_id)  			EPIO[ep_id].cntrl = bmEPBUSY

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
   //
   // Arm all of the OUT endpoints so they can accept data
   //
   EPIO[OUT1BUF_ID].bytes = 0;
   EPIO[OUT2BUF_ID].bytes = 0;
   EPIO[OUT3BUF_ID].bytes = 0;
   EPIO[OUT4BUF_ID].bytes = 0;
   EPIO[OUT5BUF_ID].bytes = 0;
   EPIO[OUT6BUF_ID].bytes = 0;
   EPIO[OUT7BUF_ID].bytes = 0;

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
	EZUSB_IRQ_CLEAR();
	IN07IRQ = bmEP1;
}

void ISR_Ep1out(void) interrupt 0
{
	OUT1BC = 0;
	EZUSB_IRQ_CLEAR();
	OUT07IRQ = bmEP1;
}

void ISR_Ep2in(void) interrupt 0
{
	EZUSB_IRQ_CLEAR();
	IN07IRQ = bmEP2;
}

void ISR_Ep2out(void) interrupt 0
{
	OUT2BC = 0;
	EZUSB_IRQ_CLEAR();
	OUT07IRQ = bmEP2;
}

void ISR_Ep3in(void) interrupt 0
{
	EZUSB_IRQ_CLEAR();
	IN07IRQ = bmEP3;
}

void ISR_Ep3out(void) interrupt 0
{
	OUT3BC = 0;
	EZUSB_IRQ_CLEAR();
	OUT07IRQ = bmEP3;
}

void ISR_Ep4in(void) interrupt 0
{
	EZUSB_IRQ_CLEAR();
	IN07IRQ = bmEP4;
}

void ISR_Ep4out(void) interrupt 0
{
	OUT4BC = 0;
	EZUSB_IRQ_CLEAR();
	OUT07IRQ = bmEP4;
}

void ISR_Ep5in(void) interrupt 0
{
	EZUSB_IRQ_CLEAR();
	IN07IRQ = bmEP5;
}

void ISR_Ep5out(void) interrupt 0
{
	OUT5BC = 0;
	EZUSB_IRQ_CLEAR();
	OUT07IRQ = bmEP5;
}

void ISR_Ep6in(void) interrupt 0
{
	EZUSB_IRQ_CLEAR();
	IN07IRQ = bmEP6;
}

void ISR_Ep6out(void) interrupt 0
{
	OUT6BC = 0;
	EZUSB_IRQ_CLEAR();
	OUT07IRQ = bmEP6;
}

void ISR_Ep7in(void) interrupt 0
{
	EZUSB_IRQ_CLEAR();
	IN07IRQ = bmEP7;
}

void ISR_Ep7out(void) interrupt 0
{
	OUT7BC = 0;
	EZUSB_IRQ_CLEAR();
	OUT07IRQ = bmEP7;
}
