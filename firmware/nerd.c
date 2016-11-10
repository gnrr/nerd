/*
 *
 * $Id: nerd.c 47 2006-06-05 14:23:11Z gnrr $
 *
 *	this program is fully based on amikbd by Arnim Laeuger
 *
 *	This program is free software; you can redistribute it and/or modify
 *	it under the terms of the GNU General Public License as published by
 *	the Free Software Foundation; either version 2 of the License, or
 *	(at your option) any later version. See also the file COPYING which
 *	came with this application.
 *
 *	This program is distributed in the hope that it will be useful,
 *	but WITHOUT ANY WARRANTY; without even the implied warranty of
 *	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *	GNU General Public License for more details.
 *
 *	You should have received a copy of the GNU General Public License
 *	along with this program; if not, write to the Free Software
 *	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */

#include "common.h"
#include "nerd.h"
#include "usage_id.h"
#include "serial-test.h"

#ifdef KEYMAP_FACTORY
#include "keymap_factory.h"
#else
#include "keymap.h"
#endif


/*************************
 * function declarations *
 *************************/

/* ISRs (must be declared in the main file, using SDCC) */
static void isr_timer0(void) interrupt 1 using 0 critical;
static void isr_timer2(void) interrupt 5 using 3;

extern void isr_usb(void) interrupt 8 using 1;
extern void isr_resume(void) interrupt 6 using 2;

/* in usb_core.c */
extern void init_interrupt_usb(void);
extern void apply_reset_values(void);

/* in serial-test.c */
extern void InitSci1(void);
extern void PutChar(char c) reentrant;

/* sub functions */
static void init_mcu(void);
static void init_interrupt_timer0(void);
static void init_interrupt_timer2(void);

static bool enq_report(const uchar *buf);
static uchar get_map_num(void);
static bool update_nerd_status(const uchar usage_id, const uchar sw);
static uchar get_parent_map_num(const uchar usage_id);
static void send_curr_empty(void);
static bool send_curr_append_key(const uchar usage_id);
static bool send_curr_remove_key(const uchar usage_id);
static bool is_mod_key(const uchar usage_id);
static void nerd_loop(void);
static void EnqPreSend(void);
static void setup_keyboard(void);
static uchar adjust_mod(uchar map_num, uchar new, uchar stat);
static uchar get_mapset_num(void);
void core_apply_reset_values(void) using 1;
void main(void);


/********************************
 * global variable declarations *
 ********************************/

/* in usb_core.h */
extern volatile bit in1_busy;
extern volatile bit kbd_idle_mode;
extern volatile data uchar kbd_idle_duration;
extern volatile data uchar kbd_idle_counter;

xdata uchar SendCurr[KBD_REPORT_SIZE], SendTmp[KBD_REPORT_SIZE];
xdata uchar SendOld[KBD_REPORT_SIZE];
xdata REPORT_QUE Report;					/* νĂւ̑��M�p��߰ķ��	 */
data  uchar ScanCode;						/* col-a..c, row-a..c		 */
idata uchar ScanBuf[64];					/* HHK ScanCodes 0:press	 */
idata SCAN_QUE UpdatedKeys;					/* �X�V���ꂽ�����i�[���鷭� */
idata uchar MapSet;							/* �K�p���鷰ϯ�߾�Ĕԍ�	 */
idata uchar ModSave;						/* ��ި̧�Է��ޯė�			 */

idata uchar NerdStat;						/* Nerd X ���						*/
xdata uchar ScanWith[KEYMAP_MAX];		/* Nerd X�Ɠ����ɉ��������̽��ݺ��� */



/******************************************
 * interrupt service routines definitions *
 ******************************************/

/*****************************************************************************
 * Timer 0 interrupt service routine
 * This routine is called every 200 us.
 * out col-a..c, row-a..c lines to hhk matrix-board.
 * and output row-d (#OE) with delay.
 *****************************************************************************/
