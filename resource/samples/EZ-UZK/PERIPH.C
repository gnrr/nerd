#pragma NOIV					// Do not generate interrupt vectors
	/* cause all interrupt handler in this file is invoked by autovectoring.  */
/*
 * periph.c - UZK main processes
 *   by uratan! 2004.5.19
 */
		/*
		 * periph.c 内で記述される割り込みハンドラは、割り込み共有を
		 * 使っています。なので、個別に割り込みベクタを用意する必要が
		 * ありません。代表のベクタは、USBJmpTb.a51 で指定してあります。
		 *
		 * この periph.c も Cypress の開発ツールのサンプルをたたき台に
		 * 作ってありますが、もう元のものとは別物でしょう。
		 */
//-----------------------------------------------------------------------------
//	File:		periph.c
//	Contents:	Hooks required to implement USB peripheral function.
//
//	Copyright (c) 1997 AnchorChips, Inc. All rights reserved
//-----------------------------------------------------------------------------
#include <ezusb.h>
#include <ezregs.h>

#define MOUSE		/* sync with (mouse) in dscr.a51 */
	/*
	 * dscr.a51 内の $set (mouse) と同期するよう変更すべきです。
	 */

/*
 * TODO
 *  1. USB state control, variable control
 */
	/*
	 * Setup Command の解釈をはじめ、USB のステート管理など
	 * あまり厳密にカバーしていません。ご容赦を。
	 */

/*
 * switch for uart debug report
 */
#if UDEBUG
# define PUTchar(x)   putchar(x)
# define PUTstring(x) putstring((char xdata *)(x))
# define PUThex(x,y)  puthex(x,y)
#else /* UDEBUG */
# define PUTchar(x)
# define PUTstring(x)
# define PUThex(x,y)
#endif /* UDEBUG */

/*
 * defines for HID device
 */
#define UR_GET_REPORT			0x01
#define UR_SET_REPORT			0x09
#define UR_GET_IDLE				0x02
#define UR_SET_IDLE				0x0a
#define     IDLE_TIME_RATIO        4	/* [msec/1] */
#define UR_GET_PROTOCOL			0x03
#define UR_SET_PROTOCOL			0x0b


/*
 * my device's pipe infos (sync with each descriptors in dscr.a51 !)
 */
#ifdef MOUSE
# define IF_HID1     0		/* interface # of HID1 (Keyboard) is 0 */
# define IF_HID2     1		/* interface # of HID2 (Control) is 1 */
# define IF_HID3     2		/* interface # of HID3 (Mouse)  is 2 */
# define N_IFs       3		/* total number of interfaces */
#else /* MOUSE */
# define IF_HID1     0		/* interface # of HID1 (Keyboard) is 0 */
# define IF_HID2     1		/* interface # of HID2 (Control) is 1 */
# define N_IFs       2		/* total number of interfaces */
#endif /* MOUSE */

/* as keyboard */
#define HID1_IN_DATA_LEN   8	/* keycodes --> HOST */
#define HID1_OUT_DATA_LEN  1	/* LED status <-- HOST */

/* as vendor device */
#define HID2_IN_DATA_LEN   2	/* LED status/control_status --> HOST */
#define HID2_OUT_DATA_LEN  9	/* keycodes/mouse/control_status <-- HOST */

/* as mouse */
#define HID3_IN_DATA_LEN   4	/* mouse --> HOST */

/*
 * functions
 */
/* in myself */
void TD_Init(void);
void TD_Poll(void);
BOOL TD_Suspend(void);
BOOL TD_Resume(void);
BOOL DR_SetupCommand(void);
BOOL DR_GetDescriptor(void);
BOOL DR_SetConfiguration(void);
BOOL DR_GetConfiguration(void);
BOOL DR_SetInterface(void);
BOOL DR_GetInterface(void);
BOOL DR_GetStatus(void);
BOOL DR_ClearFeature(void);
BOOL DR_SetFeature(void);
void answer_for_control_in(BYTE xdata *ptr, WORD len);
void xbzero(BYTE xdata *dst, BYTE len);
void xmemcpy(BYTE xdata *dst, BYTE xdata *src, BYTE len);
void filter_mouse_data(BYTE xdata *dst, BYTE len);
void ISR_Sudav(void); /* interrupt 0 using 2 */
void ISR_Ures(void); /* interrupt 0 using 2 */
void ISR_Susp(void); /* interrupt 0 using 2 */
void ISR_Ep1in(void); /* interrupt 0 using 2 */
void ISR_Ep2in(void); /* interrupt 0 using 2 */
void ISR_Ep3in(void); /* interrupt 0 using 2 */
void ISR_dummy(void); /* interrupt 0 using 2 */
/* in uart.c */
#if UDEBUG
extern void init_uart0(void);
extern short keyin(void) reentrant;
extern void putchar(char c) reentrant;
extern void putstring(char xdata *s) reentrant;
extern void puthex(WORD x, BYTE digit) reentrant;
#endif /* UDEBUG */
/* in uart1.c */
extern void init_uart1(void);
extern short peek_recv(void);
extern void set_to_send(BYTE c);
/* in timer0.c */
void init_timer0(void);

