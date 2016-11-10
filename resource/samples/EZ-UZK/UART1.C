/*
 * uart1.c : serial1 handling routines with interrupts
 *   by uratan! 2004.5.20
 */
	/*
	 * serial1 は EZ-USB 同士の通信に使います。
	 * この uart 制御では、割り込みを使用してバッファリングしています。
	 */
#include <ezusb.h>
#include <ezregs.h>

	/*
	 * 以下、つたない英語でいろいろ書いてますが、
	 * 要はこの uart1 のところでハンドシェイクなしで使っているが
	 * 大丈夫なのか、通信速度はどうするのか、という議論になります。
	 * 当初、本シリアル通信をなるべく早くしてデータロストを防ごうと
	 * 考えていたのですが、結論的には、
	 *
	 *   1. 受け手側が電源が切れているかもしれないし、受け手 PC がいつ
	 *      エンドポイントを読み出してくれるかは分からないので
	 *      ハンドシェイクなしは妥当であろう。
	 *   2. UART の通信速度は、受け手側の PC が INT-EP を読み出す速度
	 *      (10msec毎)よりも遅くしておけば、広義にはデータロストはない
	 *      だろう。 (だから 9600bps)
	 *      狭義には、受け手の EZ-USB はダブルバッファになっているので
	 *      2イベントまでならばデータロストはないであろう。これは、
	 *      キーリピート処理で、「キーオフ--(即座に)-->キーオン」を処理
	 *      するのにも十分だ。
	 *        (3つめのイベントが来てしまったら 2つめのイベントが捨てられます)
	 *   3. 受け手のバッファがあふれないように送る側の PC アプリも気をつけよう
	 *
	 * となりました。で「マウスのイベントも重畳するし本当にいいか」は
	 * よく分からないのですが、まあ使っている限りにおいてそんなに問題に
	 * なっていないです。
	 * あと、以下のパスでの通信があんまりおそいと、親 PC でキーを押してから
	 * 子 PC に検出されるまでの遅延が違和感を呼ぶのですが、これもまあ問題ない
	 * 範囲だと思います。
	 */
/*
 *  ===== UZK TRASFER CAPACITY =====
 *    (how I decide UART speed ?)
 *
 *  think about UZK transfer capacity. this figure shows
 *  the data flow path.
 *
 *  ------------------------------|   |------------------------------
 *   [receiver]  USB  [receiver]  UART  [sender]  USB  [transmitter]
 *   [   PC   ]<======[  UZK   ]<=======[ UZK  ]<======[   PC      ]
 *                |                 |              |
 *            (polling)             |          (SET_REPORT)
 *                |                 |              |
 *          polling rate is      14400bps        12MB/s
 *           10msec/event      (==1440bytes/sec)
 *  ------------------------------|   |------------------------------
 *
 *  system bottle neck may be at
 *      1. polling rate on receiver USB.
 *      2. UART
 *
 *  needed maximum transfer capacity is calculated like below.
 *
 *      a) receiver PC polls 100 events/sec (10msec:theoretically).
 *                           125 events/sec ( 8msec:by real).
 *      b) packet size at UART path is,  10bytes when "Keycodes".
 *                                        6bytes when "mouse".
 *    at the result,
 *      c) needed capacity is    (10+6bytes) x 125 = 2000bytes/sec
 *                                                   -------------
 *  14400bps UART capacisy is only 1400bytes/sec, but I think,
 *  so many events rarely occured. in fact, I can use key repeat
 *  up to 60chars/sec by 14400bps. (120events by on+off)
 *
 *           (I want to increase uart speed, but signal waveform)
 *           (  become bad by the cheap photo coupler        X-<)
 */
/* - - -
 * about handshake (or about discarding contents)
 *
 *   (1) transmitter PC ===> sender UZK
 *        When UART send buffer is already full, sender UZK
 *        make transmiter PC wait, so NO data discarded.
 *   (2) sender UZK ===> receiver UZK
 *        There is no handshake operation, Cause sender UZK do not know
 *        whether receiver PC/UZK is ready or not.
 *        Contents flow speed is limmited by UART speed.
 *   (3) receiver UZK ===> receiver PC
 *        Receiver UZK do not know when receiver PC will feed contents.
 *        Receiver UZK has double buffer, and *DISCARDS* data when
 *        both buffer is already full.
 *
 * ... To decrease the chance of data lost by (3) above,
 *     I decided to reduce UART speed for 9600bps.
 *     With 9600bps, it takes about 10.4msec for flowing 10 byte contents,
 *     and this rate never wins receiver PC's data feed rate...
 *     But you shall still care about PC-to-PC data transfer capacities,
 *     i.e.   do not send contents so frequently over the rate of
 *            2 contents/20msec. (receiver UZK has double buffer)
 */

/*
 * function declarations
 */
void init_uart1(void);
//BYTE get_n_recv(void);
short peek_recv(void);
void set_to_send(BYTE c);
void serial1_isr(void); /* interrupt COM1_VECT using 1 */