static void isr_timer0(void) interrupt 1 using 0 critical
{
	uchar sw, next;
#if WAIT_IN_SCAN
	volatile uchar wait;
#endif

	TR0 = 0;						/* stop timer0		*/

	ScanCode = ++ScanCode & 0x3F;	/* 0..64			*/
	OUTC = ScanCode | 0x40;			/* 01xx_xxxx:PC6 hi */

	TL0 = TIMER0_LO;				/* reload counter	*/
	TH0 = TIMER0_HI;

	TR0 = 1;						/* run timer0		*/

#if WAIT_IN_SCAN
	/* delay from hi to lo */
	wait = 10;
	while(wait--) ;
#endif

	OUTC &= 0x3F;					/* 00xx_xxxx:PC6 lo */

#if WAIT_IN_SCAN
	/* delay from lo to hi */
	wait = 4;
	while(wait--) ;
#endif

	sw = PINSC & 0x80;				/* 1000_0000 PC7/sig- 0:press */
	OUTC |= 0x40;					/* 01xx_xxxx:PC6 hi */

	if(sw != ScanBuf[ScanCode]) {
		/* ������Ԃ��O��ƈقȂ�ꍇ */
		ScanBuf[ScanCode] = sw; /* �ޯ̧�X�V */

		/* ������Ԃ��ω����������L���[�ɓ���� */
		next = (UpdatedKeys.tail + 1) & (UPDATE_KEYS_MAX - 1);
		if(next != UpdatedKeys.head) {
			/* ����ɋ󂫂�����ꍇ�̂ݒǉ� */
			UpdatedKeys.dat[UpdatedKeys.tail].scan = ScanCode;
			UpdatedKeys.dat[UpdatedKeys.tail].sw = sw;
			UpdatedKeys.tail = next;
		}
	}
}

/*****************************************************************************
 * Timer 2 interrupt service routine
 * This routine is called every 4 ms. If the keytable has changed, a IN1
 * transfer is triggered immediately.
 * If nothing happened, behaviour depends on the IDLE mode and the idle
 * duration setting.
 *****************************************************************************/
static void isr_timer2(void) interrupt 5 using 3
{
	register uchar i;

	if(TF2 == 0) return;

	TF2 = 0;

	/* send report if we reached the idle duration */
	if(kbd_idle_mode == FALSE) {
		if(--kbd_idle_counter == 0) {
			kbd_idle_counter = kbd_idle_duration; /* reload counter */
		}
	}

	while(Report.head != Report.tail) {
		/* ��߰ķ������łȂ��ꍇ */

		kbd_idle_counter = kbd_idle_duration;	  /* reload counter */

		/* IN1�����߲�Ă��󂭂܂ő҂� */
		while(in1_busy == TRUE) ;

		/* ��߰ķ������1��߰ĕ����o�� */
		for(i=0; i<KBD_REPORT_SIZE; i++) {
			in1buf(i) = Report.rep[Report.head].dat[i];
		}
		Report.head = (++Report.head) & (REPORT_QUE_MAX - 1);

		/* transfer the key buffer to endpoint IN1 */
		in1_busy = TRUE;
		IN1BC = KBD_REPORT_SIZE;
	}
}


/***********************************
 * initialize function definitions
 ***********************************/

/*****************************************************************************
 * initialize ez-usb's hardware
 *	+ interrupt priority
 *	+ port (direction and alternate functions)
 *****************************************************************************/
static void init_mcu(void)
{
	/* interrupt priority */
	IP	= 0x02;					/* hi: timer0 */
	EIP = 0x01;					/* hi: USB	  */

	/* port a / output: bit0..7: debug signal */
	OEA = 0xFF;					/* 1111_1111 */

	/* port b / input : bit2, 3:	serial debug		*/
	/*					bit6:		sdcard data in		*/
	/*			output: bit4, 5, 7: sdcard clk, cs, cmd */
	OEB = 0xB0;					/* 1011_0000 */
#if DEBUG
	PORTBCFG = 0x0C;			/* 0000_1100: use TXD1, RXD */
#endif

	/* port c / input  bit7:	sig- from hhk matrix board			   */
	/*			output bit0..6: row a..d, col a..c to hhk matrix board */
	OEC = 0x7F;					/* 0111_1111 */
}