/*
 * variables
 *
 * do NOT use variables with initial value, like
 *   BYTE xxxx = 11;               // global one
 *   void xxxx_func(void) {
 *       static BYTE yyyy = 12;    // local+static one
 *   }
 * with these variables, Compiler Links library function C_INIT and
 * initial data, so large amount of codes occupies in objects.
 */
	/*
	 * 普段なにげに使う初期値つきの変数宣言ですが、Keil C Compiler で
	 * 使うとうんとコードが増えますので使わないようにしましょう。
	 */
/* in dscr.a51 */
extern code WORD *HIDDscr1, *ReportDscr1, *ReportDscr1Len;
extern code WORD *HIDDscr2, *ReportDscr2, *ReportDscr2Len;
#ifdef MOUSE
extern code WORD *HIDDscr3, *ReportDscr3, *ReportDscr3Len;
#endif /* MOUSE */
extern code WORD *DscrRWU;
/* in fw.c */
extern BOOL	GotSUD;			// Received setup data flag
extern BOOL	Sleep;
extern BOOL	Rwuen;
/* in timer0.c */
extern BOOL timer0_tick;

/* for myself */
/*
 * device status
 */
BYTE Configuration;		// Current configuration
BYTE AlternateSetting;	// Alternate settings

/*
 * macros for accessing Nth endpoint registers
 */
#define INxBUF(x)   (IN1BUF - 128*(x))
#define INxBC(x)    EPIO[((x)+1)].bytes

/*
 * means "endpoint is already armed, waiting for IN requeset from HOST" flag
 *   [caution] set in TD_Poll(), reset by interrupt handler
 */
	/*
	 * 「エンドポイントはもうデータ転送が起動されちゃったよ、あとは
	 *   ホストが読みに来るのを待つしかないよ」フラグ。
	 * いちど起動してしまったらもう止められないので、バッファの内容を
	 * 排他制御するためのフラグ。割り込みハンドラでクリアするために
	 * バイトのまま用意しました。
	 *   (ビットにパックすると「リードモディファイライト」になって
	 *    この変数のアクセス自体に排他制御が必要になってしまう)
	 */
BYTE INxBUF_is_busy[N_IFs];

/*
 * interface/endpoint status
 */
BYTE Protocol[N_IFs];		/* (nothing is influenced by this value) */
BYTE Idle_Rate[N_IFs];
WORD idle_timer[N_IFs];
BYTE xdata work_INxBUF[N_IFs][64];		/* 64 >= max of HIDn_IN_DATA_LEN */

#define HT_NO_TRIGGER          0
#define HT_WORK_INxBUF_READY   1	/* working INxBUF is ready to send */
#define HT_IDLE_TIME_ELAPSED   2	/* idle time elapsed, enable tansfer */
BYTE HIDx_trigger[N_IFs];

/*
 * consts for accessing Nth endpoint data length
 */
BYTE code HIDx_in_data_len[N_IFs] = {
	HID1_IN_DATA_LEN,
	HID2_IN_DATA_LEN,
#ifdef MOUSE
	HID3_IN_DATA_LEN,
#endif /* MOUSE */
};

/*
 * serial1 comminucation protocol
 *  reset
 *     +----+
 *     |0xff|
 *     +----+
 *  send LED status (payload is 1 byte)
 *     +----+ +----+
 *     |'L' | |    |
 *     +----+ +----+
 *  send keycodes (payload is 8 bytes)
 *     +----+ +----+----+----+----+----+----+----+----+----+
 *     |'K' | |    |    |    |    |    |    |    |    |    |
 *     +----+ +----+----+----+----+----+----+----+----+----+
 *  send mouse action (payload is 4 bytes)
 *     +----+ +----+----+----+----+
 *     |'M' | |    |    |    |    |
 *     +----+ +----+----+----+----+
 *  send control status (payload is 1 byte)
 *     +----+ +----+
 *     |'C' | |    |
 *     +----+ +----+
 *     |<------------------------------------------------->|
 *        all contents including header is passed for/by HID2
 *            |<------------------------------------------>|
 *               only payload is passed for/by HID1,HID3
 */
	/*
	 * キーボード・マウスとして認識される HID1/HID3 は当然ヘッダーなしの
	 * コンテンツのみをやり取りしますが、制御用の HID2 を通るときは
	 * ヘッダーつきです。また、
	 * 'K', 'M', 'C' は親 PC から HID2 に書き込むときは 9バイト固定長
	 * ですが uart1 に流すときに縮めてます。
	 */
