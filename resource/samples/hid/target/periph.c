#pragma NOIV					// Do not generate interrupt vectors
//-----------------------------------------------------------------------------
//	File:		periph.c
//	Contents:	Hooks required to implement USB peripheral function.
//
//	Copyright (c) 1997 AnchorChips, Inc. All rights reserved
//      Adapted for use with HIDs by Jan Axelson (jan@lvr.com)
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

// HID code start
BYTE InReportBytes;
void *dscr_ptr;
// HID code end

//-----------------------------------------------------------------------------
// Task Dispatcher hooks
//	The following hooks are called by the task dispatcher.
//-----------------------------------------------------------------------------

void TD_Init(void) 				// Called once at startup
{
	// Enable endpoints 0-7 IN and OUT
	//IN07VAL |= bmEP1 + bmEP2 + bmEP3 + bmEP4 + bmEP5 + bmEP6 + bmEP7;
	//OUT07VAL |= bmEP1 + bmEP2 + bmEP3 + bmEP4 + bmEP5 + bmEP6 + bmEP7;

//HID code start
//Comment out the above two lines and enable only the endpoints used by the HID interface.
	IN07VAL |= bmEP1 ;
	OUT07VAL |= bmEP2;
//HID code end

   // Enable interrupts for the OUT endpoints
//   OUT07IEN |= bmEP1 + bmEP2 + bmEP3 + bmEP4 + bmEP5 + bmEP6 + bmEP7;

//HID code start
//Comment out the above line and enable interrupts for the endpoints used by the HID interface.
// Enable interrrupts for Endpoint 2 OUT
   OUT07IEN |= bmEP2;
// Enable interrupts for Endpoint 1 IN
   IN07IEN |= bmEP1;

//HID code end

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
   // Arm all of the OUT endpoints so they can accept data
   //   EPIO[OUT1BUF_ID].bytes = 0;

// HID code start
   // Arm the HID endpoints by loading the byte count registers.
   // Get the number of bytes the In report will send.
   // This information is in Report Count in the report descriptor,
   // and in Report_Count_In_Value in the REPORTDSCR structure.
   // (Assumes that ReportSize (specified in the report descriptor) = 8).
   // To do: calculate the number of bytes to send for reports with any ReportSize.
   REPORTDSCR *rdp;
   dscr_ptr = (REPORTDSCR xdata *) pReportDscr;
   rdp = dscr_ptr;
   InReportBytes = rdp -> Report_Count_In_Value;
   EPIO[IN1BUF_ID].bytes = InReportBytes;
   // The value for Out reports can be anything.
   EPIO[OUT2BUF_ID].bytes = 64;
// HID code end

//   EPIO[OUT3BUF_ID].bytes = 0;
//   EPIO[OUT4BUF_ID].bytes = 0;
//   EPIO[OUT5BUF_ID].bytes = 0;
//   EPIO[OUT6BUF_ID].bytes = 0;
//   EPIO[OUT7BUF_ID].bytes = 0;

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
// HID code start
   //This is the only In endpoint used by the HID interface.
   // When an IN transfer completes, rearm the endpoint.
	IN1BC = InReportBytes;
   // clear the IRQ
	EZUSB_IRQ_CLEAR();
	IN07IRQ = bmEP1;
//HID code end
}

void ISR_Ep1out(void) interrupt 0
{
   int i;

   //
   // workaround to cover the case where the host thinks the
   // previous IN completed but EZ-USB didn't receive a valid
   // handshake (i.e. the ACK was scrambled).  If we have
   // received new OUT data (which we have, because we're in this
   // ISR) but the corresponding IN endpoint is still busy, then
   // we know we missed the handshake.  The solution is to flip
   // the data toggle and proceed with the new data.
   //
   if (EPIO[IN1BUF_ID].cntrl & bmEPBUSY)
   {
      TOGCTL = 0x08 | IN1BUF_ID;
      WRITEDELAY();
      if (TOGCTL & 0x80)
         TOGCTL |= 0x20;
      else
         TOGCTL |= 0x40;
   }

   // Loop the data to the IN endpoint
   for (i=0; i < OUT1BC; i++)
   {
      IN1BUF[i] = ~OUT1BUF[i];
   }

   // Arm the IN endpoint
   IN1BC = i;

   // Arm the OUT so it can receive the next packet
   OUT1BC = 0;


   // clear the IRQ
	EZUSB_IRQ_CLEAR();
	OUT07IRQ = bmEP1;
}

void ISR_Ep2in(void) interrupt 0
{
}