/*****************************************************************************
 * Setup the timer0.
 * This timer will be used to time the handshake duration after a keycode
 * has been received.
 *****************************************************************************/
static void init_interrupt_timer0(void)
{
	volatile uchar val;

	TR0 = 0;					/* stop timer0				*/
	TF0 = 0;					/* disable timer0 interrupt */
	ET0 = 0;

	/* configure timer0:
	 * + mode 1
	 * + timer operation
	 */

	val = TMOD;					/* timer mode register */

#if DEBUG
	val &= 0xF0;				/* clear bits of timer0(lo-nibble) */
	val |= 0x01;				/* select mode 1				   */
	TMOD = val;
#else
	TMOD  = 0x01;
#endif

	CKCON |= 0x08;		/* 0000_x000: (T0M) clock source is CLK/24/4 */

	TL0 = TIMER0_LO;			/* initialize counter */
	TH0 = TIMER0_HI;

	ET0 = 1;					/* enable timer0 interrupt	   */
	TF0 = 0;					/* clear timer0 interrupt flag */
	TR0 = 1;					/* run timer0				   */
}


/*****************************************************************************
 * Setup timer 2 interrupt.
 *****************************************************************************/
static void init_interrupt_timer2(void)
{
   kbd_idle_counter = kbd_idle_duration; /* set idle counter */

   /*
	* configure timer2:
	* + timer with auto reload
	* + rate is 250 Hz
	*/
   T2CON  = 0x00;
   RCAP2H = TH2 = 0xc1;
   RCAP2L = TL2 = 0x80;

   ET2 = 1;						/* enable timer2 interrupt	   */
   TF2 = 0;						/* clear timer2 interrupt flag */
   TR2 = 1;						/* run timer2				   */
}

/****************************
 * sub-function definitions *
 ****************************/

/*****************************************************************************
 * enqueue into report queue
 *	+ param:  *buf: pointer to buffer in order to enqueue into report queue
 *	+ return: TRUE: succeed
 *			  FALSE: failed
 *****************************************************************************/
static bool enq_report(const uchar *buf)
{
	uchar i, next;
	bool same_report;

	same_report = TRUE;

	/* �O��Ɠ������e������ */
	for(i=0; i<KBD_REPORT_SIZE; i++) {
		if(SendOld[i] == buf[i]) continue;

		same_report = FALSE;
		break;
	}

	/* �O��Ɠ������e�̂Ƃ��� �����ݕs�ŋA�� */
	if(same_report == TRUE) return FALSE;

	next = (Report.tail + 1) & (REPORT_QUE_MAX - 1);

	/* ����ɋ󂫂��Ȃ��Ƃ��� �����ݕs�ŋA�� */
	if(next == Report.head) return FALSE;

	for(i=0; i<KBD_REPORT_SIZE; i++) {
		Report.rep[Report.tail].dat[i] = SendOld[i] = buf[i];

		__debug_out(buf[i]);

	}
	Report.tail = next; /* ײ��߲���X�V */

	return TRUE;
}

/*****************************************************************************
 * get keymap number of Keymap[]
 *	+ param: void
 *	+ return: keymap number
 *****************************************************************************/
static uchar get_map_num(void)
{
	if(NerdStat >= KEYMAP_NLOCK) return KEYMAP_NLOCK; /* with Nerd Lock */
	if(NerdStat >= KEYMAP_NFUNC) return KEYMAP_NFUNC; /* with Nerd Func */

	return NerdStat;
}

/*****************************************************************************
 * Update Nerd status
 *	+ param:  usage_id: usage id
 *	+		  sw:		0:press, other:release
 *	+ return: TRUE:	 changed
 *	+		  FALSE: not changed
 *****************************************************************************/