#define HEAD_RESET  0xff	/* you can not pass this as contents !!! */
#define HEAD_LEDS   'L'
#define HEAD_CTRL   'C'		/* misc control for future use */
#define HEAD_KEYS   'K'
#define HEAD_MOUS   'M'
/*
 * remap signed value for excluding HEAD_RESET(0xff)
 *
 *   orginal value:    0x81, ..., 0xfe, 0xff, 0x00, 0x01, 0x02, ..., 0x7f
 *                    (-127, ...,   -2,   -1,    0,    1,    2, ...,  127)
 *   ---------------------------------------------------------------------
 *   converted value:  0xfe, ..., 0x81, 0x80, 0x7f, 0x7e, 0x7d, ..., 0x00
 *
 *       CAUTION : you can still NOT send -128 (0x80) !
 */
#define MOUSE_DATA_FILTER   0x7f	/* make xor with 0x7f, or (127-x) */
	/*
	 * 毎送信時に「頭だし」の HEAD_RESET を送りたいのでコンテンツは
	 * 0xff を含んではならない。マウスデータはこれをもつ可能性があるので
	 * 上のように変換してやりとりします。
	 */

/*
 * serial1 comminucation receiver states
 */
#define RECV_for_HID1       0	/* ==IF_HID1 */
#define RECV_for_HID2       1	/* ==IF_HID2 */
#define RECV_for_HID3       2	/* ==IF_HID3 */
#define RECV_NULL_or_IDLE   3	/* ==N_IFs */
BYTE recv_target;				/* I have to handle HEAD_MOUS when !MOUSE */
BYTE recv_ptr;

/*
 * monitor LED
 */
#define MON_LED_OFF    OUTC |= 0x10
#define MON_LED_ON     OUTC &= ~0x10
BYTE mon_led_timer;

//-----------------------------------------------------------------------------
// Task Dispatcher hooks
//	The following hooks are called by the task dispatcher.
//-----------------------------------------------------------------------------

void TD_Init(void) 				// Called once at startup
{
	BYTE i;

	/*
	 * Enable endpoints
	 */
#ifdef MOUSE
	IN07VAL |= bmEP1 + bmEP2 + bmEP3;
#else /* MOUSE */
	IN07VAL |= bmEP1 + bmEP2;
#endif /* MOUSE */

	/*
	 * Enable interrupts for endpoints
	 */
#ifdef MOUSE
	IN07IEN |= bmEP1 + bmEP2 + bmEP3;
#else /* MOUSE */
	IN07IEN |= bmEP1 + bmEP2;
#endif /* MOUSE */

	Rwuen = (WORD)&DscrRWU;		// copy from descriptor (dscr.a51)

	/*
	 * here from by uratan!
	 */
#if UDEBUG
	init_uart0();	/* uart0 for debug */
#endif /* UDEBUG */
	init_uart1();	/* uart1 for comminication with the other */

	OEC |= bmBIT4;		// only PC4 is output now (LED)
	CPUCS &= ~bmCLK24OE;	// disable output of 24MHz

	PUTstring("\n/*\n * start EZ-USB\n */\n");

//	PUTstring("Chip Revision:");
//	PUThex(GET_CHIP_REV(), 1);
//	PUTstring(" (0=A, 2=C, 3=D, 4=E)\n");

//	PUThex(IE, 2);
//	PUTstring(": EA\n");

	/*
	 * initial device
	 */
	Configuration = 0;
	AlternateSetting = 0;

	/*
	 * initial each interface
	 */
	for(i=0; i<N_IFs; i++) {
		xbzero(INxBUF(i), HIDx_in_data_len[i]);
		INxBUF_is_busy[i] = FALSE;

		Protocol[i] = 1;		/* boot device */

		idle_timer[i] = 0;
		HIDx_trigger[i] = HT_NO_TRIGGER;
	}

	/*
	 * HID spec sheet says that
	 *   recommanded default idle rate is
	 *     500ms for keyboard, 0ms for mouse.
	 */
	Idle_Rate[IF_HID1] = 500/*[msec]*/ / IDLE_TIME_RATIO;
	Idle_Rate[IF_HID2] =   0/*[msec]*/ / IDLE_TIME_RATIO;
#ifdef MOUSE
	Idle_Rate[IF_HID3] =   0/*[msec]*/ / IDLE_TIME_RATIO;
#endif /* MOUSE */

	/*
	 * initial others
	 */
	recv_target = RECV_NULL_or_IDLE;		/* reset state */

	mon_led_timer = 0;

	init_timer0();

	return;
}

/*
 * Called repeatedly while the device is idle
 */