void ISR_Ep2out(void) interrupt 0
//HID code start
//This is the only Out endpoint used by the HID interface.
//Changed IN2 to IN1 in this routine
{
   int i;

   if (EPIO[IN1BUF_ID].cntrl & bmEPBUSY)
   {
      TOGCTL = 0x08 | IN1BUF_ID;
      WRITEDELAY();
      if (TOGCTL & 0x80)
         TOGCTL |= 0x20;
      else
         TOGCTL |= 0x40;
   }

   // Loop the data to the IN endpoint
   for (i=0; i < OUT2BC; i++)
   {
   // Send the complement of the received data back to the host.
      IN1BUF[i] = ~OUT2BUF[i];
   }

   // Arm the IN endpoint
   // I commented this line out and instead re-armed endpoint 1 after each In transfer
   // in the In endpoint's ISR.
   // This enables the host software to do In transfers only if desired.
   //IN1BC = i;

   // Arm the OUT endpoint so it can receive the next packet. (Write any value.)
   OUT2BC = 0;

   // clear the IRQ
	EZUSB_IRQ_CLEAR();
	OUT07IRQ = bmEP2;
}

void ISR_Ep3in(void) interrupt 0
{
}

void ISR_Ep3out(void) interrupt 0
{
   int i;

   if (EPIO[IN3BUF_ID].cntrl & bmEPBUSY)
   {
      TOGCTL = 0x08 | IN3BUF_ID;
      WRITEDELAY();
      if (TOGCTL & 0x80)
         TOGCTL |= 0x20;
      else                                        
         TOGCTL |= 0x40;
   }

   // Loop the data to the IN endpoint
   for (i=0; i < OUT3BC; i++)
   {
      IN3BUF[i] = ~OUT3BUF[i];
   }

   // Arm the IN endpoint
   IN3BC = i;

   // Arm the OUT so it can receive the next packet
   OUT3BC = 0;

   // clear the IRQ
	EZUSB_IRQ_CLEAR();
	OUT07IRQ = bmEP3;
}

void ISR_Ep4in(void) interrupt 0
{
}

void ISR_Ep4out(void) interrupt 0
{
   int i;

   if (EPIO[IN4BUF_ID].cntrl & bmEPBUSY)
   {
      TOGCTL = 0x08 | IN4BUF_ID;
      WRITEDELAY();
      if (TOGCTL & 0x80)
         TOGCTL |= 0x20;
      else
         TOGCTL |= 0x40;
   }

   // Loop the data to the IN endpoint
   for (i=0; i < OUT4BC; i++)
   {
      IN4BUF[i] = ~OUT4BUF[i];
   }

   // Arm the IN endpoint
   IN4BC = i;

   // Arm the OUT so it can receive the next packet
   OUT4BC = 0;

   // clear the IRQ
	EZUSB_IRQ_CLEAR();
	OUT07IRQ = bmEP4;
}

void ISR_Ep5in(void) interrupt 0
{
}

void ISR_Ep5out(void) interrupt 0
{
   int i;

   if (EPIO[IN5BUF_ID].cntrl & bmEPBUSY)
   {
      TOGCTL = 0x08 | IN5BUF_ID;
      WRITEDELAY();
      if (TOGCTL & 0x80)
         TOGCTL |= 0x20;
      else
         TOGCTL |= 0x40;
   }

   // Loop the data to the IN endpoint
   for (i=0; i < OUT5BC; i++)
   {
      IN5BUF[i] = ~OUT5BUF[i];
   }

   // Arm the IN endpoint
   IN5BC = i;

   // Arm the OUT so it can receive the next packet
   OUT5BC = 0;

   // clear the IRQ
	EZUSB_IRQ_CLEAR();
	OUT07IRQ = bmEP5;
}

void ISR_Ep6in(void) interrupt 0
{
}

void ISR_Ep6out(void) interrupt 0
{
   int i;

   if (EPIO[IN6BUF_ID].cntrl & bmEPBUSY)
   {
      TOGCTL = 0x08 | IN6BUF_ID;
      WRITEDELAY();
      if (TOGCTL & 0x80)
         TOGCTL |= 0x20;
      else
         TOGCTL |= 0x40;
   }

   // Loop the data to the IN endpoint
   for (i=0; i < OUT6BC; i++)
   {
      IN6BUF[i] = ~OUT6BUF[i];
   }

   // Arm the IN endpoint
   IN6BC = i;

   // Arm the OUT so it can receive the next packet
   OUT6BC = 0;

   // clear the IRQ
	EZUSB_IRQ_CLEAR();
	OUT07IRQ = bmEP6;
}

void ISR_Ep7in(void) interrupt 0
{
}

void ISR_Ep7out(void) interrupt 0
{
   int i;

   if (EPIO[IN7BUF_ID].cntrl & bmEPBUSY)
   {
      TOGCTL = 0x08 | IN7BUF_ID;
      WRITEDELAY();
      if (TOGCTL & 0x80)
         TOGCTL |= 0x20;
      else
         TOGCTL |= 0x40;
   }

   // Loop the data to the IN endpoint
   for (i=0; i < OUT7BC; i++)
   {
      IN7BUF[i] = ~OUT7BUF[i];
   }

//   // BUGBUG If 63 bytes was written, inject an error
//   if (OUT7BC == 63)
//   {
//      IN7BUF[3] = IN7BUF[4];
//   }

   // Arm the IN endpoint
   IN7BC = i;

   // Arm the OUT so it can receive the next packet
   OUT7BC = 0;

   // clear the IRQ
	EZUSB_IRQ_CLEAR();
	OUT07IRQ = bmEP7;
}