static bool update_nerd_status(const uchar usage_id, const uchar sw)
{
	uchar stat, mask, ret;

	ret = FALSE;

	/* Nerd���łȂ��ꍇ�� FALSE�ŋA�� */
	if((usage_id < USID_NERD_START) || (usage_id > USID_NERD_END)) return ret;

	mask = 1 << ((usage_id & 0x07) - 1);

	if(usage_id == USID_NERD_LOCK) {
		/* Nerd Lock(ĸ�ٓ���) --> �ذ����̂��ޯĔ��] */
			stat = (sw != KEY_SW_PRESSED)? NerdStat ^ mask : NerdStat;
	} else {
		/* Nerd Lock�ȊO: ���� --> �ޯ� ON, �ذ� --> �ޯ� OFF */
		stat = (sw == KEY_SW_PRESSED)? NerdStat | mask : NerdStat & ~mask;
	}

	if(NerdStat != stat) {
		NerdStat = stat;	   /* �X�V */
		ret = TRUE;
	}

	return ret;
}

/*****************************************************************************
 * adjust modifier bits
 *	+ param:  map_num: current keymap number
 *			  new:	   new modifier bits
 *			  stat:	   adjust state
 *	+ return: adjusted modifier bits
 *****************************************************************************/
static uchar adjust_mod(uchar map_num, uchar new, uchar stat)
{
	uchar ret, curr, cmd;

	__debug_out(map_num|0xD0);
	__debug_out(new|0xE0);
	__debug_out(stat|0xF0);

	curr = SendCurr[0];

	switch(map_num) {
		case KEYMAP_PLAIN:			/* Plain (without Nerd X)				*/
			switch(stat) {
				case MODSTAT_MOD_PRESSED:		cmd = MODADJ_UPDATE;	break;
				case MODSTAT_MOD_RELEASED:		cmd = MODADJ_UPDATE;	break;
				case MODSTAT_INH_PRESSED:		cmd = MODADJ_NOTCHANGE;	break;
				case MODSTAT_INH_REL_NOT_FOUND:	cmd = MODADJ_NOTCHANGE;	break;
				case MODSTAT_INH_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
				case MODSTAT_GEN_PRESSED:		cmd = MODADJ_NOTCHANGE;	break;
				case MODSTAT_GEN_REL_NOT_FOUND: cmd = MODADJ_NOTCHANGE;	break;
				case MODSTAT_GEN_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
				default:						cmd = MODADJ_NOTCHANGE;
			}
			break;
		case KEYMAP_NCTRL:			/* Nerd Control							*/
			switch(stat) {
				case MODSTAT_MOD_PRESSED:		cmd = MODADJ_UPDATE;	break;
				case MODSTAT_MOD_RELEASED:		cmd = MODADJ_UPDATE;	break;
				case MODSTAT_INH_PRESSED:		cmd = MODADJ_REVERT;	break;
				case MODSTAT_INH_REL_NOT_FOUND:	cmd = MODADJ_NOTCHANGE;	break;
				case MODSTAT_INH_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
				case MODSTAT_GEN_PRESSED:		cmd = MODADJ_RESET;		break;
				case MODSTAT_GEN_REL_NOT_FOUND:	cmd = MODADJ_NOTCHANGE;	break;
				case MODSTAT_GEN_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
				default:						cmd = MODADJ_NOTCHANGE;
			}
			break;
		case KEYMAP_NMETA:			/* Nerd Meta							*/
			switch(stat) {
				case MODSTAT_MOD_PRESSED:		cmd = MODADJ_UPDATE;	break;
				case MODSTAT_MOD_RELEASED:		cmd = MODADJ_UPDATE;	break;
				case MODSTAT_INH_PRESSED:		cmd = MODADJ_REVERT;	break;
				case MODSTAT_INH_REL_NOT_FOUND:	cmd = MODADJ_NOTCHANGE;	break;
				case MODSTAT_INH_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
				case MODSTAT_GEN_PRESSED:		cmd = MODADJ_RESET;		break;
				case MODSTAT_GEN_REL_NOT_FOUND:	cmd = MODADJ_NOTCHANGE;	break;
				case MODSTAT_GEN_REL_FOUND:		cmd = MODADJ_NOTCHANGE;	break;
				default:						cmd = MODADJ_NOTCHANGE;
			}
			break;
		case KEYMAP_NCTRL_NMETA:	/* Nerd Control + Nerd Meta				*/
			cmd = MODADJ_UPDATE;
			break;
		case KEYMAP_NFUNC:			/* Nerd Function						*/
			cmd = MODADJ_UPDATE;
			break;
		case KEYMAP_NLOCK:			/* Nerd Lock							*/
			cmd = MODADJ_UPDATE;
			break;
		default:
			cmd = MODADJ_UPDATE;
	}

	switch(cmd) {
		case MODADJ_NOTCHANGE:	 /* �ύX�Ȃ� */
			ret = curr;
			break;
		case MODADJ_UPDATE:		 /* �X�V */
			ModSave = ret = new;
			break;
		case MODADJ_REVERT:		 /* UPDATE�������̒l�ɖ߂� */
			ret = ModSave;
			break;
		case MODADJ_RESET:		 /* ؾ�� */
/*			ModSave = curr; */
			ret = 0x00;
			break;
		case MODADJ_SAVE_RESET:	 /* �ۑ�����ؾ�Ă��� */
			ModSave = new;
			ret = 0x00;
		case MODADJ_OTHER:
		default:
	}

/* 	__debug_out(ret); */

	return ret;
}