void TD_Poll(void)
{
	short d;
	BYTE i;

	/*
	 * this function takes only 60usec when idle.
	 */

#if UDEBUG
	d = keyin();
	if(d != -1)
		PUTchar(d);
#endif /* UDEBUG */

	/*
	 * is something coming from another side of UZK ?
	 */
	d = peek_recv();
	if(d != -1) {
//		PUThex(d, 2);
//		PUTchar('\n');

		MON_LED_OFF;	/* turn off LED cause something act */

		if(d == HEAD_RESET) {
			recv_target = RECV_NULL_or_IDLE;		/* reset state */
		} else {
			switch(recv_target) {
			case RECV_NULL_or_IDLE:
					if(d == HEAD_KEYS)
						recv_target = RECV_for_HID1;	/* change state */
					else if((d == HEAD_LEDS) || (d == HEAD_CTRL))
						recv_target = RECV_for_HID2;	/* change state */
					else if(d == HEAD_MOUS)
						recv_target = RECV_for_HID3;	/* change state */
					else
						;							/* do not change state */
					recv_ptr = 0;
					break;

			case RECV_for_HID3:
#ifndef MOUSE
					/*
					 * I don't have endpoint for mouse, so feed them only
					 */
						/*
						 * 対になっている EZ-USB と同じファームが使われて
						 * いるとは限らないかもしれないから。
						 */
					recv_ptr++;
					if(recv_ptr == HID3_IN_DATA_LEN)
						recv_target = RECV_NULL_or_IDLE;	/* reset state */
					break;
#endif /* !MOUSE */
			case RECV_for_HID1:
			case RECV_for_HID2:
					/*
					 * threw previous work_INxBUF value away
					 * wheather they are still valid ot not.
					 */
					HIDx_trigger[recv_target] &= ~HT_WORK_INxBUF_READY;
						/*
						 * work_INxBUF にデータが貯まっていてもここで
						 * 捨ててしまいます。
						 */

					work_INxBUF[recv_target][recv_ptr++] = d;
					if(recv_ptr == HIDx_in_data_len[recv_target]) {
						HIDx_trigger[recv_target] |= HT_WORK_INxBUF_READY;
						if(recv_target==RECV_for_HID3) {
							filter_mouse_data(&work_INxBUF[RECV_for_HID3][0], HID3_IN_DATA_LEN);
						}
						recv_target = RECV_NULL_or_IDLE;	/* reset state */
					}
					break;

			default:
					recv_target = RECV_NULL_or_IDLE;	/* reset state */
					break;
			}
		}
	}

	/*
	 * measure report interval time
	 */
	if(timer0_tick) {
		/*
		 * clear the flag
		 */
		timer0_tick = FALSE;

		/*
		 * turn on monitor every interval time
		 */
		if(++mon_led_timer == 20/*[msec]*/) {
			mon_led_timer = 0;	/* reset timer */
			MON_LED_ON;			/* turn on LED here */
		}

		if(Configuration) {
			idle_timer[IF_HID1]++;
//			idle_timer[IF_HID2]++;	/* <== HID2 idle timer is disabled here */
#ifdef MOUSE
			idle_timer[IF_HID3]++;
#endif /* MOUSE */
		}
	}

	/*
	 * loop for all endpoints
	 */
	for(i=0; i<N_IFs; i++) {
		/*
		 * is interval time elapsed ?
		 */
		if(Idle_Rate[i] == 0) {
			idle_timer[i] = 0;
				/*
				 * it seems that HID drivers on recently OS
				 * always set 0 to Idle_Rate.
				 */
					/*
					 * みた範囲の OS は必ず "SET_IDEL 0" してきました。
					 */
		} else {
			if(idle_timer[i] >= Idle_Rate[i] * IDLE_TIME_RATIO) {
				HIDx_trigger[i] |= HT_IDLE_TIME_ELAPSED;
				idle_timer[i] = 0;
					/*
					 * I want to disable timer trigger on HID2 in any case.
					 * see 26 lines above.
					 */
						/*
						 * HID2 (UZK CTRL) に、時間切れでのレポートを
						 * させないために、上でタイマーをカウントさせていない
						 */
			}
		}
	}

	/*
	 * loop for all endpoints
	 */
	for(i=0; i<N_IFs; i++) {
		/*
		 * arm the endpoint if condition met
		 */
		if(INxBUF_is_busy[i]) {
			/*
			 * the endpoint is already armed, but IN request does not
			 * come yet. do NOT touch INxBUF because I don't know
			 * when IN request will come.
			 */
			;	/* do nothing now, keep state and try in next TD_Poll() loop */
					/*
					 * いつホストがデータを読みに来るか分からないから
					 * もう INxBUF の内容を変更できない。変更している
					 * 途中のデータを読まれるかもしれないから
					 */
		} else {
			/*
			 * when new data arrived, copy contents from work_INxBUF.
			 *    (HT_WORK_INxBUF_READY is prior to HT_IDLE_TIME_ELAPSED)
			 */
			if(HIDx_trigger[i] & HT_WORK_INxBUF_READY) {
				/*
				 * disable interrupt while updating if any interrupt
				 * handler will access INxBUF.
				 * now, ISR_Ep3in() modifies IN3BUF but
				 * INxBUF_is_busy[IF_HID3] achieve the exclusive control.
				 */
//				EA = 0;		/* exclusive control against interrupt */
				xmemcpy(INxBUF(i), work_INxBUF[i], HIDx_in_data_len[i]);
//				EA = 1;
					/*
					 * ISR_Ep3in() では IN3BUF にアクセスしているので
					 * INxBUF のアクセスに排他制御が必要かと思ったが、
					 * 変数 INxBUF_is_busy[] でうまく排他制御されている
					 * ようなので割り込みを禁止してまでの排他制御はいらない。
					 *                                          (...はずだ)
					 */
			}

			/*
			 * when timer trigger, send remained data(*) in INxBUF again.
			 *   there are only *state* data in Keycodes and LED status.
			 *   so I can report same data over and over again.
			 *   mouse has both *state* data (button) and *differential*
			 *   data (pointer). *differential* data once sent are
			 *   cleared in ISR_Ep3in()
			 */
				/*
				 * (実使用上ではまずないんだが)時間切れによるレポートでは、
				 * しかたがないので前のデータをそのまま再送する。
				 * キーボードの場合には「前と同じキー」になるので問題ないが、
				 * マウスの場合は「前と同じ移動量」になっていしまい
				 * よろしくない。なので実は ISR_Ep3in() では送信後に差分
				 * データをクリアしている。
				 */
			if(HIDx_trigger[i]) {
				HIDx_trigger[i] = HT_NO_TRIGGER;

				if(Configuration) {
					INxBUF_is_busy[i] = TRUE;
					INxBC(i) = HIDx_in_data_len[i];	/* contents ready now */
					idle_timer[i] = 0;		/* measure idle time from here */
				}
			}
		}
	}
}

