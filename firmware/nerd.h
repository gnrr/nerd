/*
 * Filename: nerd.h
 * Last modified: Tue Mar 21 2006 22:34:33 LMT
 */

#include <8051.h>
#include "ezusb_reg.h"

#include "common.h"

/*
 * Timer0 reload value
 * Timer0 counts CLK24/4 i.e. each increment is 400us
 */
#define TIMER0_CNT	((ushort)(0xFFFF - 1200))
#define TIMER0_HI	((uchar)(TIMER0_CNT >> 8))
#define TIMER0_LO	((uchar)(TIMER0_CNT & 0x00FF))


/*
 * macros
 */
#define is_inherit_key(id)	(((id >= USID_INHERIT_START) &&\
							  (id <= USID_INHERIT_END))? TRUE : FALSE)


/*
 * key and key buffer defines
 */

/* HHK matrix board scan code */
#define SCAN_2				0x00 /* 2              */
#define SCAN_Q				0x01 /* q              */
#define SCAN_W				0x02 /* w              */
#define SCAN_S				0x03 /* s              */
#define SCAN_A				0x04 /* a              */
#define SCAN_Z				0x05 /* z              */
#define SCAN_X				0x06 /* x              */
#define SCAN_C				0x07 /* c              */
#define SCAN_3				0x08 /* 3              */
#define SCAN_4				0x09 /* 4              */
#define SCAN_R				0x0A /* r              */
#define SCAN_E				0x0B /* e              */
#define SCAN_D				0x0C /* d              */
#define SCAN_F				0x0D /* f              */
#define SCAN_V				0x0E /* v              */
#define SCAN_B				0x0F /* b              */
#define SCAN_5				0x10 /* 5              */
#define SCAN_6				0x11 /* 6              */
#define SCAN_Y				0x12 /* y              */
#define SCAN_T				0x13 /* t              */
#define SCAN_G				0x14 /* g              */
#define SCAN_H				0x15 /* h              */
#define SCAN_N				0x16 /* n              */
/*                          0x17    -------------- */
#define SCAN_1				0x18 /* 1              */
#define SCAN_ESC			0x19 /* esc            */
#define SCAN_TAB			0x1A /* tab            */
#define SCAN_CTRL			0x1B /* control        */
#define SCAN_SHIFT_L		0x1C /* Left Shift     */
#define SCAN_ALT_L			0x1D /* Left Alt       */
#define SCAN_DIA_L			0x1E /* Left Dia       */
#define SCAN_SPACE			0x1F /* space          */
#define SCAN_7				0x20 /* 7              */
#define SCAN_8				0x21 /* 8              */
#define SCAN_U				0x22 /* u              */
#define SCAN_I				0x23 /* i              */
#define SCAN_K				0x24 /* k              */
#define SCAN_J				0x25 /* j              */
#define SCAN_M				0x26 /* m              */
/*                          0x27    -------------- */
#define SCAN_BACK_SLASH		0x28 /* \ (back slash) */
#define SCAN_BACK_QUOTE		0x29 /* ` (back quote) */
#define SCAN_DELETE			0x2A /* delete         */
#define SCAN_RETURN			0x2B /* return         */
#define SCAN_FN				0x2C /* Fn             */
#define SCAN_SHIFT_R		0x2D /* Right Shift    */
#define SCAN_ALT_R			0x2E /* Right Alt      */
#define SCAN_DIA_R			0x2F /* Right Dia      */
#define SCAN_9				0x30 /* 9              */
#define SCAN_0				0x31 /* 0              */
#define SCAN_O				0x32 /* o              */
#define SCAN_P				0x33 /* p              */
#define SCAN_SEMI_COLON		0x34 /* ; (semi colon) */
#define SCAN_L				0x35 /* l              */
#define SCAN_COMMA			0x36 /* , (comma)      */
/*                          0x37    -------------- */
#define SCAN_HYPHONE		0x38 /* - (hyphone)    */
#define SCAN_EQUAL			0x39 /* = (equal)      */
#define SCAN_BRACKET_END	0x3A /* ]              */
#define SCAN_BRACKET_START	0x3B /* [              */
#define SCAN_QUOTE			0x3C /* ' (quote)      */
#define SCAN_SLASH			0x3D /* / (slash)      */
#define SCAN_DOT			0x3E /* . (dot)        */
/*                          0x3F    -------------- */
#define SCAN_EMPTY 			0xFF /* ���ݺ��� ��    */

