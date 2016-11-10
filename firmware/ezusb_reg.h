
/*
 *
 * $Id: ezusb_reg.h 31 2006-06-05 14:01:24Z gnrr $
 *
 * Change History:
 *
 * $Log: ezusb_reg.h,v $
 * Revision 1.6  2004/01/27 20:23:26  arniml
 * add ISOCTL
 *
 * Revision 1.5  2004/01/26 18:36:24  arniml
 * add new SFRs (triggered by n64pad)
 *
 * Revision 1.4  2003/12/23 22:44:21  arniml
 * update with additional SFR etc.
 *
 * Revision 1.3  2002/03/03 23:35:32  arniml
 * add TOGCTL
 *
 * Revision 1.2  2001/08/15 18:24:03  arniml
 * added some register definitions for serial port 1 and IN2 endpoint
 *
 * Revision 1.1.1.1  2001/07/14 15:32:37  arniml
 * initial import
 *
 *
 */

#ifndef __EZUSB_REG_H__
#define __EZUSB_REG_H__


sbit  at 0x98 RI_0;
sbit  at 0x99 TI_0;
sbit  at 0xAC ES0;
sbit  at 0xAD ET2;
sbit  at 0xAE ES1;
sbit  at 0xC0 RI_1;
sbit  at 0xC1 TI_1;
sbit  at 0xCA TR2;
sbit  at 0xCF TF2;
sbit  at 0xDF SMOD1;
sbit  at 0xE8 EUSB;

sfr   at 0x82 DPL0;
sfr   at 0x83 DPH0;
sfr   at 0x84 DPL1;
sfr   at 0x85 DPH1;
sfr   at 0x86 DPS;
sfr   at 0x8E CKCON;
sfr   at 0x91 EXIF;
sfr   at 0x92 MPAGE;
sfr   at 0x98 SCON0;
sfr   at 0x99 SBUF0;
sfr   at 0xC0 SCON1;
sfr   at 0xC1 SBUF1;
sfr   at 0xC8 T2CON;
sfr   at 0xCA RCAP2L;
sfr   at 0xCB RCAP2H;
sfr   at 0xCC TL2;
sfr   at 0xCD TH2;
sfr   at 0xD8 EICON;
sfr   at 0xE8 EIE;
sfr   at 0xF8 EIP;


xdata at 0x7FB4 unsigned char EP0CS;
xdata at 0x7F00 unsigned char IN0BUF;
xdata at 0x7FB5 unsigned char IN0BC;
xdata at 0x7EC0 unsigned char OUT0BUF;
xdata at 0x7FC5 unsigned char OUT0BC;

xdata at 0x7FB6 unsigned char IN1CS;
xdata at 0x7E80 unsigned char IN1BUF;
xdata at 0x7FB7 unsigned char IN1BC;
xdata at 0x7E40 unsigned char OUT1BUF;
xdata at 0x7FC6 unsigned char OUT1CS;
xdata at 0x7FC7 unsigned char OUT1BC;

xdata at 0x7E00 unsigned char IN2BUF;
xdata at 0x7FB9 unsigned char IN2BC;
xdata at 0x7FB8 unsigned char IN2CS;
xdata at 0x7FC9 unsigned char OUT2BC;
xdata at 0x7FC8 unsigned char OUT2CS;
xdata at 0x7DC0 unsigned char OUT2BUF;

xdata at 0x7D80 unsigned char IN3BUF;
xdata at 0x7D40 unsigned char OUT3BUF;
xdata at 0x7FBA unsigned char IN3CS;
xdata at 0x7FBB unsigned char IN3BC;
xdata at 0x7FCA unsigned char OUT3CS;
xdata at 0x7FCB unsigned char OUT3BC;

xdata at 0x7D00 unsigned char IN4BUF;
xdata at 0x7CC0 unsigned char OUT4BUF;
xdata at 0x7FBC unsigned char IN4CS;
xdata at 0x7FCC unsigned char OUT4CS;
xdata at 0x7FBD unsigned char IN4BC;
xdata at 0x7FCD unsigned char OUT4BC;

xdata at 0x7F9C unsigned char OEA;
xdata at 0x7F96 unsigned char OUTA;
xdata at 0x7F99 unsigned char PINSA;
xdata at 0x7F9D unsigned char OEB;
xdata at 0x7F97 unsigned char OUTB;
xdata at 0x7F9A unsigned char PINSB;
xdata at 0x7F9E unsigned char OEC;
xdata at 0x7F98 unsigned char OUTC;
xdata at 0x7F9B unsigned char PINSC;
xdata at 0x7F93 unsigned char PORTACFG;
xdata at 0x7F94 unsigned char PORTBCFG;
xdata at 0x7F95 unsigned char PORTCCFG;

xdata at 0x7FA1 unsigned char ISOCTL;

xdata at 0x7FA9 unsigned char IN07IRQ;
xdata at 0x7FAA unsigned char OUT07IRQ;
xdata at 0x7FAC unsigned char IN07IEN;
xdata at 0x7FAD unsigned char OUT07IEN;
xdata at 0x7FAB unsigned char USBIRQ;
xdata at 0x7FAE unsigned char USBIEN;

xdata at 0x7FDD unsigned char USBPAIR;
xdata at 0x7FAF unsigned char USBBAV;
xdata at 0x7FD6 unsigned char USBCS;
xdata at 0x7FD7 unsigned char TOGCTL;
xdata at 0x7FD4 unsigned char SUDPTRH;
xdata at 0x7FD5 unsigned char SUDPTRL;
xdata at 0x7FE8 unsigned char SETUPDAT;
xdata at 0x7FA5 unsigned char I2CS;
xdata at 0x7FA6 unsigned char I2DAT;
xdata at 0x7FDE unsigned char IN07VAL;
xdata at 0x7FDF unsigned char OUT07VAL;
xdata at 0x7FE2 unsigned char FASTXFR;
xdata at 0x7FE3 unsigned char AUTOPTRH;
xdata at 0x7FE4 unsigned char AUTOPTRL;
xdata at 0x7FE5 unsigned char AUTODATA;


#endif /* __EZUSB_REG_H__ */