/*
 * Called before the device goes into suspend mode
 */
BOOL TD_Suspend(void)
{
	MON_LED_OFF;	/* turn off LED */

	return(TRUE);
}

/*
 * Called after the device resumes
 */
BOOL TD_Resume(void)
{
	USBCS |= bmRWAKEUP;		// clear the bit
		/*
		 * これを行えと AN2131 の仕様書にあったので追加してみました
		 */
	return(TRUE);
}

//-----------------------------------------------------------------------------
// Device Request hooks
//	The following hooks are called by the end point 0 device request parser.
//-----------------------------------------------------------------------------

/*
 * HID Requset Support Requirements
 *
 *                     Get      Set      Get      Set      Get      Set
 *   Device Type       Report   Report   Idle     Idle     Protocol Protocol
 * -------------------------------------------------------------------------
 *  Boot Mouse         Required Optional Optional Optional Required Required
 *  Non-Boot Mouse     Required Optional Optional Optional Optional Optional
 *  Boot Keyboard      Required Optional Required Required Required Required
 *  Non-Boot Keyboard  Required Optional Required Required Optional Optional
 *  Other Device       Required Optional Optional Optional Optional Optional
 */
	/*
	 * まあ HID の仕様書をよく読んでくれたまえ。
	 * 変数 Protocol[] の内容はやり取りはしてますが
	 * これで動作を変えたりはしてません。
	 */