/* ��������� */
#define KEY_SW_PRESSED		0x00 /* ���̏�Ԃ��������Ă��邱�Ƃ����� */
#define KEY_SW_RELEASED		0x80 /* ���̏�Ԃ��ذ����Ă��邱�Ƃ����� */

/* ��ި̧�Է��ޯė���ޯ�Ͻ� */
#define MODMASK_CTRL_L		0x01 /* bit 0: Left Control  */
#define MODMASK_SHIFT_L		0x02 /* bit 1: Left Shift    */
#define MODMASK_ALT_L		0x04 /* bit 2: Left Alt      */
#define MODMASK_GUI_L		0x08 /* bit 3: Left GUI      */
#define MODMASK_CTRL_R		0x10 /* bit 4: Right Control */
#define MODMASK_SHIFT_R		0x20 /* bit 5: Right Shift   */
#define MODMASK_ALT_R		0x40 /* bit 6: Right Alt     */
#define MODMASK_GUI_R		0x80 /* bit 7: Right GUI     */

/* ��ި̧�԰���ޯė� �␳���� */
enum {
    MODADJ_NOTCHANGE = 0,        /* �ύX�Ȃ�(���O�ɑ��M�������̂Ɠ���) */
    MODADJ_UPDATE,               /* �X�V                               */
    MODADJ_REVERT,               /* �ۑ������l�ɖ߂�                   */
    MODADJ_RESET,                /* �ۑ���ɃN���A                     */
    MODADJ_SAVE_RESET,           /* �ۑ�����ؾ�Ă���                   */
    MODADJ_OTHER                 /* ��L�ȊO                           */
};

/* ����ʂɂ�鉟��/�ذ��̽ð�� */
enum {
    MODSTAT_MOD_PRESSED = 0,   /* ��ި̧�Է����������ꂽ                       */
    MODSTAT_MOD_RELEASED,      /* ��ި̧�Է����ذ����ꂽ                       */
    MODSTAT_INH_PRESSED,       /* �p�������������ꂽ                           */
    MODSTAT_INH_REL_NOT_FOUND, /* �p�������ذ��������A���̷���������Ȃ����� */
    MODSTAT_INH_REL_FOUND,     /* �p�������ذ����A���̷����폜�ł���           */
    MODSTAT_GEN_PRESSED,       /* ��ʷ����������ꂽ                           */
    MODSTAT_GEN_REL_NOT_FOUND, /* ��ʷ����ذ��������A���̷���������Ȃ����� */
    MODSTAT_GEN_REL_FOUND      /* ��ʷ����ذ����A���̷����폜�ł���           */
};

#define UPDATE_KEYS_MAX		16 /* ���ݷ���̍X�V���i�[�� */

/* �X�V���ꂽ���̍\�� */
typedef struct {
    uchar scan;                /* HHK ���ݺ���            */
    uchar sw;                  /* 0:press, 1:release      */
} UPDATE_KEY;

/* �X�V���̽��ݷ�� */
typedef struct {
    uchar head;
    uchar tail;
    UPDATE_KEY dat[UPDATE_KEYS_MAX];
} SCAN_QUE;

#define KBD_REPORT_SIZE		8  /* USB���ް�ނ�1��߰Ļ���  */
#define REPORT_QUE_MAX		8  /* ��߰ķ������߰Ċi�[�� */

/* ��߰č\�� */
typedef struct {
    uchar dat[KBD_REPORT_SIZE];
} KBD_REPORT;

/* ��߰ķ�� */
typedef struct {
    uchar head;
    uchar tail;
    KBD_REPORT rep[REPORT_QUE_MAX];
} REPORT_QUE;

/* end of nerd.h */