/*
 * uart1 using FIFO
 */
#define N_BUFF  16		/* must be 2^x */
	/*
	 * 1. because I decided to keep host waiting on process of SET_REPORT
	 *    request, there mey be no need to use FIFO on send direction...
	 * 2. deep send FIFO may increase delay between SET REPORT request
	 *    and emulated USB keyboad event...
	 */

#define BUFF_PTR_MASK  (N_BUFF-1)

BYTE send_buff[N_BUFF];
BYTE send_in_ptr, send_out_ptr;
BYTE n_send;
BOOL ti1_will_come;

BYTE recv_buff[N_BUFF];
BYTE recv_in_ptr, recv_out_ptr;
BYTE n_recv;


/*
 * initial serial1
 */
void init_uart1(void)
{
	/*
	 * PB2/PB3 is used as RxD1/TxD1
	 */
	PORTBCFG |= bmTXD1 | bmRXD1;	/* select alt function (RxD/TxD) */
	OEB &= ~(bmTXD1 | bmRXD1);		/* disable output about these pins */

	/*
	 * use timer1 + serial1 for 14400bps communication
	 */
	CKCON |= 0x10;		/* T1M=1, clock source is CLK24/4 */
	TMOD &= ~0xf0;		/* clear bits of timer1 */
	TMOD |= 0x20;		/* select mode2 */
	TL1 = 0xff;			/* initial counter */
	TH1 = 256 - 39;		/* reload value for  9600bps (1/39) */
//	TH1 = 256 - 26;		/* reload value for 14400bps (1/26) */
//	TH1 = 256 - 20;		/* reload value for 19200bps (1/20) */
	SMOD1 = 1;			/* baud rate doubler enabled */
	TR1 = 1;			/* run timer1 */

	SCON1 = 0x50;		/* serial mode 1, receiver enabled */
//	TI1 = 1;			/* *NO NEED* to set TI for first send */

	/*
	 * initial both FIFO
	 */
	send_in_ptr = send_out_ptr = 0;
	n_send = 0;
	ti1_will_come = FALSE;		/* no TI1 will come */

	recv_in_ptr = recv_out_ptr = 0;
	n_recv = 0;

	/*
	 * at last, enable serial1 interrupt
	 */
	ES1 = 1;

	return;
}

///*
// * how many chars are in FIFO ?
// */
//BYTE get_n_recv(void)
//{
//	return(n_recv);
//}

/*
 * receive routine, only peek FIFO
 */
short peek_recv(void)
{
	BYTE c;

	if(n_recv == 0)
		return(-1);		/* no data has come */

	ES1 = 0;			/* disable serial1 interrupt */
	c = recv_buff[recv_out_ptr++];
	n_recv--;
	recv_out_ptr &= BUFF_PTR_MASK;
	ES1 = 1;			/* enable serial1 interrupt */

	return(c);
}

/*
 * send routine, set FIFO or invoke transfer
 */
void set_to_send(BYTE c)
{
	/*
	 * wait if there is no space in send buffer,
	 * i.e, keep host waiting on process of SET_REPORT request
	 */
	while(n_send == N_BUFF)
		;

	if(ti1_will_come) {
		/*
		 * I am having transfer data, so TI1 will inform next timing.
		 */
		ES1 = 0;			/* disable serial1 interrupt */
		send_buff[send_in_ptr++] = c;
		n_send++;
		send_in_ptr &= BUFF_PTR_MASK;
		ES1 = 1;			/* enable serial1 interrupt */
	} else {
		/*
		 * transmitter is idle, no TI1 will come
		 */
		SBUF1 = c;			/* send directly here */
		ti1_will_come = TRUE;
	}

	return;
}

/*
 * serial1 Interrupt Service Routine
 */
 	/*
	 * 割り込みハンドラのコード短縮のためにレジスタバンクを指定しています。
	 * このバンク指定のために、コンパイルオプションで NOAREGS を付加しています。
	 * また、割り込みベクタの設定もコンパイラまかせにしています。
	 * 各割り込みハンドラ毎のレジスタ割付は、periph.c 内のコメントを
	 * 参照するなり grep して調べるなりしてください。
	 */
void serial1_isr(void) interrupt COM1_VECT using 1
{
	if(RI1) {
		RI1 = 0;		/* clear ready flag by myself */

		if(n_recv == N_BUFF) {
			/*
			 * buffer overflow, only ignore
			 */
		} else {
			recv_buff[recv_in_ptr++] = SBUF1;
			n_recv++;
			recv_in_ptr &= BUFF_PTR_MASK;
		}
	}

	if(TI1) {
		TI1 = 0;		/* clear ready flag by myself */

		if(n_send == 0) {
			/*
			 * no data to send, so no TI1 will come
			 */
			ti1_will_come = FALSE;
		} else {
			SBUF1 = send_buff[send_out_ptr++];
			n_send--;
			send_out_ptr &= BUFF_PTR_MASK;
		}
	}
}