BOOL DR_SetupCommand(void)
{
	BYTE target_hid;
	BOOL is_hid1;
#ifdef MOUSE
	BOOL is_hid3;
#endif /* MOUSE */
	BYTE ans_len, req_len, i;

#if UDEBUG
	PUTchar(':');
	for(i=0; i<8; i++)
		PUThex(SETUPDAT[i], 2);
	PUTstring(" - ");
#endif /* UDEBUG */

	MON_LED_OFF;	/* turn off LED cause something act */

	/*
	 * feed class request only
	 */
	if((SETUPDAT[0] & SETUP_MASK) != SETUP_CLASS_REQUEST)
		return(TRUE);

	/*
	 * which interface is target ?
	 */
	if((SETUPDAT[5] != 0x00) || (SETUPDAT[4] >= N_IFs))
		goto exit_with_stall;

	target_hid = SETUPDAT[4];
	is_hid1 = (SETUPDAT[4] == IF_HID1);
#ifdef MOUSE
	is_hid3 = (SETUPDAT[4] == IF_HID3);
#endif /* MOUSE */

	/*
	 * I shall not handle so long data
	 */
	if(SETUPDAT[7] != 0x00)
		goto exit_with_stall;

	req_len = SETUPDAT[6];
	ans_len = 0;			/* no need to answer */

	switch(SETUPDAT[1]) {
	case UR_GET_REPORT:			/* 0x01 mandatory */
		PUTstring("GET_REPO\n");
			ans_len = HIDx_in_data_len[target_hid];
			xmemcpy(IN0BUF, INxBUF(target_hid), ans_len);
			break;

	case UR_GET_IDLE:			/* 0x02 optional */
		PUTstring("GET_IDLE\n");
			IN0BUF[0] = Idle_Rate[target_hid];
			ans_len = 1;
			break;

	case UR_SET_IDLE:			/* 0x0a optional */
		PUTstring("SET_IDLE -");
		PUThex(SETUPDAT[3], 2);
		PUTchar('\n');
			/*
			 * ignore if shoter than Polling interval
			 * in endpoint descriptor (10msec)
			 */
			if(SETUPDAT[3] == 0)
				Idle_Rate[target_hid] = 0;	/* indefinite */
			else if(SETUPDAT[3] < 3)
				Idle_Rate[target_hid] = 3;	/* minimum */
			else
				Idle_Rate[target_hid] = SETUPDAT[3];

			idle_timer[target_hid] = 0;
			break;

	case UR_GET_PROTOCOL:		/* 0x03 mandatory if boot dev */
		PUTstring("GET_PROT\n");
			IN0BUF[0] = Protocol[target_hid];
			ans_len = 1;
			break;

	case UR_SET_PROTOCOL:		/* 0x0b mandatory if boot dev */
		PUTstring("SET_PROT -");
		PUThex(SETUPDAT[2], 1);
		PUTchar('\n');
			Protocol[target_hid] = SETUPDAT[2];
			break;

	case UR_SET_REPORT:			/* 0x09 optional */
		PUTstring("SET_REPO -");
#ifdef MOUSE
			if(is_hid3)
				goto exit_with_stall;
#endif /* MOUSE */

			if(is_hid1)
				i = HID1_OUT_DATA_LEN;
			else
				i = HID2_OUT_DATA_LEN;

			if(req_len != i)
				goto exit_with_stall;

			/*
			 * Arm endpoint - do it here to clear (after sud avail)
			 * Clear bytecount to allow new data in; also stops NAKing
			 */
			OUT0BC = 0;
			while(EP0CS & 0x08)
				;

#if UDEBUG
			for(i=0; i<OUT0BC; i++)
				PUThex(OUT0BUF[i], 2);
			PUTchar('\n');
#endif /* UDEBUG */

			if(OUT0BC != req_len)
				goto exit_with_stall;

			/*
			 * rewind communication every time
			 * cause I don't know partner's state.
			 * he may NOT be in `RECV_NULL_or_IDLE`
			 * by power-down or suspend of my side.
			 */
				/*
				 * uart1 の向こうにいる相方がどんな状態にあるか
				 * 分からないので、毎送信ごとに初期化命令を送ることにした
				 */
			set_to_send(HEAD_RESET);
				/*
				 * because here is NOT interrupt layer, I can wait.
				 * so set_to_send() waits when uart send buff is full.
				 * at the result, transaction with host shall be late.
				 */
					/*
					 * 実はこの Setup Command の処理は、割り込み処理では
					 * なくポーリング処理の一部なので、多少時間がかかっても
					 * いいのです。なのですでに送信バッファがいっぱいの
					 * 時は set_to_send() 関数はバッファが空くまで待つように
					 * しました。誰が待たされるのかというと、SET_REPORT を
					 * 発行した PC が待たされます。
					 */

			if(is_hid1) {
				set_to_send(HEAD_LEDS);	/* this is for uart1 comm */
				set_to_send(HEAD_LEDS);	/* this is for return data */
			} else {
				/*
				 * data from host have uart1 comminication header
				 * HEAD_KEYS/HEAD_MOUS/HEAD_CTRL on the top
				 */
				if(OUT0BUF[0] == HEAD_KEYS)
					;
				else if(OUT0BUF[0] == HEAD_MOUS) {
					req_len = 1+ HID3_IN_DATA_LEN;	/* reduce uart1 data size */
					filter_mouse_data(&OUT0BUF[1], HID3_IN_DATA_LEN);
				} else if(OUT0BUF[0] == HEAD_CTRL) {
					set_to_send(HEAD_CTRL);	/* this is for uart1 comm */
					req_len = HID2_IN_DATA_LEN;		/* reduce uart1 data size */
				} else
					goto exit_with_stall;
			}

			for(i=0; i<req_len; i++)
				set_to_send(OUT0BUF[i]);

			break;

	default:
			goto exit_with_stall;
	}

	if(ans_len != 0) {
		if(ans_len > req_len)
			ans_len = req_len;
		EZUSB_SET_EP_BYTES(IN0BUF_ID, ans_len);
	}

	return(FALSE);

	/*
	 * ---------------------------------
	 *    entry for return with error
	 * ---------------------------------
	 */
exit_with_stall:

	EZUSB_STALL_EP0();		/* Stall End Point 0 */

	return(FALSE);
}

