/*
 * Filename: common.h
 * Last modified: Tue Mar 21 2006 22:22:20 LMT
 *
 * $Id: common.h 47 2006-06-05 14:23:11Z gnrr $
 */

#ifndef __COMMON_H__
#define __COMMON_H__

/*
 * build setting
 */
#define EZ_DOWNLOAD		1 /* download firmware from pc (not from e2prom)  */
#define DEBUG			1 /* for debug                                    */
#define WAIT_IN_SCAN	0 /* insert wait into talking to hhk-matrix board */
#define ENABLE_LED		0 /* keyboard LEDs (do not set)                   */

/*
 * type definition
 */
typedef unsigned short ushort;
typedef unsigned char uchar;
typedef unsigned long ulong;
typedef unsigned char bool;

/*
 * macros
 */
#ifndef TRUE
#define TRUE (1==1)
#endif

#ifndef FALSE
#define FALSE (1!=1)
#endif

#define in0buf(n)	(&IN0BUF)[n]
#define out0buf(n)	(&OUT0BUF)[n]
#define in1buf(n)	(&IN1BUF)[n]

/* enable/disable global interrupt */
#define __ei()	(EA=1)
#define __di()	(EA=0)

/* debug light */
#ifdef DEBUG

#define __debug_out_init()	InitSci1()
#define __debug_out(c)		PutChar(c)

/* hi/lo signal for debug (PA4) */
#define __debug_hi()		(OUTA|=0x10)
#define __debug_lo()		(OUTA&=0xEF)
#endif

#endif /* !__COMMON_H__ */