/*****************************************************************************
 * get keymap-set number
 *	+ param:  void
 *	+ return: proper keymap-set number
 *****************************************************************************/
static uchar get_mapset_num(void)
{
	ushort wait = 65535;			/* approx. 350ms */
	uchar scan, sw, ret;

	__debug_hi();

	ret = 0;				  /* ������Ԃ� Keymap0 */

#ifdef SCAN_KMAPSET_SELECT

	while(wait-- > 0) {
		/* ���̍X�V�������Ȃ�Keymap0 */
		if(UpdatedKeys.head == UpdatedKeys.tail) continue;

		/* ������Ԃ��ω��������𷭰������o�� */
		scan = UpdatedKeys.dat[UpdatedKeys.head].scan;
		sw =   UpdatedKeys.dat[UpdatedKeys.head].sw;

		/* ��ϯ�߾�đI��p�̷��������̂Ƃ��̂�Keymap1 */
		if((scan == SCAN_KMAPSET_SELECT) && (sw == KEY_SW_PRESSED)) {
			ret = 1;
		}

		/* ���ݷ������1�폜 */
		UpdatedKeys.head = (++UpdatedKeys.head) & (UPDATE_KEYS_MAX - 1);

		/* ��ϯ�߾�đI��p�̷��ɂ��I�����ꂽ�甲���� */
		if(ret==1) break;
	}

	UpdatedKeys.head = UpdatedKeys.tail; /* ���ݷ������ɂ��� */

#endif

	__debug_lo();

	return ret;
}

/*****************************************************************************
 * get parent keymap number of inherit key
 *	+ param:  usage_id: usage-id in plain keymap
 *	+ return: parent keymap number
 *****************************************************************************/
static uchar get_parent_map_num(const uchar usage_id)
{
	uchar map;

	switch(usage_id) {
		case USID_INHERIT_CTRL:	 map = KEYMAP_NCTRL; break;
		case USID_INHERIT_META:	 map = KEYMAP_NMETA; break;
		default:                 map = KEYMAP_PLAIN;
	}

	return map;
}


/*****************************************************************************
 * empty SendCurr[]
 *	+ param:  void
 *	+ return: void
 *****************************************************************************/
static void send_curr_empty(void)
{
	char i;

	/* �����Ȃ�����߰Ă��쐬 */
	for(i=2; i<KBD_REPORT_SIZE; i++)
		SendCurr[i] = USID_NONE;
}