BOOL DR_GetDescriptor(void)
{
	BOOL is_hid1;
#ifdef MOUSE
	BOOL is_hid3;
#endif /* MOUSE */

	PUTstring("GetDesc ");

	if((SETUPDAT[5] != 0x00) || (SETUPDAT[4] >= N_IFs)) {
		PUTchar('\n');
		return(TRUE);
	}

	is_hid1 = (SETUPDAT[4] == IF_HID1);
#ifdef MOUSE
	is_hid3 = (SETUPDAT[4] == IF_HID3);
#endif /* MOUSE */

	if(SETUPDAT[3]==GD_HID/*0x21*/) {
		PUTstring("HID\n");

#ifdef MOUSE
		if(is_hid3) {
			SUDPTRH = MSB((WORD)HIDDscr3);
			SUDPTRL = LSB((WORD)HIDDscr3);
		} else
#endif /* MOUSE */
		if(is_hid1) {
			SUDPTRH = MSB((WORD)HIDDscr1);
			SUDPTRL = LSB((WORD)HIDDscr1);
		} else {
			SUDPTRH = MSB((WORD)HIDDscr2);
			SUDPTRL = LSB((WORD)HIDDscr2);
		}
		return(FALSE);
	}

	if(SETUPDAT[3]==GD_REPORT/*0x22*/) {
		PUTstring("REPO\n");
//	} else if(SETUPDAT[3]==UDESC_PHYSICAL/*0x23*/) {
//		PUTstring("PHY\n");
	} else {
		PUTchar('\n');
		return(TRUE);
	}

		/*
		 * can't use SUDPTR cause report desc has not length on the top
		 */
			/*
			 * レポートデスクリプタは先頭バイトが長さじゃないので
			 * SUDPTR レジスタを使ったハードまかせ転送が使えません。
			 */
#ifdef MOUSE
	if(is_hid3)
		answer_for_control_in((BYTE xdata *)&ReportDscr3, &ReportDscr3Len);
	else
#endif /* MOUSE */
	if(is_hid1)
		answer_for_control_in((BYTE xdata *)&ReportDscr1, &ReportDscr1Len);
	else
		answer_for_control_in((BYTE xdata *)&ReportDscr2, &ReportDscr2Len);

	return(FALSE);
}

	/*
	 * 以下はほぼもとのサンプルのままです。
	 */
BOOL DR_SetConfiguration(void)	// Called when a Set Configuration command is received
{
	PUTstring("SetConf\n");

	Configuration = SETUPDAT[2];
	return(TRUE);				// Handled by user code
}

BOOL DR_GetConfiguration(void)	// Called when a Get Configuration command is received
{
	PUTstring("GetConf\n");

	IN0BUF[0] = Configuration;
	EZUSB_SET_EP_BYTES(IN0BUF_ID,1);
	return(TRUE);				// Handled by user code
}

BOOL DR_SetInterface(void) 		// Called when a Set Interface command is received
{
	PUTstring("SetIf\n");

	AlternateSetting = SETUPDAT[2];
	return(TRUE);				// Handled by user code
}

BOOL DR_GetInterface(void) 		// Called when a Set Interface command is received
{
	PUTstring("GetIf\n");

	IN0BUF[0] = AlternateSetting;
	EZUSB_SET_EP_BYTES(IN0BUF_ID,1);
	return(TRUE);				// Handled by user code
}

BOOL DR_GetStatus(void)
{
	PUTstring("GetStat\n");

	return(TRUE);
}

BOOL DR_ClearFeature(void)
{
	PUTstring("ClrFeat\n");

	return(TRUE);
}

BOOL DR_SetFeature(void)
{
	PUTstring("SetFeat\n");

	return(TRUE);
}


/*
 * function returning data on endpoint 0
 *   (these codes are extracted from fw.c, see fw.c for original)
 *
 * this function is also valid when trasfer data has NO length on him top.
 *   (you can use SUDPTR only when he have length on the top of the data)
 */
 	/*
	 * もともと fw.c にあった処理をここで関数化して使ってます。
	 */
void answer_for_control_in(BYTE xdata *ptr, WORD len)
{
	WORD tmp_len;

	tmp_len = (SETUPDAT[7]<<8) | SETUPDAT[6];
	if(len > tmp_len)
		len = tmp_len;	/* limit to the requested length */

	while(len) {
		if(len > 64)
			tmp_len = 64;
		else
			tmp_len = len;

		xmemcpy(IN0BUF, ptr, tmp_len);

		/* set length and arm Endpoint */
		EZUSB_SET_EP_BYTES(IN0BUF_ID, tmp_len);
		len -= tmp_len;
		ptr += tmp_len;

		/* Wait for it to go out (Rev C and above) */
		while(EP0CS & 0x04)
			;
	}

	/*
	 * Arm a 0 length packet just in case.  There was some reflector traffic
	 * about Apple hosts asking for too much data.  This will keep them happy
	 * and will not hurt valid hosts because the next SETUP will clear this.
	 */
	EZUSB_SET_EP_BYTES(IN0BUF_ID, 0);

#if 0
/*
 * no need to clear this flag here...???
 * this flag is cleared together at end of SetupCommand() in fw.c
 */
	/*
	 * Clear the HS-nak bit
	 */
	EP0CS = bmHS;
#endif /* 0 */

	return;
}

/*
 * function to clear memories
 */
void xbzero(BYTE xdata *dst, BYTE len)
{
	while(len--) {
		*dst = 0x00;
		dst++;
	}

	return;
}

/*
 * function to copy memories
 */
void xmemcpy(BYTE xdata *dst, BYTE xdata *src, BYTE len)
{
	while(len--) {
		*dst = *src;
		dst++;
		src++;
	}

	return;
}

/*
 * convert mouse data contents for uart1 comminication HEAD_RESET byte value
 */
