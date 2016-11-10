/*
 * timer0.c : make 1msec tick by timer0
 *   by uratan! 2004.5.24
 */
 	/*
	 * もろもろの処理で使う 1msec の基準パルスを timer0 にて作ります。
	 */
#include <ezusb.h>
#include <ezregs.h>

/*
 * function declarations
 */
void init_timer0(void);
void timer0_isr(void); /* interrupt TMR0_VECT using 3 */

/*
 * set when timer0 overflow (every 1msec (COUNT_INITIAL))
 */
BOOL timer0_tick;

/*
 * initial timer0
 */
void init_timer0(void)
{
	/*
	 * use timer0, 24MHz/12 clock, 2000 counts for 1msec
	 */
#define COUNT_INITIAL   (65536-2000)

	CKCON &= ~0x08;		/* T0M=0, clock source is CLK24/12 */
	TMOD &= ~0x0f;		/* clear bits of timer0 */
	TMOD |= 0x01;		/* select mode1 */
	TH0 = MSB(COUNT_INITIAL);
	TL0 = LSB(COUNT_INITIAL);
	TR0 = 1;			/* run timer1 */

	/*
	 * initial my variable
	 */
	timer0_tick = FALSE;

	/*
	 * at last, enable timer0 interrupt
	 */
	ET0 = 1;

	return;
}

/*
 * timer0 Interrupt Service Routine
 */
 	/*
	 * 割り込みハンドラのコード短縮のためにレジスタバンクを指定しています。
	 * このバンク指定のために、コンパイルオプションで NOAREGS を付加しています。
	 *   (実際にはこのハンドラの記述ではレジスタを使わずに済んでいます)
	 * また、割り込みベクタの設定もコンパイラまかせにしています。
	 * 各割り込みハンドラ毎のレジスタ割付は、periph.c 内のコメントを
	 * 参照するなり grep して調べるなりしてください。
	 */
void timer0_isr(void) interrupt TMR0_VECT using 3
{
	/*
	 * reload initial count value manually
	 */
	TR0 = 0;			/* stop timer1 */
	TH0 = MSB(COUNT_INITIAL);
	TL0 = LSB(COUNT_INITIAL);
	TR0 = 1;			/* run timer1 */
	timer0_tick = TRUE;
}