/*****************************************************************************
 * append key to SendCurr[]
 *	+ param:  usage_id: usage-id to append
 *	+ return: TRUE:	 succeeded
 *			  FALSE: failed
 *****************************************************************************/
static bool send_curr_append_key(const uchar usage_id)
{
	char i;
	bool ret;

	ret = FALSE;

	for(i=2; i<KBD_REPORT_SIZE; i++) {
		if(SendCurr[i] == USID_NONE) {
			/* "���Ȃ�"�����������ꍇ �����ɕۑ� */
			SendCurr[i] = usage_id;
			ret = TRUE;
			break;
		}
	}

	return ret;
}

/*****************************************************************************
 * remove key from SendCurr[]
 *	+ param:  usage_id: usage-id to remove
 *	+ return: TRUE:	 succeeded
 *			  FALSE: failed
 *****************************************************************************/
static bool send_curr_remove_key(const uchar usage_id)
{
	char i, j;
	bool ret;

	ret = FALSE;

	for(i=2; i<KBD_REPORT_SIZE; i++) {
		if(SendCurr[i] != usage_id) continue;

		/* ���̷������������ꍇ �폜���đO���ɋl�߂� */
		for(j=i+1; j<KBD_REPORT_SIZE; j++) {
			SendCurr[j-1] = SendCurr[j];
		}
		SendCurr[KBD_REPORT_SIZE-1] = USID_NONE; /* ������"���Ȃ�"�ɂ��� */
		ret = TRUE;
		break;
	}

	return ret;
}

/*****************************************************************************
 * return TRUE if usage_id is modifier key, otherwise return FALSE
 *	+ param:  usage_id: usage-id to test
 *	+ return: TRUE:	 modifier key
 *			  FALSE: not modifier key
 *****************************************************************************/
static bool is_mod_key(const uchar usage_id)
{
	bool ret;

	ret = FALSE;

	if((usage_id >= USID_MOD_START) && (usage_id <= USID_MOD_END))
		ret = TRUE;
	else if(usage_id == USID_NERD_CTRL)
		ret = TRUE;
/* 	else if(usage_id == USID_NERD_META) */
/* 		ret = TRUE; */

	return ret;
}

/*****************************************************************************
 * main procedure of nerd
 *	+ param:  void
 *	+ return: void
 *****************************************************************************/