void filter_mouse_data(BYTE xdata *dst, BYTE len)
{
	while(len--) {
		*dst ^= MOUSE_DATA_FILTER;
		dst++;
	}

	return;
}


//-----------------------------------------------------------------------------
// USB Interrupt Handlers
//	The following functions are called by the USB interrupt jump table.
//-----------------------------------------------------------------------------
/*
 * Keil C Compiler function modifier "interrupt" affects,
 *   1. generate interrupt vector if no "#pragma NOIV".
 *   2. save/restore ALL registers if this function calls outer function.
 */
	/*
	 * Keil C Compiler で "interrupt" を付けた関数は、
	 *  1. 自動で割り込みベクタが設定されます。
	 *  2. 外部の関数を呼び出している場合には全レジスタを退避・復帰する
	 *     コードが挿入されますので、コードがうんと膨らみます。
	 */
/*
 * I assign register banks for interrupt like below
 *
 *   uart1.c: void serial1_isr(void) interrupt COM1_VECT using 1
 *   periph.c: void ISR_Ep1in(void) interrupt 0 using 2
 *   periph.c: void ISR_Ep2in(void) interrupt 0 using 2
 *   periph.c: void ISR_Ep3in(void) interrupt 0 using 2
 *   periph.c: void ISR_Sudav(void) interrupt 0 using 2
 *   periph.c: void ISR_Susp(void) interrupt 0 using 2
 *   periph.c: void ISR_Ures(void) interrupt 0 using 2
 *   periph.c: void ISR_dummy(void) interrupt 0 using 2
 *   timer0.c: void timer0_isr(void) interrupt TMR0_VECT using 3 (*)
 *                (*) registers are not used in assembled code
 */
	/*
	 * 割り込みハンドラ毎のレジスタバンクの割り当ては以上の通りです。
	 * (通常ルーチンが bank 0 を使うのでしょう)
	 */

/*
 * Setup Data Available Interrupt Handler
 */
void ISR_Sudav(void) interrupt 0 using 2
{
//	PUTstring("Sudav\n");

	GotSUD = TRUE;				// Set flag

	EZUSB_IRQ_CLEAR();
	USBIRQ = bmSUDAV;			// Clear SUDAV IRQ
}

/*
 * USB Reset Interrupt Handler
 */
void ISR_Ures(void) interrupt 0 using 2
{
	BYTE i;

	PUTstring("Ures\n");

	GotSUD = FALSE;			// clear old status
	Configuration = 0;		// clear Current configuration

	for(i=0; i<N_IFs; i++) {
		INxBUF_is_busy[i] = FALSE;
		idle_timer[i] = 0;
	}
		/* others may be re-initialized here ... */

	EZUSB_IRQ_CLEAR();
	USBIRQ = bmURES;			// Clear URES IRQ
}

/*
 * Global Suspend Interrupt Handler
 */
void ISR_Susp(void) interrupt 0 using 2
{
	PUTstring("Susp\n");

	Sleep = TRUE;

	EZUSB_IRQ_CLEAR();
	USBIRQ = bmSUSP;
}

void ISR_Ep1in(void) interrupt 0 using 2
{
	PUTstring("!1\n");

	/*
	 * this entry is called after IN request has success...
	 */
		/*
		 * これらの IN 割り込みは、IN リクエストが成功してバッファが
		 * 空になったところで(次のデータを用意するために)呼び出されます。
		 */
	INxBUF_is_busy[IF_HID1] = FALSE;

	EZUSB_IRQ_CLEAR();
	IN07IRQ = bmEP1;
}

void ISR_Ep2in(void) interrupt 0 using 2
{
	PUTstring("!2\n");
	/*
	 * this entry is called after IN request has success...
	 */
	INxBUF_is_busy[IF_HID2] = FALSE;

	EZUSB_IRQ_CLEAR();
	IN07IRQ = bmEP2;
}

void ISR_Ep3in(void) interrupt 0 using 2
{
	PUTstring("!3\n");
	/*
	 * this entry is called after IN request has success...
	 */

#ifdef MOUSE
	/*
	 * button state is kept, but *differential* data once sent are cleared.
	 */
		/*
		 * マウスの場合の「移動量」のデータのみをクリアしておきます。
		 * これは SET_IDLE による時間経過後に再送する場合のためです。
		 */
	IN3BUF[1] = 0;	/* X */
	IN3BUF[2] = 0;	/* Y */
	IN3BUF[3] = 0;	/* WHEEL */

	INxBUF_is_busy[IF_HID3] = FALSE;
#endif /* MOUSE */

	EZUSB_IRQ_CLEAR();
	IN07IRQ = bmEP3;
}

/*
 * dummy Interrupt Handler for out of use Interrupts
 */
	/*
	 * なにかのときに暴走するのもなんなので、ここで無限ループに落とします。
	 */
void ISR_dummy(void) interrupt 0 using 2
{
	PUTstring("ISR_dummy!");

	while(1)
		;		/* freeze here */
}
