/*
 * uart.c : serial0 handling routines for debug
 *   by uratan! 2004.5.20
 */
	/*
	 * デバッグは KEIL のデバッグ環境を使わずに、この関数郡にて
	 * シリアルポートに文字出力し、いわゆる printf() デバッグしました。
	 * UDEBUG=1 で make してもかろうじて 4kByte に収まってます。(収めました)
	 * この uart 制御では、デバッグの邪魔にもなりますので
	 * 余計なバッファリング等はいっさいしていません。
	 */
#include <ezusb.h>
#include <ezregs.h>

/*
 * function in this file is valid only UDEBUG (uart debug)
 */
#if UDEBUG

/*
 * because of Keil C Compiler system, all local varibals and
 * parameters of functions are mapped on global memory.
 * so you need exclusive control when over 2 process
 * (normal TD_Poll() and interrupt handler ISR_xx())
 * call same function.
 *
 * you can specify "reentrant" function modifier to map variables on
 * stack(?), but code volume is increased...
 */
	/*
	 * Keil の C コンパイラではローカル変数もグローバル変数と同じ領域に
	 * 固定マップされます。なので通常は、再起的な呼び出しや、2つ以上の
	 * プロセス(?)から呼び出すのはまずいようです。
	 * UZK では TD_Poll() の通常ルーチンと ISR_xx() の割り込みハンドラ
	 * からめいめい勝手なタイミングでこれら関数を呼び出しますので
	 * 関数に reentrant 修飾詞をつけてスタック(ライク?)なローカル変数の
	 * 扱いを指定しています。
	 */

/*
 * function declarations
 */
void init_uart0(void);
short keyin(void) reentrant;
//BYTE getchar(void) reentrant;
void raw_putchar(char c) reentrant;
void putchar(char c) reentrant;
void putstring(char xdata *s) reentrant;
void puthex(WORD x, BYTE digit) reentrant;

/*
 * initial serial0
 */
void init_uart0(void)
{
	/*
	 * PC0/PC1 is used as RxD0/TxD0
	 */
	PORTCCFG |= bmTXD0 | bmRXD0;	/* select alt function (RxD/TxD) */
	OEC &= ~(bmTXD0 | bmRXD0);		/* disable output about these pins */

	/*
	 * use timer2 + serial0 for 57600bps communication
	 */
	RCAP2H = 0xff;		/* for 57600bps (1/13) */
	RCAP2L = 0xf3;
	PCON &= ~0x80;		/* SMOD0=0, disable baud rate doubler */
	T2CON = 0x34;		/* start tiemr2 with TCLK/TCLK */

	SCON0 = 0x50;		/* serial mode 1, receiver enabled */
	TI = 1;				/* set TI for first send */

	return;
}

/*
 * peek/receive from serial0
 */
short keyin(void) reentrant
{
	if(RI) {
		RI = 0;		/* clear ready flag by myself */
		return(SBUF0);
	}

	return(-1);		/* no data arrived */
}

///*
// * wait for a char from serial0
// */
//BYTE getchar(void) reentrant
//{
//	short i;
//
//	while(1) {
//		i = keyin();
//		if(i != -1)
//			return(i);	/* something arrived */
//	}
//}

/*
 * send a char for serial0
 */
void raw_putchar(char c) reentrant
{
	BYTE ea;

		/*
		 * there was some case that the CPU freezes when
		 * putstring() from interrupt handler overlapps putstring() of
		 * normal routine.
		 * I don't know why completely, but TI bit seems be the cause of
		 * freeze.....
		 * so I will guard it like this.
		 */
	ea = EA;	/*[] save interrupt mask bit []*/
	EA = 0;		/*[] exclsive control of TI flag against interrupt []*/

	while(!TI)
		;

	TI = 0;		/* clear ready flag by myself */
	SBUF0 = c;	/* send the char */

	EA = ea;	/*[] recover interrupt mask bit []*/
		/*
		 * TD_Poll() の通常ルーチンと ISR_xx() の割り込みハンドラ
		 * からめいめい勝手なタイミングでこれら関数を呼び出しますことで、
		 * 先に述べた reentrant 問題以外にも、ready bit が破壊される
		 * 問題が発生しました。
		 * とりあえず割り込み禁止にすることで排他制御をいれましたが、
		 * 最長で 1文字分の時間割り込みがマスクされる可能性があります。
		 * (これで直ったかどうかよくわかりませんが、発生しなくはなりました)
		 */
}

/*
 * send a char for serial0, '\n' is cooked
 */
void putchar(char c) reentrant
{
	if(c=='\n')
		raw_putchar('\r');	/* add carigge return when line-feed */
	raw_putchar(c);
}

/*
 * put out string
 */
/*
 * because of 8051 memory system, these 2 pointers are different !
 *    BYTE xdata xd, *x;
 *    BYTE       yd, *y;
 * you can NOT access internal variable `yd` by xdata pointer `x`.
 *
 * when using normal pointer 'y', you can access both `xd` and `yd`.
 * cause Keil C Compiler links library function CLDPTR,
 * but codes are increased.
 */
	/*
	 * 8051 CPU のメモリシステムにより、これらの 2つのポインタには
	 * まったく互換性がありません。
	 *    BYTE xdata xd, *x;
	 *    BYTE       yd, *y;
	 * xdata を付加しない通常のポインタではどちらの領域もちゃんと
	 * アクセスできますが、それはいちいち領域をチェックする
	 * ライブラリをリンクして毎バイトごとにアドレスの範囲を調べ、
	 * 領域に対応したアセンブラ命令でアクセスしているからです。
	 * つまり、まったくポインタらしくない遅い動作になってしまうわ、
	 * CLDPTR もリンクされてコードは増えるわ、いいとこない状態になります。
	 */
void putstring(char xdata *s) reentrant
{
	while(*s != '\0') {
		putchar(*s);
		s++;
	}

	return;
}

/*
 * put out a value in hex
 */
void puthex(WORD x, BYTE digit) reentrant
{
	putchar(' ');

	do {
		digit--;
		putchar("0123456789ABCDEF"[(x >> (4*digit)) & 0x0f]);
	} while(digit != 0);

	return;
}
#endif /* UDEBUG */