static void nerd_loop(void)
{
	uchar scan, sw, usid, usid_orig, map, mask, mod_new;
	uchar mod_stat, map_old;

	while(1) {
		/* ���̍X�V�������Ȃ�ȍ~�͏������Ȃ� */
		if(UpdatedKeys.head == UpdatedKeys.tail) continue;

		/* ������Ԃ��ω��������𷭰������o�� */
		scan = UpdatedKeys.dat[UpdatedKeys.head].scan;
		sw =   UpdatedKeys.dat[UpdatedKeys.head].sw;

		/* �܂�Nerd�������Ȃ��� usage id �����擾 */
		usid = Keymap[MapSet][KEYMAP_PLAIN][scan];
		map_old = get_map_num(); /* �ύX�O�̷�ϯ�ߔԍ���ۑ� */

		/* Nerd���̌��� */
		if(update_nerd_status(usid, sw) == TRUE) {
			/* Nerd����Ԃ��ω������ꍇ */
			send_curr_empty();			  /* �����Ȃ�����߰Ă��쐬 */
			ScanWith[map_old] = SCAN_EMPTY;
		}
		map = get_map_num();			  /* ��ϯ�ߔԍ��擾 */
		usid = Keymap[MapSet][map][scan]; /* ��ϯ�߂ɉ����� usage id ���擾 */

		/* �p�����ƈ�ʷ��̌��� */
		if(is_inherit_key(usid) == TRUE) {
			/* �p�����̏ꍇ */
			usid_orig = usid;

			/* �ŏI�I�Ȍp�����̃L�[���擾 */
			while(is_inherit_key(usid) == TRUE)
				usid = Keymap[MapSet][get_parent_map_num(usid)][scan];

			if(is_mod_key(usid_orig) == FALSE) {
				if(sw == KEY_SW_PRESSED) {
					/* �p���� ���� */
					if(send_curr_append_key(usid) == TRUE) {
						/* �ǉ������̏ꍇ */
						/* Nerd���Ɠ����ɉ��������̽��ݺ��ނ�ۑ� */
						ScanWith[map] = scan;
						mod_stat = MODSTAT_INH_PRESSED;
					}
				} else {
					/* �p���� �ذ� */
					mod_stat = MODSTAT_INH_REL_NOT_FOUND;
					if(send_curr_remove_key(usid) == TRUE) {
						/* �폜�����̏ꍇ */
						/* Nerd���Ɠ����ɉ��������̏ꍇ ���̷����폜 */
						if(scan == ScanWith[map])
							ScanWith[map] = SCAN_EMPTY;

						mod_stat = MODSTAT_INH_REL_FOUND;
					}
				}
			}
		} else if(usid != USID_NERD_LOCK) {
			/* ��ʷ��̏ꍇ */
			if(is_mod_key(usid) == FALSE) {
				if(sw == KEY_SW_PRESSED) {
					/* ��ʷ� ���� */
					if(send_curr_append_key(usid) == TRUE) {
						/* �ǉ������̏ꍇ */
						mod_stat = MODSTAT_GEN_PRESSED;
					}
				} else {
					/* ��ʷ� �ذ� */
					mod_stat = MODSTAT_GEN_REL_NOT_FOUND;
					if(send_curr_remove_key(usid) == TRUE) {
						/* �폜�����̏ꍇ */
						/* Nerd���Ɠ����ɉ��������̏ꍇ ���̷����폜 */
						if(scan == ScanWith[map])
							ScanWith[map] = SCAN_EMPTY;

						mod_stat = MODSTAT_GEN_REL_FOUND;
					}
				}
			}
		}

		/* ��ި̧�Է��̌��� */
		mod_new = 0x00;
		if(is_mod_key(usid) == TRUE) {
			/* ��ި̧�Է��̏ꍇ */

			/* Nerd Control/Nerd Meta�͂��ꂼ��Control/Alt�Ƃ��Ĉ��� */
			if(usid == USID_NERD_CTRL) usid = USID_MOD_CTRL_L;
/* 			if(usid == USID_NERD_META) usid = USID_MOD_ALT_L; */

			mask = 1 << (usid & 0x0F);
			if(sw == KEY_SW_PRESSED) {
				/* ��ި̧�Է� ���� */
				mod_new |= mask;  /* ������ �ޯ�ON */
				mod_stat = MODSTAT_MOD_PRESSED;
			} else {
				/* ��ި̧�Է� �ذ� */
				mod_new &= ~mask; /* �ذ��� �ޯ�OFF */
				mod_stat = MODSTAT_MOD_RELEASED;
			}
		}

		/* ��ި̧�԰����Ԃ�␳ */
		SendCurr[0] = adjust_mod(map, mod_new, mod_stat);

		/* ��߰ķ���ɒǉ� */
		enq_report(&SendCurr[0]);

		/* ���ݷ������1�폜 */
		UpdatedKeys.head = (++UpdatedKeys.head) & (UPDATE_KEYS_MAX - 1);
	}
}

/*****************************************************************************
 * enqueue keys which is send automatic to report queue, just after
 * initialization, before hand.
 *	+ param:  void
 *	+ return: void
 *****************************************************************************/
static void EnqPreSend(void)
{
	const uchar MAX = 6;
	volatile ulong wait = 65535 * 2;		/* approx. (350 * 2) ms */
	uchar i, j, n, usid, en;

	n = sizeof(PreSend);
	if(n > MAX) n = MAX;

	j = 2;
	en = FALSE;

	for(i=0; i<MAX; i++) {
		SendCurr[i] = USID_NONE;
	}

	while(wait-- > 0) ;

	for(i=0; i<n; i++) {
		usid = PreSend[i];

		/* MOD����NERD����INHERIT���͖��� */
		if(usid >= USID_MOD_START) continue;

		SendCurr[j++] = usid;
		en = TRUE;
	}

	if(en) {
		enq_report(&SendCurr[0]);			  /* ��߰ķ���ɒǉ� */

		for(i=0; i<8; i++) {
			SendCurr[i] = USID_NONE;
		}
		enq_report(&SendCurr[0]);
	}
}

/*****************************************************************************
 * Applies inital reset values to global variables where necessary.
 * This is not done directly in the variable declaration because these
 * values are required after an USB reset as well.
 *****************************************************************************/
void core_apply_reset_values(void) using 1
{
	kbd_idle_mode		  = FALSE;
	kbd_idle_duration	  = 125;
}

/*****************************************************************************
 * Setup keyboard
 *	+ inititialize variables and buffers
 *****************************************************************************/
static void setup_keyboard(void)
{
	uchar i;

	ScanCode = 0;

	/* clear usb report buffer */
	for(i=0; i<sizeof(SendCurr); i++) {
		SendCurr[i] = 0;   /* 0: �� */
	}

	/* clear hhk scan code buffer */
	for(i=0; i<sizeof(ScanBuf); i++) {
		ScanBuf[i] = KEY_SW_RELEASED;			/* �S�ذ� */
	}

	/* �X�V��� ������ */
	UpdatedKeys.head = UpdatedKeys.tail = 0;

	/* ��ި̧�Է���� ������ */
	ModSave = 0x00;

	/* νĂւ̑��M�p��߰ķ�� ������ */
	Report.head = Report.tail = 0;

	/* Nerd���Ɠ����ɉ������ꂽ�� ������ */
	for(i=0; i<KEYMAP_MAX; i++) {
		ScanWith[i] = SCAN_EMPTY;
	}
}

/*****************************************************************************
 * Earliest possibility to disconnect for re-enumeration.
 * This is not necessary when the firmware resides in the onboard I2C EEPROM
 * where the master control is handed back to the USB core to let it talk to
 * the host. Afterwards we perform a clean re-enumeration.
 *****************************************************************************/
uchar _sdcc_external_startup(void)
{
#if EZ_DOWNLOAD
	register uchar i;

	/* delay a bit to let the USB communication handshake to the downloader
	 * settle
	 */
	for(i=2; i>0; i--) ;

	/* disconnect immediately */
	USBCS &= ~0x04;				/* tristate the Disconnect pin */
	USBCS |= 0x08;				/* disconnect USB core		   */
#endif

	return 0;
}

/****************************
 * main-function definition *
 ****************************/

/*****************************************************************************
 * Main function.
 * Call initializers, trigger re-enumeration and stay busy in endless loop.
 * All functionality is handled in the interrupt service routines.
 *****************************************************************************/
void main(void)
{
#if EZ_DOWNLOAD
	ushort wait;

	wait = 16384;
	while(wait-- > 0) ;
#endif

	__di();						  /* disable global interrupt */

	init_mcu();					  /* init ez-usb hardware */
	init_interrupt_usb();
	init_interrupt_timer0();
	init_interrupt_timer2();

	__debug_out_init();			  /* for serial debug */

	__ei();						  /* enable global interrupt */

	apply_reset_values();		  /* initialize global variables */
	setup_keyboard();

#if EZ_DOWNLOAD
	USBCS |= 0x02;				  /* activate RENUM						*/
	USBCS &= ~0x08;				  /* deactivate DISCON					*/
	USBCS |= 0x04;				  /* release tristate on Disconnect pin */
#endif

	MapSet = get_mapset_num();	  /* select keymap set */

	EnqPreSend();				  /* enqueue keys send automatic */

	nerd_loop();				  /* main loop of nerd */

	while(1) ;					  /* dummy loop */
}

/* end of nerd.c */