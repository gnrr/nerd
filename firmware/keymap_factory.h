/*
 * Filename: keymap_factory.h
 * Last modified: Thu Jul 27 2006 00:26:53 JST
 * 
 * ファクトリ設定キーマップ定義ファイル
 * 
 * $Id$
 *
 * 電源投入時 ｷｰﾏｯﾌﾟｾｯﾄ選択用のｷｰが押されていないときのｷｰﾏｯﾌﾟｾｯﾄ --> #0
 *								   押されているときのｷｰﾏｯﾌﾟｾｯﾄ	 --> #1
 *
 * ファクトリ設定のキーマップでは #0と#1は同じ
 */

/*
 * ｷｰﾏｯﾌﾟｾｯﾄ選択用のｷｰ(ｽｷｬﾝｺｰﾄﾞ)を指定する
 * ｷｰﾏｯﾌﾟｾｯﾄ選択自体を無効にする場合はｺﾒﾝﾄｱｳﾄ
*/
#define SCAN_KMAPSET_SELECT SCAN_SPACE

static code uchar PreSend[] = {
    USID_NONE
};

/*
 * ｷｰﾏｯﾌﾟ定義配列
 * HHKのｽｷｬﾝｺｰﾄﾞ--> HIDｷｰﾎﾞｰﾄﾞが送信する Usage ID に変換する
 * Keymap[x][0]: Nerdｷｰ押下なしの時
 * Keymap[x][1]: Nerd Shift
 * Keymap[x][2]: Nerd Ctrl
 * Keymap[x][3]: Nerd Shift + Nerd Ctrl
 * Keymap[x][4]: Nerd Alt
 * Keymap[x][5]: Nerd Alt + Nerd Shift
 * Keymap[x][6]: Nerd Alt + Nerd Ctrl
 * Keymap[x][7]: Nerd Alt + Nerd Ctrl + Nerd Shift
 * Keymap[x][8]: Nerd Function
 * Keymap[x][9]: Nerd Lock
 */
static code uchar Keymap[2][10][64] = {

	/* ---------------------------------------------- keymap-set #0 ------- */
	{
		/* [0] plain value (without Nerd X) */
		{
			USID_KBD_2,				/* 0.0x00: 2		*/
			USID_KBD_Q,				/* 0.0x01: q		*/
			USID_KBD_W,				/* 0.0x02: w		*/
			USID_KBD_S,				/* 0.0x03: s		*/
			USID_KBD_A,				/* 0.0x04: a		*/
			USID_KBD_Z,				/* 0.0x05: z		*/
			USID_KBD_X,				/* 0.0x06: x		*/
			USID_KBD_C,				/* 0.0x07: c		*/
			USID_KBD_3,				/* 0.0x08: 3		*/
			USID_KBD_4,				/* 0.0x09: 4		*/
			USID_KBD_R,				/* 0.0x0A: r		*/
			USID_KBD_E,				/* 0.0x0B: e		*/
			USID_KBD_D,				/* 0.0x0C: d		*/
			USID_KBD_F,				/* 0.0x0D: f		*/
			USID_KBD_V,				/* 0.0x0E: v		*/
			USID_KBD_B,				/* 0.0x0F: b		*/
			USID_KBD_5,				/* 0.0x10: 5		*/
			USID_KBD_6,				/* 0.0x11: 6		*/
			USID_KBD_Y,				/* 0.0x12: y		*/
			USID_KBD_T,				/* 0.0x13: t		*/
			USID_KBD_G,				/* 0.0x14: g		*/
			USID_KBD_H,				/* 0.0x15: h		*/
			USID_KBD_N,				/* 0.0x16: n		*/
			USID_NONE,				/* 0.0x17: (none)	*/
			USID_KBD_1,				/* 0.0x18: 1		*/
			USID_KBD_ESC,			/* 0.0x19: ESC		*/
			USID_KBD_TAB,			/* 0.0x1A: TAB		*/
			USID_NERD_CTRL,			/* 0.0x1B: CTRL		*/
			USID_NERD_SHIFT,		/* 0.0x1C: SHIFT L	*/
			USID_NERD_ALT,			/* 0.0x1D: ALT L	*/
			USID_MOD_GUI_L,			/* 0.0x1E: DIA L	*/
			USID_KBD_SPACE,			/* 0.0x1F: SPACE	*/
			USID_KBD_7,				/* 0.0x20: 7		*/
			USID_KBD_8,				/* 0.0x21: 8		*/
			USID_KBD_U,				/* 0.0x22: u		*/
			USID_KBD_I,				/* 0.0x23: i		*/
			USID_KBD_K,				/* 0.0x24: k		*/
			USID_KBD_J,				/* 0.0x25: j		*/
			USID_KBD_M,				/* 0.0x26: m		*/
			USID_NONE,				/* 0.0x27: (none)	*/
			USID_KBD_BACK_SLASH,	/* 0.0x28: \		*/
			USID_KBD_GRAVE_ACCENT,	/* 0.0x29: `		*/
			USID_KBD_BACKSPACE,		/* 0.0x2A: DEL		*/
			USID_KBD_RETURN,		/* 0.0x2B: RETURN	*/
			USID_NERD_FUNC,			/* 0.0x2C: Fn		*/
			USID_MOD_SHIFT_R,		/* 0.0x2D: SHIFT R	*/
			USID_NERD_ALT,			/* 0.0x2E: ALT R	*/
			USID_MOD_GUI_R,			/* 0.0x2F: DIA R	*/
			USID_KBD_9,				/* 0.0x30: 9		*/
			USID_KBD_0,				/* 0.0x31: 0		*/
			USID_KBD_O,				/* 0.0x32: o		*/
			USID_KBD_P,				/* 0.0x33: p		*/
			USID_KBD_SEMI_COLON,	/* 0.0x34: ;		*/
			USID_KBD_L,				/* 0.0x35: l		*/
			USID_KBD_COMMA,			/* 0.0x36: ,		*/
			USID_NONE,				/* 0.0x37: (none)	*/
			USID_KBD_HYPHONE,		/* 0.0x38: -		*/
			USID_KBD_EQUAL,			/* 0.0x39: =		*/
			USID_KBD_BRACKET_END,	/* 0.0x3A: ]		*/
			USID_KBD_BRACKET_START,	/* 0.0x3B: [		*/
			USID_KBD_QUOTE,			/* 0.0x3C: '		*/
			USID_KBD_SLASH,			/* 0.0x3D: /		*/
			USID_KBD_DOT,			/* 0.0x3E: .		*/
			USID_NONE				/* 0.0x3F: (none)	*/
		},

		/* [1] with Nerd Shift */
		{
			USID_KBD_2,				/* 1.0x00: 2		*/
			USID_KBD_Q,				/* 1.0x01: q		*/
			USID_KBD_W,				/* 1.0x02: w		*/
			USID_KBD_S,				/* 1.0x03: s		*/
			USID_KBD_A,				/* 1.0x04: a		*/
			USID_KBD_Z,				/* 1.0x05: z		*/
			USID_KBD_X,				/* 1.0x06: x		*/
			USID_KBD_C,				/* 1.0x07: c		*/
			USID_KBD_3,				/* 1.0x08: 3		*/
			USID_KBD_4,				/* 1.0x09: 4		*/
			USID_KBD_R,				/* 1.0x0A: r		*/
			USID_KBD_E,				/* 1.0x0B: e		*/
			USID_KBD_D,				/* 1.0x0C: d		*/
			USID_KBD_F,				/* 1.0x0D: f		*/
			USID_KBD_V,				/* 1.0x0E: v		*/
			USID_KBD_B,				/* 1.0x0F: b		*/
			USID_KBD_5,				/* 1.0x10: 5		*/
			USID_KBD_6,				/* 1.0x11: 6		*/
			USID_KBD_Y,				/* 1.0x12: y		*/
			USID_KBD_T,				/* 1.0x13: t		*/
			USID_KBD_G,				/* 1.0x14: g		*/
			USID_KBD_H,				/* 1.0x15: h		*/
			USID_KBD_N,				/* 1.0x16: n		*/
			USID_NONE,				/* 1.0x17: (none)	*/
			USID_KBD_1,				/* 1.0x18: 1		*/
			USID_KBD_ESC,			/* 1.0x19: ESC		*/
			USID_KBD_TAB,			/* 1.0x1A: TAB		*/
			USID_MOD_CTRL_L,		/* 1.0x1B: CTRL		*/
			USID_MOD_SHIFT_L,		/* 1.0x1C: SHIFT L	*/
			USID_MOD_ALT_L,			/* 1.0x1D: ALT L	*/
			USID_MOD_GUI_L,			/* 1.0x1E: DIA L	*/
			USID_KBD_SPACE,			/* 1.0x1F: SPACE	*/
			USID_KBD_7,				/* 1.0x20: 7		*/
			USID_KBD_8,				/* 1.0x21: 8		*/
			USID_KBD_U,				/* 1.0x22: u		*/
			USID_KBD_I,				/* 1.0x23: i		*/
			USID_KBD_K,				/* 1.0x24: k		*/
			USID_KBD_J,				/* 1.0x25: j		*/
			USID_KBD_M,				/* 1.0x26: m		*/
			USID_NONE,				/* 1.0x27: (none)	*/
			USID_KBD_BACK_SLASH,	/* 1.0x28: \		*/
			USID_KBD_GRAVE_ACCENT,	/* 1.0x29: `		*/
			USID_KBD_DELETE,		/* 1.0x2A: DEL		*/
			USID_KBD_RETURN,		/* 1.0x2B: RETURN	*/
			USID_NONE,				/* 1.0x2C: Fn		*/
			USID_MOD_SHIFT_R,		/* 1.0x2D: SHIFT R	*/
			USID_MOD_ALT_R,			/* 1.0x2E: ALT R	*/
			USID_MOD_GUI_R,			/* 1.0x2F: DIA R	*/
			USID_KBD_9,				/* 1.0x30: 9		*/
			USID_KBD_0,				/* 1.0x31: 0		*/
			USID_KBD_O,				/* 1.0x32: o		*/
			USID_KBD_P,				/* 1.0x33: p		*/
			USID_KBD_SEMI_COLON,	/* 1.0x34: ;		*/
			USID_KBD_L,				/* 1.0x35: l		*/
			USID_KBD_COMMA,			/* 1.0x36: ,		*/
			USID_NONE,				/* 1.0x37: (none)	*/
			USID_KBD_HYPHONE,		/* 1.0x38: -		*/
			USID_KBD_EQUAL,			/* 1.0x39: =		*/
			USID_KBD_BRACKET_END,	/* 1.0x3A: ]		*/
			USID_KBD_BRACKET_START,	/* 1.0x3B: [		*/
			USID_KBD_QUOTE,			/* 1.0x3C: '		*/
			USID_KBD_SLASH,			/* 1.0x3D: /		*/
			USID_KBD_DOT,			/* 1.0x3E: .		*/
			USID_NONE				/* 1.0x3F: (none)	*/
		},

		/* [2] with Nerd Control */
		{
			USID_NONE,				/* 2.0x00: 2		*/
			USID_NONE,				/* 2.0x01: q		*/
			USID_NONE,				/* 2.0x02: w		*/
			USID_NONE,				/* 2.0x03: s		*/
			USID_KBD_HOME,			/* 2.0x04: a		*/
			USID_NONE,				/* 2.0x05: z		*/
			USID_NONE,				/* 2.0x06: x		*/
			USID_NONE,				/* 2.0x07: c		*/
			USID_NONE,				/* 2.0x08: 3		*/
			USID_NONE,				/* 2.0x09: 4		*/
			USID_NONE,				/* 2.0x0A: r		*/
			USID_KBD_END,			/* 2.0x0B: e		*/
			USID_NONE,				/* 2.0x0C: d		*/
			USID_KBD_ARROW_R,		/* 2.0x0D: f		*/
			USID_NONE,				/* 2.0x0E: v		*/
			USID_KBD_ARROW_L,		/* 2.0x0F: b		*/
			USID_NONE,				/* 2.0x10: 5		*/
			USID_NONE,				/* 2.0x11: 6		*/
			USID_NONE,				/* 2.0x12: y		*/
			USID_NONE,				/* 2.0x13: t		*/
			USID_NONE,				/* 2.0x14: g		*/
			USID_KBD_BACKSPACE,		/* 2.0x15: h		*/
			USID_KBD_ARROW_D,		/* 2.0x16: n		*/
			USID_NONE,				/* 2.0x17: (none)	*/
			USID_NONE,				/* 2.0x18: 1		*/
			USID_NONE,				/* 2.0x19: ESC		*/
			USID_NONE,				/* 2.0x1A: TAB		*/
			USID_MOD_CTRL_L,		/* 2.0x1B: CTRL		*/
			USID_MOD_SHIFT_L,		/* 2.0x1C: SHIFT L	*/
			USID_MOD_ALT_L,			/* 2.0x1D: ALT L	*/
			USID_MOD_GUI_L,			/* 2.0x1E: DIA L	*/
			USID_NONE,				/* 2.0x1F: SPACE	*/
			USID_NONE,				/* 2.0x20: 7		*/
			USID_NONE,				/* 2.0x21: 8		*/
			USID_NONE,				/* 2.0x22: u		*/
			USID_NONE,				/* 2.0x23: i		*/
			USID_NONE,				/* 2.0x24: k		*/
			USID_NONE,				/* 2.0x25: j		*/
			USID_NONE,				/* 2.0x26: m		*/
			USID_NONE,				/* 2.0x27: (none)	*/
			USID_NONE,				/* 2.0x28: \		*/
			USID_NONE,				/* 2.0x29: `		*/
			USID_KBD_DELETE,		/* 2.0x2A: DEL		*/
			USID_NONE,				/* 2.0x2B: RETURN	*/
			USID_NONE,				/* 2.0x2C: Fn		*/
			USID_MOD_SHIFT_R,		/* 2.0x2D: SHIFT R	*/
			USID_MOD_ALT_R,			/* 2.0x2E: ALT R	*/
			USID_MOD_GUI_R,			/* 2.0x2F: DIA R	*/
			USID_NONE,				/* 2.0x30: 9		*/
			USID_NONE,				/* 2.0x31: 0		*/
			USID_NONE,				/* 2.0x32: o		*/
			USID_KBD_ARROW_U,		/* 2.0x33: p		*/
			USID_NONE,				/* 2.0x34: ;		*/
			USID_NONE,				/* 2.0x35: l		*/
			USID_NONE,				/* 2.0x36: ,		*/
			USID_NONE,				/* 2.0x37: (none)	*/
			USID_NONE,				/* 2.0x38: -		*/
			USID_NONE,				/* 2.0x39: =		*/
			USID_NONE,				/* 2.0x3A: ]		*/
			USID_NONE,				/* 2.0x3B: [		*/
			USID_NONE,				/* 2.0x3C: '		*/
			USID_KBD_SLASH,			/* 2.0x3D: /		*/
			USID_NONE,				/* 2.0x3E: .		*/
			USID_NONE				/* 2.0x3F: (none)	*/
		},

		/* [3] with Nerd Shift + Nerd Control */
		{
			USID_NONE,				/* 3.0x00: 2		*/
			USID_NONE,				/* 3.0x01: q		*/
			USID_NONE,				/* 3.0x02: w		*/
			USID_NONE,				/* 3.0x03: s		*/
			USID_NONE,				/* 3.0x04: a		*/
			USID_NONE,				/* 3.0x05: z		*/
			USID_NONE,				/* 3.0x06: x		*/
			USID_NONE,				/* 3.0x07: c		*/
			USID_NONE,				/* 3.0x08: 3		*/
			USID_NONE,				/* 3.0x09: 4		*/
			USID_NONE,				/* 3.0x0A: r		*/
			USID_NONE,				/* 3.0x0B: e		*/
			USID_NONE,				/* 3.0x0C: d		*/
			USID_NONE,				/* 3.0x0D: f		*/
			USID_NONE,				/* 3.0x0E: v		*/
			USID_NONE,				/* 3.0x0F: b		*/
			USID_NONE,				/* 3.0x10: 5		*/
			USID_NONE,				/* 3.0x11: 6		*/
			USID_NONE,				/* 3.0x12: y		*/
			USID_NONE,				/* 3.0x13: t		*/
			USID_NONE,				/* 3.0x14: g		*/
			USID_NONE,				/* 3.0x15: h		*/
			USID_NONE,				/* 3.0x16: n		*/
			USID_NONE,				/* 3.0x17: (none)	*/
			USID_NONE,				/* 3.0x18: 1		*/
			USID_NONE,				/* 3.0x19: ESC		*/
			USID_NONE,				/* 3.0x1A: TAB		*/
			USID_NONE,				/* 3.0x1B: CTRL		*/
			USID_NONE,				/* 3.0x1C: SHIFT L	*/
			USID_NONE,				/* 3.0x1D: ALT L	*/
			USID_NONE,				/* 3.0x1E: DIA L	*/
			USID_NONE,				/* 3.0x1F: SPACE	*/
			USID_NONE,				/* 3.0x20: 7		*/
			USID_NONE,				/* 3.0x21: 8		*/
			USID_NONE,				/* 3.0x22: u		*/
			USID_NONE,				/* 3.0x23: i		*/
			USID_NONE,				/* 3.0x24: k		*/
			USID_NONE,				/* 3.0x25: j		*/
			USID_NONE,				/* 3.0x26: m		*/
			USID_NONE,				/* 3.0x27: (none)	*/
			USID_NONE,				/* 3.0x28: \		*/
			USID_NONE,				/* 3.0x29: `		*/
			USID_NONE,				/* 3.0x2A: DEL		*/
			USID_NONE,				/* 3.0x2B: RETURN	*/
			USID_NONE,				/* 3.0x2C: Fn		*/
			USID_NONE,				/* 3.0x2D: SHIFT R	*/
			USID_NONE,				/* 3.0x2E: ALT R	*/
			USID_NONE,				/* 3.0x2F: DIA R	*/
			USID_NONE,				/* 3.0x30: 9		*/
			USID_NONE,				/* 3.0x31: 0		*/
			USID_NONE,				/* 3.0x32: o		*/
			USID_NONE,				/* 3.0x33: p		*/
			USID_NONE,				/* 3.0x34: ;		*/
			USID_NONE,				/* 3.0x35: l		*/
			USID_NONE,				/* 3.0x36: ,		*/
			USID_NONE,				/* 3.0x37: (none)	*/
			USID_NONE,				/* 3.0x38: -		*/
			USID_NONE,				/* 3.0x39: =		*/
			USID_NONE,				/* 3.0x3A: ]		*/
			USID_NONE,				/* 3.0x3B: [		*/
			USID_NONE,				/* 3.0x3C: '		*/
			USID_NONE,				/* 3.0x3D: /		*/
			USID_NONE,				/* 3.0x3E: .		*/
			USID_NONE				/* 3.0x3F: (none)	*/
		},

		/* [4] with Nerd Alt */
		{
			USID_KBD_2,				/* 4.0x00: 2		*/
			USID_KBD_Q,				/* 4.0x01: q		*/
			USID_KBD_W,				/* 4.0x02: w		*/
			USID_KBD_S,				/* 4.0x03: s		*/
			USID_KBD_A,				/* 4.0x04: a		*/
			USID_KBD_Z,				/* 4.0x05: z		*/
			USID_KBD_X,				/* 4.0x06: x		*/
			USID_KBD_C,				/* 4.0x07: c		*/
			USID_KBD_3,				/* 4.0x08: 3		*/
			USID_KBD_4,				/* 4.0x09: 4		*/
			USID_KBD_R,				/* 4.0x0A: r		*/
			USID_KBD_E,				/* 4.0x0B: e		*/
			USID_KBD_D,				/* 4.0x0C: d		*/
			USID_KBD_F,				/* 4.0x0D: f		*/
			USID_KBD_V,				/* 4.0x0E: v		*/
			USID_KBD_B,				/* 4.0x0F: b		*/
			USID_KBD_5,				/* 4.0x10: 5		*/
			USID_KBD_6,				/* 4.0x11: 6		*/
			USID_KBD_Y,				/* 4.0x12: y		*/
			USID_KBD_T,				/* 4.0x13: t		*/
			USID_KBD_G,				/* 4.0x14: g		*/
			USID_KBD_H,				/* 4.0x15: h		*/
			USID_KBD_N,				/* 4.0x16: n		*/
			USID_NONE,				/* 4.0x17: (none)	*/
			USID_KBD_1,				/* 4.0x18: 1		*/
			USID_KBD_ESC,			/* 4.0x19: ESC		*/
			USID_KBD_TAB,			/* 4.0x1A: TAB		*/
			USID_MOD_CTRL_L,		/* 4.0x1B: CTRL		*/
			USID_MOD_SHIFT_L,		/* 4.0x1C: SHIFT L	*/
			USID_MOD_ALT_L,			/* 4.0x1D: ALT L	*/
			USID_MOD_GUI_L,			/* 4.0x1E: DIA L	*/
			USID_KBD_SPACE,			/* 4.0x1F: SPACE	*/
			USID_KBD_7,				/* 4.0x20: 7		*/
			USID_KBD_8,				/* 4.0x21: 8		*/
			USID_KBD_U,				/* 4.0x22: u		*/
			USID_KBD_I,				/* 4.0x23: i		*/
			USID_KBD_K,				/* 4.0x24: k		*/
			USID_KBD_J,				/* 4.0x25: j		*/
			USID_KBD_M,				/* 4.0x26: m		*/
			USID_NONE,				/* 4.0x27: (none)	*/
			USID_KBD_BACK_SLASH,	/* 4.0x28: \		*/
			USID_KBD_GRAVE_ACCENT,	/* 4.0x29: `		*/
			USID_KBD_DELETE,		/* 4.0x2A: DEL		*/
			USID_KBD_RETURN,		/* 4.0x2B: RETURN	*/
			USID_NONE,				/* 4.0x2C: Fn		*/
			USID_MOD_SHIFT_R,		/* 4.0x2D: SHIFT R	*/
			USID_MOD_ALT_R,			/* 4.0x2E: ALT R	*/
			USID_MOD_GUI_R,			/* 4.0x2F: DIA R	*/
			USID_KBD_9,				/* 4.0x30: 9		*/
			USID_KBD_0,				/* 4.0x31: 0		*/
			USID_KBD_O,				/* 4.0x32: o		*/
			USID_KBD_P,				/* 4.0x33: p		*/
			USID_KBD_SEMI_COLON,	/* 4.0x34: ;		*/
			USID_KBD_L,				/* 4.0x35: l		*/
			USID_KBD_COMMA,			/* 4.0x36: ,		*/
			USID_NONE,				/* 4.0x37: (none)	*/
			USID_KBD_HYPHONE,		/* 4.0x38: -		*/
			USID_KBD_EQUAL,			/* 4.0x39: =		*/
			USID_KBD_BRACKET_END,	/* 4.0x3A: ]		*/
			USID_KBD_BRACKET_START,	/* 4.0x3B: [		*/
			USID_KBD_QUOTE,			/* 4.0x3C: '		*/
			USID_KBD_SLASH,			/* 4.0x3D: /		*/
			USID_KBD_DOT,			/* 4.0x3E: .		*/
			USID_NONE				/* 4.0x3F: (none)	*/
		},

		/* [5] with Nerd Alt + Nerd Shift */
		{
			USID_NONE,				/* 5.0x00: 2		*/
			USID_NONE,				/* 5.0x01: q		*/
			USID_NONE,				/* 5.0x02: w		*/
			USID_NONE,				/* 5.0x03: s		*/
			USID_NONE,				/* 5.0x04: a		*/
			USID_NONE,				/* 5.0x05: z		*/
			USID_NONE,				/* 5.0x06: x		*/
			USID_NONE,				/* 5.0x07: c		*/
			USID_NONE,				/* 5.0x08: 3		*/
			USID_NONE,				/* 5.0x09: 4		*/
			USID_NONE,				/* 5.0x0A: r		*/
			USID_NONE,				/* 5.0x0B: e		*/
			USID_NONE,				/* 5.0x0C: d		*/
			USID_NONE,				/* 5.0x0D: f		*/
			USID_NONE,				/* 5.0x0E: v		*/
			USID_NONE,				/* 5.0x0F: b		*/
			USID_NONE,				/* 5.0x10: 5		*/
			USID_NONE,				/* 5.0x11: 6		*/
			USID_NONE,				/* 5.0x12: y		*/
			USID_NONE,				/* 5.0x13: t		*/
			USID_NONE,				/* 5.0x14: g		*/
			USID_NONE,				/* 5.0x15: h		*/
			USID_NONE,				/* 5.0x16: n		*/
			USID_NONE,				/* 5.0x17: (none)	*/
			USID_NONE,				/* 5.0x18: 1		*/
			USID_NONE,				/* 5.0x19: ESC		*/
			USID_NONE,				/* 5.0x1A: TAB		*/
			USID_NONE,				/* 5.0x1B: CTRL		*/
			USID_NONE,				/* 5.0x1C: SHIFT L	*/
			USID_NONE,				/* 5.0x1D: ALT L	*/
			USID_NONE,				/* 5.0x1E: DIA L	*/
			USID_NONE,				/* 5.0x1F: SPACE	*/
			USID_NONE,				/* 5.0x20: 7		*/
			USID_NONE,				/* 5.0x21: 8		*/
			USID_NONE,				/* 5.0x22: u		*/
			USID_NONE,				/* 5.0x23: i		*/
			USID_NONE,				/* 5.0x24: k		*/
			USID_NONE,				/* 5.0x25: j		*/
			USID_NONE,				/* 5.0x26: m		*/
			USID_NONE,				/* 5.0x27: (none)	*/
			USID_NONE,				/* 5.0x28: \		*/
			USID_NONE,				/* 5.0x29: `		*/
			USID_NONE,				/* 5.0x2A: DEL		*/
			USID_NONE,				/* 5.0x2B: RETURN	*/
			USID_NONE,				/* 5.0x2C: Fn		*/
			USID_NONE,				/* 5.0x2D: SHIFT R	*/
			USID_NONE,				/* 5.0x2E: ALT R	*/
			USID_NONE,				/* 5.0x2F: DIA R	*/
			USID_NONE,				/* 5.0x30: 9		*/
			USID_NONE,				/* 5.0x31: 0		*/
			USID_NONE,				/* 5.0x32: o		*/
			USID_NONE,				/* 5.0x33: p		*/
			USID_NONE,				/* 5.0x34: ;		*/
			USID_NONE,				/* 5.0x35: l		*/
			USID_NONE,				/* 5.0x36: ,		*/
			USID_NONE,				/* 5.0x37: (none)	*/
			USID_NONE,				/* 5.0x38: -		*/
			USID_NONE,				/* 5.0x39: =		*/
			USID_NONE,				/* 5.0x3A: ]		*/
			USID_NONE,				/* 5.0x3B: [		*/
			USID_NONE,				/* 5.0x3C: '		*/
			USID_NONE,				/* 5.0x3D: /		*/
			USID_NONE,				/* 5.0x3E: .		*/
			USID_NONE				/* 5.0x3F: (none)	*/
		},

		/* [6] with Nerd Alt + Nerd Control */
		{
			USID_NONE,				/* 6.0x00: 2		*/
			USID_NONE,				/* 6.0x01: q		*/
			USID_NONE,				/* 6.0x02: w		*/
			USID_NONE,				/* 6.0x03: s		*/
			USID_NONE,				/* 6.0x04: a		*/
			USID_NONE,				/* 6.0x05: z		*/
			USID_NONE,				/* 6.0x06: x		*/
			USID_NONE,				/* 6.0x07: c		*/
			USID_NONE,				/* 6.0x08: 3		*/
			USID_NONE,				/* 6.0x09: 4		*/
			USID_NONE,				/* 6.0x0A: r		*/
			USID_NONE,				/* 6.0x0B: e		*/
			USID_NONE,				/* 6.0x0C: d		*/
			USID_NONE,				/* 6.0x0D: f		*/
			USID_NONE,				/* 6.0x0E: v		*/
			USID_NONE,				/* 6.0x0F: b		*/
			USID_NONE,				/* 6.0x10: 5		*/
			USID_NONE,				/* 6.0x11: 6		*/
			USID_NONE,				/* 6.0x12: y		*/
			USID_NONE,				/* 6.0x13: t		*/
			USID_NONE,				/* 6.0x14: g		*/
			USID_NONE,				/* 6.0x15: h		*/
			USID_NONE,				/* 6.0x16: n		*/
			USID_NONE,				/* 6.0x17: (none)	*/
			USID_NONE,				/* 6.0x18: 1		*/
			USID_NONE,				/* 6.0x19: ESC		*/
			USID_NONE,				/* 6.0x1A: TAB		*/
			USID_NONE,				/* 6.0x1B: CTRL		*/
			USID_NONE,				/* 6.0x1C: SHIFT L	*/
			USID_NONE,				/* 6.0x1D: ALT L	*/
			USID_NONE,				/* 6.0x1E: DIA L	*/
			USID_NONE,				/* 6.0x1F: SPACE	*/
			USID_NONE,				/* 6.0x20: 7		*/
			USID_NONE,				/* 6.0x21: 8		*/
			USID_NONE,				/* 6.0x22: u		*/
			USID_NONE,				/* 6.0x23: i		*/
			USID_NONE,				/* 6.0x24: k		*/
			USID_NONE,				/* 6.0x25: j		*/
			USID_NONE,				/* 6.0x26: m		*/
			USID_NONE,				/* 6.0x27: (none)	*/
			USID_NONE,				/* 6.0x28: \		*/
			USID_NONE,				/* 6.0x29: `		*/
			USID_NONE,				/* 6.0x2A: DEL		*/
			USID_NONE,				/* 6.0x2B: RETURN	*/
			USID_NONE,				/* 6.0x2C: Fn		*/
			USID_NONE,				/* 6.0x2D: SHIFT R	*/
			USID_NONE,				/* 6.0x2E: ALT R	*/
			USID_NONE,				/* 6.0x2F: DIA R	*/
			USID_NONE,				/* 6.0x30: 9		*/
			USID_NONE,				/* 6.0x31: 0		*/
			USID_NONE,				/* 6.0x32: o		*/
			USID_NONE,				/* 6.0x33: p		*/
			USID_NONE,				/* 6.0x34: ;		*/
			USID_NONE,				/* 6.0x35: l		*/
			USID_NONE,				/* 6.0x36: ,		*/
			USID_NONE,				/* 6.0x37: (none)	*/
			USID_NONE,				/* 6.0x38: -		*/
			USID_NONE,				/* 6.0x39: =		*/
			USID_NONE,				/* 6.0x3A: ]		*/
			USID_NONE,				/* 6.0x3B: [		*/
			USID_NONE,				/* 6.0x3C: '		*/
			USID_NONE,				/* 6.0x3D: /		*/
			USID_NONE,				/* 6.0x3E: .		*/
			USID_NONE				/* 6.0x3F: (none)	*/
		},

		/* [7] with Nerd Alt + Nerd Control + Nerd Shift */
		{
			USID_NONE,				/* 7.0x00: 2		*/
			USID_NONE,				/* 7.0x01: q		*/
			USID_NONE,				/* 7.0x02: w		*/
			USID_NONE,				/* 7.0x03: s		*/
			USID_NONE,				/* 7.0x04: a		*/
			USID_NONE,				/* 7.0x05: z		*/
			USID_NONE,				/* 7.0x06: x		*/
			USID_NONE,				/* 7.0x07: c		*/
			USID_NONE,				/* 7.0x08: 3		*/
			USID_NONE,				/* 7.0x09: 4		*/
			USID_NONE,				/* 7.0x0A: r		*/
			USID_NONE,				/* 7.0x0B: e		*/
			USID_NONE,				/* 7.0x0C: d		*/
			USID_NONE,				/* 7.0x0D: f		*/
			USID_NONE,				/* 7.0x0E: v		*/
			USID_NONE,				/* 7.0x0F: b		*/
			USID_NONE,				/* 7.0x10: 5		*/
			USID_NONE,				/* 7.0x11: 6		*/
			USID_NONE,				/* 7.0x12: y		*/
			USID_NONE,				/* 7.0x13: t		*/
			USID_NONE,				/* 7.0x14: g		*/
			USID_NONE,				/* 7.0x15: h		*/
			USID_NONE,				/* 7.0x16: n		*/
			USID_NONE,				/* 7.0x17: (none)	*/
			USID_NONE,				/* 7.0x18: 1		*/
			USID_NONE,				/* 7.0x19: ESC		*/
			USID_NONE,				/* 7.0x1A: TAB		*/
			USID_NONE,				/* 7.0x1B: CTRL		*/
			USID_NONE,				/* 7.0x1C: SHIFT L	*/
			USID_NONE,				/* 7.0x1D: ALT L	*/
			USID_NONE,				/* 7.0x1E: DIA L	*/
			USID_NONE,				/* 7.0x1F: SPACE	*/
			USID_NONE,				/* 7.0x20: 7		*/
			USID_NONE,				/* 7.0x21: 8		*/
			USID_NONE,				/* 7.0x22: u		*/
			USID_NONE,				/* 7.0x23: i		*/
			USID_NONE,				/* 7.0x24: k		*/
			USID_NONE,				/* 7.0x25: j		*/
			USID_NONE,				/* 7.0x26: m		*/
			USID_NONE,				/* 7.0x27: (none)	*/
			USID_NONE,				/* 7.0x28: \		*/
			USID_NONE,				/* 7.0x29: `		*/
			USID_NONE,				/* 7.0x2A: DEL		*/
			USID_NONE,				/* 7.0x2B: RETURN	*/
			USID_NONE,				/* 7.0x2C: Fn		*/
			USID_NONE,				/* 7.0x2D: SHIFT R	*/
			USID_NONE,				/* 7.0x2E: ALT R	*/
			USID_NONE,				/* 7.0x2F: DIA R	*/
			USID_NONE,				/* 7.0x30: 9		*/
			USID_NONE,				/* 7.0x31: 0		*/
			USID_NONE,				/* 7.0x32: o		*/
			USID_NONE,				/* 7.0x33: p		*/
			USID_NONE,				/* 7.0x34: ;		*/
			USID_NONE,				/* 7.0x35: l		*/
			USID_NONE,				/* 7.0x36: ,		*/
			USID_NONE,				/* 7.0x37: (none)	*/
			USID_NONE,				/* 7.0x38: -		*/
			USID_NONE,				/* 7.0x39: =		*/
			USID_NONE,				/* 7.0x3A: ]		*/
			USID_NONE,				/* 7.0x3B: [		*/
			USID_NONE,				/* 7.0x3C: '		*/
			USID_NONE,				/* 7.0x3D: /		*/
			USID_NONE,				/* 7.0x3E: .		*/
			USID_NONE				/* 7.0x3F: (none)	*/
		},

		/* [8] with Nerd Function */
		{
			USID_KBD_2,				/* 8.0x00: 2		*/
			USID_KBD_Q,				/* 8.0x01: q		*/
			USID_KBD_W,				/* 8.0x02: w		*/
			USID_KBD_S,				/* 8.0x03: s		*/
			USID_KBD_A,				/* 8.0x04: a		*/
			USID_KBD_Z,				/* 8.0x05: z		*/
			USID_KBD_X,				/* 8.0x06: x		*/
			USID_KBD_C,				/* 8.0x07: c		*/
			USID_KBD_3,				/* 8.0x08: 3		*/
			USID_KBD_4,				/* 8.0x09: 4		*/
			USID_KBD_R,				/* 8.0x0A: r		*/
			USID_KBD_E,				/* 8.0x0B: e		*/
			USID_KBD_D,				/* 8.0x0C: d		*/
			USID_KBD_F,				/* 8.0x0D: f		*/
			USID_KBD_V,				/* 8.0x0E: v		*/
			USID_KBD_B,				/* 8.0x0F: b		*/
			USID_KBD_5,				/* 8.0x10: 5		*/
			USID_KBD_6,				/* 8.0x11: 6		*/
			USID_KBD_Y,				/* 8.0x12: y		*/
			USID_KBD_T,				/* 8.0x13: t		*/
			USID_KBD_G,				/* 8.0x14: g		*/
			USID_KBD_H,				/* 8.0x15: h		*/
			USID_KBD_N,				/* 8.0x16: n		*/
			USID_NONE,				/* 8.0x17: (none)	*/
			USID_KBD_1,				/* 8.0x18: 1		*/
			USID_KBD_ESC,			/* 8.0x19: ESC		*/
			USID_KBD_TAB,			/* 8.0x1A: TAB		*/
			USID_MOD_CTRL_L,		/* 8.0x1B: CTRL		*/
			USID_MOD_SHIFT_L,		/* 8.0x1C: SHIFT L	*/
			USID_MOD_ALT_L,			/* 8.0x1D: ALT L	*/
			USID_MOD_GUI_L,			/* 8.0x1E: DIA L	*/
			USID_KBD_SPACE,			/* 8.0x1F: SPACE	*/
			USID_KBD_7,				/* 8.0x20: 7		*/
			USID_KBD_8,				/* 8.0x21: 8		*/
			USID_KBD_U,				/* 8.0x22: u		*/
			USID_KBD_I,				/* 8.0x23: i		*/
			USID_KBD_K,				/* 8.0x24: k		*/
			USID_KBD_J,				/* 8.0x25: j		*/
			USID_KBD_M,				/* 8.0x26: m		*/
			USID_NONE,				/* 8.0x27: (none)	*/
			USID_KBD_BACK_SLASH,	/* 8.0x28: \		*/
			USID_KBD_GRAVE_ACCENT,	/* 8.0x29: `		*/
			USID_KBD_DELETE,		/* 8.0x2A: DEL		*/
			USID_KBD_RETURN,		/* 8.0x2B: RETURN	*/
			USID_NONE,				/* 8.0x2C: Fn		*/
			USID_MOD_SHIFT_R,		/* 8.0x2D: SHIFT R	*/
			USID_MOD_ALT_R,			/* 8.0x2E: ALT R	*/
			USID_MOD_GUI_R,			/* 8.0x2F: DIA R	*/
			USID_KBD_9,				/* 8.0x30: 9		*/
			USID_KBD_0,				/* 8.0x31: 0		*/
			USID_KBD_O,				/* 8.0x32: o		*/
			USID_KBD_P,				/* 8.0x33: p		*/
			USID_KBD_SEMI_COLON,	/* 8.0x34: ;		*/
			USID_KBD_L,				/* 8.0x35: l		*/
			USID_KBD_COMMA,			/* 8.0x36: ,		*/
			USID_NONE,				/* 8.0x37: (none)	*/
			USID_KBD_HYPHONE,		/* 8.0x38: -		*/
			USID_KBD_EQUAL,			/* 8.0x39: =		*/
			USID_KBD_BRACKET_END,	/* 8.0x3A: ]		*/
			USID_KBD_BRACKET_START,	/* 8.0x3B: [		*/
			USID_KBD_QUOTE,			/* 8.0x3C: '		*/
			USID_KBD_SLASH,			/* 8.0x3D: /		*/
			USID_KBD_DOT,			/* 8.0x3E: .		*/
			USID_NONE				/* 8.0x3F: (none)	*/
		},

		/* [9] with Nerd Lock */
		{
			USID_NONE,				/* 9.0x00: 2		*/
			USID_NONE,				/* 9.0x01: q		*/
			USID_NONE,				/* 9.0x02: w		*/
			USID_NONE,				/* 9.0x03: s		*/
			USID_NONE,				/* 9.0x04: a		*/
			USID_NONE,				/* 9.0x05: z		*/
			USID_NONE,				/* 9.0x06: x		*/
			USID_NONE,				/* 9.0x07: c		*/
			USID_NONE,				/* 9.0x08: 3		*/
			USID_NONE,				/* 9.0x09: 4		*/
			USID_NONE,				/* 9.0x0A: r		*/
			USID_NONE,				/* 9.0x0B: e		*/
			USID_NONE,				/* 9.0x0C: d		*/
			USID_NONE,				/* 9.0x0D: f		*/
			USID_NONE,				/* 9.0x0E: v		*/
			USID_NONE,				/* 9.0x0F: b		*/
			USID_NONE,				/* 9.0x10: 5		*/
			USID_NONE,				/* 9.0x11: 6		*/
			USID_NONE,				/* 9.0x12: y		*/
			USID_NONE,				/* 9.0x13: t		*/
			USID_NONE,				/* 9.0x14: g		*/
			USID_NONE,				/* 9.0x15: h		*/
			USID_NONE,				/* 9.0x16: n		*/
			USID_NONE,				/* 9.0x17: (none)	*/
			USID_NONE,				/* 9.0x18: 1		*/
			USID_NONE,				/* 9.0x19: ESC		*/
			USID_NONE,				/* 9.0x1A: TAB		*/
			USID_NONE,				/* 9.0x1B: CTRL		*/
			USID_NONE,				/* 9.0x1C: SHIFT L	*/
			USID_NONE,				/* 9.0x1D: ALT L	*/
			USID_NONE,				/* 9.0x1E: DIA L	*/
			USID_NONE,				/* 9.0x1F: SPACE	*/
			USID_NONE,				/* 9.0x20: 7		*/
			USID_NONE,				/* 9.0x21: 8		*/
			USID_NONE,				/* 9.0x22: u		*/
			USID_NONE,				/* 9.0x23: i		*/
			USID_NONE,				/* 9.0x24: k		*/
			USID_NONE,				/* 9.0x25: j		*/
			USID_NONE,				/* 9.0x26: m		*/
			USID_NONE,				/* 9.0x27: (none)	*/
			USID_NONE,				/* 9.0x28: \		*/
			USID_NONE,				/* 9.0x29: `		*/
			USID_NONE,				/* 9.0x2A: DEL		*/
			USID_NONE,				/* 9.0x2B: RETURN	*/
			USID_NONE,				/* 9.0x2C: Fn		*/
			USID_NONE,				/* 9.0x2D: SHIFT R	*/
			USID_NONE,				/* 9.0x2E: ALT R	*/
			USID_NONE,				/* 9.0x2F: DIA R	*/
			USID_NONE,				/* 9.0x30: 9		*/
			USID_NONE,				/* 9.0x31: 0		*/
			USID_NONE,				/* 9.0x32: o		*/
			USID_NONE,				/* 9.0x33: p		*/
			USID_NONE,				/* 9.0x34: ;		*/
			USID_NONE,				/* 9.0x35: l		*/
			USID_NONE,				/* 9.0x36: ,		*/
			USID_NONE,				/* 9.0x37: (none)	*/
			USID_NONE,				/* 9.0x38: -		*/
			USID_NONE,				/* 9.0x39: =		*/
			USID_NONE,				/* 9.0x3A: ]		*/
			USID_NONE,				/* 9.0x3B: [		*/
			USID_NONE,				/* 9.0x3C: '		*/
			USID_NONE,				/* 9.0x3D: /		*/
			USID_NONE,				/* 9.0x3E: .		*/
			USID_NONE				/* 9.0x3F: (none)	*/
		}
	},

	/* ---------------------------------------------- keymap-set #1 ------- */
	{
		/* [0] plain value (without Nerd X) */
		{
			USID_KBD_2,				/* 0.0x00: 2		*/
			USID_KBD_Q,				/* 0.0x01: q		*/
			USID_KBD_W,				/* 0.0x02: w		*/
			USID_KBD_S,				/* 0.0x03: s		*/
			USID_KBD_A,				/* 0.0x04: a		*/
			USID_KBD_Z,				/* 0.0x05: z		*/
			USID_KBD_X,				/* 0.0x06: x		*/
			USID_KBD_C,				/* 0.0x07: c		*/
			USID_KBD_3,				/* 0.0x08: 3		*/
			USID_KBD_4,				/* 0.0x09: 4		*/
			USID_KBD_R,				/* 0.0x0A: r		*/
			USID_KBD_E,				/* 0.0x0B: e		*/
			USID_KBD_D,				/* 0.0x0C: d		*/
			USID_KBD_F,				/* 0.0x0D: f		*/
			USID_KBD_V,				/* 0.0x0E: v		*/
			USID_KBD_B,				/* 0.0x0F: b		*/
			USID_KBD_5,				/* 0.0x10: 5		*/
			USID_KBD_6,				/* 0.0x11: 6		*/
			USID_KBD_Y,				/* 0.0x12: y		*/
			USID_KBD_T,				/* 0.0x13: t		*/
			USID_KBD_G,				/* 0.0x14: g		*/
			USID_KBD_H,				/* 0.0x15: h		*/
			USID_KBD_N,				/* 0.0x16: n		*/
			USID_NONE,				/* 0.0x17: (none)	*/
			USID_KBD_1,				/* 0.0x18: 1		*/
			USID_KBD_ESC,			/* 0.0x19: ESC		*/
			USID_KBD_TAB,			/* 0.0x1A: TAB		*/
			USID_NERD_CTRL,			/* 0.0x1B: CTRL		*/
			USID_NERD_SHIFT,		/* 0.0x1C: SHIFT L	*/
			USID_NERD_ALT,			/* 0.0x1D: ALT L	*/
			USID_MOD_GUI_L,			/* 0.0x1E: DIA L	*/
			USID_KBD_SPACE,			/* 0.0x1F: SPACE	*/
			USID_KBD_7,				/* 0.0x20: 7		*/
			USID_KBD_8,				/* 0.0x21: 8		*/
			USID_KBD_U,				/* 0.0x22: u		*/
			USID_KBD_I,				/* 0.0x23: i		*/
			USID_KBD_K,				/* 0.0x24: k		*/
			USID_KBD_J,				/* 0.0x25: j		*/
			USID_KBD_M,				/* 0.0x26: m		*/
			USID_NONE,				/* 0.0x27: (none)	*/
			USID_KBD_BACK_SLASH,	/* 0.0x28: \		*/
			USID_KBD_GRAVE_ACCENT,	/* 0.0x29: `		*/
			USID_KBD_BACKSPACE,		/* 0.0x2A: DEL		*/
			USID_KBD_RETURN,		/* 0.0x2B: RETURN	*/
			USID_NERD_FUNC,			/* 0.0x2C: Fn		*/
			USID_MOD_SHIFT_R,		/* 0.0x2D: SHIFT R	*/
			USID_NERD_ALT,			/* 0.0x2E: ALT R	*/
			USID_MOD_GUI_R,			/* 0.0x2F: DIA R	*/
			USID_KBD_9,				/* 0.0x30: 9		*/
			USID_KBD_0,				/* 0.0x31: 0		*/
			USID_KBD_O,				/* 0.0x32: o		*/
			USID_KBD_P,				/* 0.0x33: p		*/
			USID_KBD_SEMI_COLON,	/* 0.0x34: ;		*/
			USID_KBD_L,				/* 0.0x35: l		*/
			USID_KBD_COMMA,			/* 0.0x36: ,		*/
			USID_NONE,				/* 0.0x37: (none)	*/
			USID_KBD_HYPHONE,		/* 0.0x38: -		*/
			USID_KBD_EQUAL,			/* 0.0x39: =		*/
			USID_KBD_BRACKET_END,	/* 0.0x3A: ]		*/
			USID_KBD_BRACKET_START,	/* 0.0x3B: [		*/
			USID_KBD_QUOTE,			/* 0.0x3C: '		*/
			USID_KBD_SLASH,			/* 0.0x3D: /		*/
			USID_KBD_DOT,			/* 0.0x3E: .		*/
			USID_NONE				/* 0.0x3F: (none)	*/
		},

		/* [1] with Nerd Shift */
		{
			USID_KBD_2,				/* 1.0x00: 2		*/
			USID_KBD_Q,				/* 1.0x01: q		*/
			USID_KBD_W,				/* 1.0x02: w		*/
			USID_KBD_S,				/* 1.0x03: s		*/
			USID_KBD_A,				/* 1.0x04: a		*/
			USID_KBD_Z,				/* 1.0x05: z		*/
			USID_KBD_X,				/* 1.0x06: x		*/
			USID_KBD_C,				/* 1.0x07: c		*/
			USID_KBD_3,				/* 1.0x08: 3		*/
			USID_KBD_4,				/* 1.0x09: 4		*/
			USID_KBD_R,				/* 1.0x0A: r		*/
			USID_KBD_E,				/* 1.0x0B: e		*/
			USID_KBD_D,				/* 1.0x0C: d		*/
			USID_KBD_F,				/* 1.0x0D: f		*/
			USID_KBD_V,				/* 1.0x0E: v		*/
			USID_KBD_B,				/* 1.0x0F: b		*/
			USID_KBD_5,				/* 1.0x10: 5		*/
			USID_KBD_6,				/* 1.0x11: 6		*/
			USID_KBD_Y,				/* 1.0x12: y		*/
			USID_KBD_T,				/* 1.0x13: t		*/
			USID_KBD_G,				/* 1.0x14: g		*/
			USID_KBD_H,				/* 1.0x15: h		*/
			USID_KBD_N,				/* 1.0x16: n		*/
			USID_NONE,				/* 1.0x17: (none)	*/
			USID_KBD_1,				/* 1.0x18: 1		*/
			USID_KBD_ESC,			/* 1.0x19: ESC		*/
			USID_KBD_TAB,			/* 1.0x1A: TAB		*/
			USID_MOD_CTRL_L,		/* 1.0x1B: CTRL		*/
			USID_MOD_SHIFT_L,		/* 1.0x1C: SHIFT L	*/
			USID_MOD_ALT_L,			/* 1.0x1D: ALT L	*/
			USID_MOD_GUI_L,			/* 1.0x1E: DIA L	*/
			USID_KBD_SPACE,			/* 1.0x1F: SPACE	*/
			USID_KBD_7,				/* 1.0x20: 7		*/
			USID_KBD_8,				/* 1.0x21: 8		*/
			USID_KBD_U,				/* 1.0x22: u		*/
			USID_KBD_I,				/* 1.0x23: i		*/
			USID_KBD_K,				/* 1.0x24: k		*/
			USID_KBD_J,				/* 1.0x25: j		*/
			USID_KBD_M,				/* 1.0x26: m		*/
			USID_NONE,				/* 1.0x27: (none)	*/
			USID_KBD_BACK_SLASH,	/* 1.0x28: \		*/
			USID_KBD_GRAVE_ACCENT,	/* 1.0x29: `		*/
			USID_KBD_DELETE,		/* 1.0x2A: DEL		*/
			USID_KBD_RETURN,		/* 1.0x2B: RETURN	*/
			USID_NONE,				/* 1.0x2C: Fn		*/
			USID_MOD_SHIFT_R,		/* 1.0x2D: SHIFT R	*/
			USID_MOD_ALT_R,			/* 1.0x2E: ALT R	*/
			USID_MOD_GUI_R,			/* 1.0x2F: DIA R	*/
			USID_KBD_9,				/* 1.0x30: 9		*/
			USID_KBD_0,				/* 1.0x31: 0		*/
			USID_KBD_O,				/* 1.0x32: o		*/
			USID_KBD_P,				/* 1.0x33: p		*/
			USID_KBD_SEMI_COLON,	/* 1.0x34: ;		*/
			USID_KBD_L,				/* 1.0x35: l		*/
			USID_KBD_COMMA,			/* 1.0x36: ,		*/
			USID_NONE,				/* 1.0x37: (none)	*/
			USID_KBD_HYPHONE,		/* 1.0x38: -		*/
			USID_KBD_EQUAL,			/* 1.0x39: =		*/
			USID_KBD_BRACKET_END,	/* 1.0x3A: ]		*/
			USID_KBD_BRACKET_START,	/* 1.0x3B: [		*/
			USID_KBD_QUOTE,			/* 1.0x3C: '		*/
			USID_KBD_SLASH,			/* 1.0x3D: /		*/
			USID_KBD_DOT,			/* 1.0x3E: .		*/
			USID_NONE				/* 1.0x3F: (none)	*/
		},

		/* [2] with Nerd Control */
		{
			USID_NONE,				/* 2.0x00: 2		*/
			USID_NONE,				/* 2.0x01: q		*/
			USID_NONE,				/* 2.0x02: w		*/
			USID_NONE,				/* 2.0x03: s		*/
			USID_KBD_HOME,			/* 2.0x04: a		*/
			USID_NONE,				/* 2.0x05: z		*/
			USID_NONE,				/* 2.0x06: x		*/
			USID_NONE,				/* 2.0x07: c		*/
			USID_NONE,				/* 2.0x08: 3		*/
			USID_NONE,				/* 2.0x09: 4		*/
			USID_NONE,				/* 2.0x0A: r		*/
			USID_KBD_END,			/* 2.0x0B: e		*/
			USID_NONE,				/* 2.0x0C: d		*/
			USID_KBD_ARROW_R,		/* 2.0x0D: f		*/
			USID_NONE,				/* 2.0x0E: v		*/
			USID_KBD_ARROW_L,		/* 2.0x0F: b		*/
			USID_NONE,				/* 2.0x10: 5		*/
			USID_NONE,				/* 2.0x11: 6		*/
			USID_NONE,				/* 2.0x12: y		*/
			USID_NONE,				/* 2.0x13: t		*/
			USID_NONE,				/* 2.0x14: g		*/
			USID_KBD_BACKSPACE,		/* 2.0x15: h		*/
			USID_KBD_ARROW_D,		/* 2.0x16: n		*/
			USID_NONE,				/* 2.0x17: (none)	*/
			USID_NONE,				/* 2.0x18: 1		*/
			USID_NONE,				/* 2.0x19: ESC		*/
			USID_NONE,				/* 2.0x1A: TAB		*/
			USID_MOD_CTRL_L,		/* 2.0x1B: CTRL		*/
			USID_MOD_SHIFT_L,		/* 2.0x1C: SHIFT L	*/
			USID_MOD_ALT_L,			/* 2.0x1D: ALT L	*/
			USID_MOD_GUI_L,			/* 2.0x1E: DIA L	*/
			USID_NONE,				/* 2.0x1F: SPACE	*/
			USID_NONE,				/* 2.0x20: 7		*/
			USID_NONE,				/* 2.0x21: 8		*/
			USID_NONE,				/* 2.0x22: u		*/
			USID_NONE,				/* 2.0x23: i		*/
			USID_NONE,				/* 2.0x24: k		*/
			USID_NONE,				/* 2.0x25: j		*/
			USID_NONE,				/* 2.0x26: m		*/
			USID_NONE,				/* 2.0x27: (none)	*/
			USID_NONE,				/* 2.0x28: \		*/
			USID_NONE,				/* 2.0x29: `		*/
			USID_KBD_DELETE,		/* 2.0x2A: DEL		*/
			USID_NONE,				/* 2.0x2B: RETURN	*/
			USID_NONE,				/* 2.0x2C: Fn		*/
			USID_MOD_SHIFT_R,		/* 2.0x2D: SHIFT R	*/
			USID_MOD_ALT_R,			/* 2.0x2E: ALT R	*/
			USID_MOD_GUI_R,			/* 2.0x2F: DIA R	*/
			USID_NONE,				/* 2.0x30: 9		*/
			USID_NONE,				/* 2.0x31: 0		*/
			USID_NONE,				/* 2.0x32: o		*/
			USID_KBD_ARROW_U,		/* 2.0x33: p		*/
			USID_NONE,				/* 2.0x34: ;		*/
			USID_NONE,				/* 2.0x35: l		*/
			USID_NONE,				/* 2.0x36: ,		*/
			USID_NONE,				/* 2.0x37: (none)	*/
			USID_NONE,				/* 2.0x38: -		*/
			USID_NONE,				/* 2.0x39: =		*/
			USID_NONE,				/* 2.0x3A: ]		*/
			USID_NONE,				/* 2.0x3B: [		*/
			USID_NONE,				/* 2.0x3C: '		*/
			USID_KBD_SLASH,			/* 2.0x3D: /		*/
			USID_NONE,				/* 2.0x3E: .		*/
			USID_NONE				/* 2.0x3F: (none)	*/
		},

		/* [3] with Nerd Shift + Nerd Control */
		{
			USID_NONE,				/* 3.0x00: 2		*/
			USID_NONE,				/* 3.0x01: q		*/
			USID_NONE,				/* 3.0x02: w		*/
			USID_NONE,				/* 3.0x03: s		*/
			USID_NONE,				/* 3.0x04: a		*/
			USID_NONE,				/* 3.0x05: z		*/
			USID_NONE,				/* 3.0x06: x		*/
			USID_NONE,				/* 3.0x07: c		*/
			USID_NONE,				/* 3.0x08: 3		*/
			USID_NONE,				/* 3.0x09: 4		*/
			USID_NONE,				/* 3.0x0A: r		*/
			USID_NONE,				/* 3.0x0B: e		*/
			USID_NONE,				/* 3.0x0C: d		*/
			USID_NONE,				/* 3.0x0D: f		*/
			USID_NONE,				/* 3.0x0E: v		*/
			USID_NONE,				/* 3.0x0F: b		*/
			USID_NONE,				/* 3.0x10: 5		*/
			USID_NONE,				/* 3.0x11: 6		*/
			USID_NONE,				/* 3.0x12: y		*/
			USID_NONE,				/* 3.0x13: t		*/
			USID_NONE,				/* 3.0x14: g		*/
			USID_NONE,				/* 3.0x15: h		*/
			USID_NONE,				/* 3.0x16: n		*/
			USID_NONE,				/* 3.0x17: (none)	*/
			USID_NONE,				/* 3.0x18: 1		*/
			USID_NONE,				/* 3.0x19: ESC		*/
			USID_NONE,				/* 3.0x1A: TAB		*/
			USID_NONE,				/* 3.0x1B: CTRL		*/
			USID_NONE,				/* 3.0x1C: SHIFT L	*/
			USID_NONE,				/* 3.0x1D: ALT L	*/
			USID_NONE,				/* 3.0x1E: DIA L	*/
			USID_NONE,				/* 3.0x1F: SPACE	*/
			USID_NONE,				/* 3.0x20: 7		*/
			USID_NONE,				/* 3.0x21: 8		*/
			USID_NONE,				/* 3.0x22: u		*/
			USID_NONE,				/* 3.0x23: i		*/
			USID_NONE,				/* 3.0x24: k		*/
			USID_NONE,				/* 3.0x25: j		*/
			USID_NONE,				/* 3.0x26: m		*/
			USID_NONE,				/* 3.0x27: (none)	*/
			USID_NONE,				/* 3.0x28: \		*/
			USID_NONE,				/* 3.0x29: `		*/
			USID_NONE,				/* 3.0x2A: DEL		*/
			USID_NONE,				/* 3.0x2B: RETURN	*/
			USID_NONE,				/* 3.0x2C: Fn		*/
			USID_NONE,				/* 3.0x2D: SHIFT R	*/
			USID_NONE,				/* 3.0x2E: ALT R	*/
			USID_NONE,				/* 3.0x2F: DIA R	*/
			USID_NONE,				/* 3.0x30: 9		*/
			USID_NONE,				/* 3.0x31: 0		*/
			USID_NONE,				/* 3.0x32: o		*/
			USID_NONE,				/* 3.0x33: p		*/
			USID_NONE,				/* 3.0x34: ;		*/
			USID_NONE,				/* 3.0x35: l		*/
			USID_NONE,				/* 3.0x36: ,		*/
			USID_NONE,				/* 3.0x37: (none)	*/
			USID_NONE,				/* 3.0x38: -		*/
			USID_NONE,				/* 3.0x39: =		*/
			USID_NONE,				/* 3.0x3A: ]		*/
			USID_NONE,				/* 3.0x3B: [		*/
			USID_NONE,				/* 3.0x3C: '		*/
			USID_NONE,				/* 3.0x3D: /		*/
			USID_NONE,				/* 3.0x3E: .		*/
			USID_NONE				/* 3.0x3F: (none)	*/
		},

		/* [4] with Nerd Alt */
		{
			USID_KBD_2,				/* 4.0x00: 2		*/
			USID_KBD_Q,				/* 4.0x01: q		*/
			USID_KBD_W,				/* 4.0x02: w		*/
			USID_KBD_S,				/* 4.0x03: s		*/
			USID_KBD_A,				/* 4.0x04: a		*/
			USID_KBD_Z,				/* 4.0x05: z		*/
			USID_KBD_X,				/* 4.0x06: x		*/
			USID_KBD_C,				/* 4.0x07: c		*/
			USID_KBD_3,				/* 4.0x08: 3		*/
			USID_KBD_4,				/* 4.0x09: 4		*/
			USID_KBD_R,				/* 4.0x0A: r		*/
			USID_KBD_E,				/* 4.0x0B: e		*/
			USID_KBD_D,				/* 4.0x0C: d		*/
			USID_KBD_F,				/* 4.0x0D: f		*/
			USID_KBD_V,				/* 4.0x0E: v		*/
			USID_KBD_B,				/* 4.0x0F: b		*/
			USID_KBD_5,				/* 4.0x10: 5		*/
			USID_KBD_6,				/* 4.0x11: 6		*/
			USID_KBD_Y,				/* 4.0x12: y		*/
			USID_KBD_T,				/* 4.0x13: t		*/
			USID_KBD_G,				/* 4.0x14: g		*/
			USID_KBD_H,				/* 4.0x15: h		*/
			USID_KBD_N,				/* 4.0x16: n		*/
			USID_NONE,				/* 4.0x17: (none)	*/
			USID_KBD_1,				/* 4.0x18: 1		*/
			USID_KBD_ESC,			/* 4.0x19: ESC		*/
			USID_KBD_TAB,			/* 4.0x1A: TAB		*/
			USID_MOD_CTRL_L,		/* 4.0x1B: CTRL		*/
			USID_MOD_SHIFT_L,		/* 4.0x1C: SHIFT L	*/
			USID_MOD_ALT_L,			/* 4.0x1D: ALT L	*/
			USID_MOD_GUI_L,			/* 4.0x1E: DIA L	*/
			USID_KBD_SPACE,			/* 4.0x1F: SPACE	*/
			USID_KBD_7,				/* 4.0x20: 7		*/
			USID_KBD_8,				/* 4.0x21: 8		*/
			USID_KBD_U,				/* 4.0x22: u		*/
			USID_KBD_I,				/* 4.0x23: i		*/
			USID_KBD_K,				/* 4.0x24: k		*/
			USID_KBD_J,				/* 4.0x25: j		*/
			USID_KBD_M,				/* 4.0x26: m		*/
			USID_NONE,				/* 4.0x27: (none)	*/
			USID_KBD_BACK_SLASH,	/* 4.0x28: \		*/
			USID_KBD_GRAVE_ACCENT,	/* 4.0x29: `		*/
			USID_KBD_DELETE,		/* 4.0x2A: DEL		*/
			USID_KBD_RETURN,		/* 4.0x2B: RETURN	*/
			USID_NONE,				/* 4.0x2C: Fn		*/
			USID_MOD_SHIFT_R,		/* 4.0x2D: SHIFT R	*/
			USID_MOD_ALT_R,			/* 4.0x2E: ALT R	*/
			USID_MOD_GUI_R,			/* 4.0x2F: DIA R	*/
			USID_KBD_9,				/* 4.0x30: 9		*/
			USID_KBD_0,				/* 4.0x31: 0		*/
			USID_KBD_O,				/* 4.0x32: o		*/
			USID_KBD_P,				/* 4.0x33: p		*/
			USID_KBD_SEMI_COLON,	/* 4.0x34: ;		*/
			USID_KBD_L,				/* 4.0x35: l		*/
			USID_KBD_COMMA,			/* 4.0x36: ,		*/
			USID_NONE,				/* 4.0x37: (none)	*/
			USID_KBD_HYPHONE,		/* 4.0x38: -		*/
			USID_KBD_EQUAL,			/* 4.0x39: =		*/
			USID_KBD_BRACKET_END,	/* 4.0x3A: ]		*/
			USID_KBD_BRACKET_START,	/* 4.0x3B: [		*/
			USID_KBD_QUOTE,			/* 4.0x3C: '		*/
			USID_KBD_SLASH,			/* 4.0x3D: /		*/
			USID_KBD_DOT,			/* 4.0x3E: .		*/
			USID_NONE				/* 4.0x3F: (none)	*/
		},

		/* [5] with Nerd Alt + Nerd Shift */
		{
			USID_NONE,				/* 5.0x00: 2		*/
			USID_NONE,				/* 5.0x01: q		*/
			USID_NONE,				/* 5.0x02: w		*/
			USID_NONE,				/* 5.0x03: s		*/
			USID_NONE,				/* 5.0x04: a		*/
			USID_NONE,				/* 5.0x05: z		*/
			USID_NONE,				/* 5.0x06: x		*/
			USID_NONE,				/* 5.0x07: c		*/
			USID_NONE,				/* 5.0x08: 3		*/
			USID_NONE,				/* 5.0x09: 4		*/
			USID_NONE,				/* 5.0x0A: r		*/
			USID_NONE,				/* 5.0x0B: e		*/
			USID_NONE,				/* 5.0x0C: d		*/
			USID_NONE,				/* 5.0x0D: f		*/
			USID_NONE,				/* 5.0x0E: v		*/
			USID_NONE,				/* 5.0x0F: b		*/
			USID_NONE,				/* 5.0x10: 5		*/
			USID_NONE,				/* 5.0x11: 6		*/
			USID_NONE,				/* 5.0x12: y		*/
			USID_NONE,				/* 5.0x13: t		*/
			USID_NONE,				/* 5.0x14: g		*/
			USID_NONE,				/* 5.0x15: h		*/
			USID_NONE,				/* 5.0x16: n		*/
			USID_NONE,				/* 5.0x17: (none)	*/
			USID_NONE,				/* 5.0x18: 1		*/
			USID_NONE,				/* 5.0x19: ESC		*/
			USID_NONE,				/* 5.0x1A: TAB		*/
			USID_NONE,				/* 5.0x1B: CTRL		*/
			USID_NONE,				/* 5.0x1C: SHIFT L	*/
			USID_NONE,				/* 5.0x1D: ALT L	*/
			USID_NONE,				/* 5.0x1E: DIA L	*/
			USID_NONE,				/* 5.0x1F: SPACE	*/
			USID_NONE,				/* 5.0x20: 7		*/
			USID_NONE,				/* 5.0x21: 8		*/
			USID_NONE,				/* 5.0x22: u		*/
			USID_NONE,				/* 5.0x23: i		*/
			USID_NONE,				/* 5.0x24: k		*/
			USID_NONE,				/* 5.0x25: j		*/
			USID_NONE,				/* 5.0x26: m		*/
			USID_NONE,				/* 5.0x27: (none)	*/
			USID_NONE,				/* 5.0x28: \		*/
			USID_NONE,				/* 5.0x29: `		*/
			USID_NONE,				/* 5.0x2A: DEL		*/
			USID_NONE,				/* 5.0x2B: RETURN	*/
			USID_NONE,				/* 5.0x2C: Fn		*/
			USID_NONE,				/* 5.0x2D: SHIFT R	*/
			USID_NONE,				/* 5.0x2E: ALT R	*/
			USID_NONE,				/* 5.0x2F: DIA R	*/
			USID_NONE,				/* 5.0x30: 9		*/
			USID_NONE,				/* 5.0x31: 0		*/
			USID_NONE,				/* 5.0x32: o		*/
			USID_NONE,				/* 5.0x33: p		*/
			USID_NONE,				/* 5.0x34: ;		*/
			USID_NONE,				/* 5.0x35: l		*/
			USID_NONE,				/* 5.0x36: ,		*/
			USID_NONE,				/* 5.0x37: (none)	*/
			USID_NONE,				/* 5.0x38: -		*/
			USID_NONE,				/* 5.0x39: =		*/
			USID_NONE,				/* 5.0x3A: ]		*/
			USID_NONE,				/* 5.0x3B: [		*/
			USID_NONE,				/* 5.0x3C: '		*/
			USID_NONE,				/* 5.0x3D: /		*/
			USID_NONE,				/* 5.0x3E: .		*/
			USID_NONE				/* 5.0x3F: (none)	*/
		},

		/* [6] with Nerd Alt + Nerd Control */
		{
			USID_NONE,				/* 6.0x00: 2		*/
			USID_NONE,				/* 6.0x01: q		*/
			USID_NONE,				/* 6.0x02: w		*/
			USID_NONE,				/* 6.0x03: s		*/
			USID_NONE,				/* 6.0x04: a		*/
			USID_NONE,				/* 6.0x05: z		*/
			USID_NONE,				/* 6.0x06: x		*/
			USID_NONE,				/* 6.0x07: c		*/
			USID_NONE,				/* 6.0x08: 3		*/
			USID_NONE,				/* 6.0x09: 4		*/
			USID_NONE,				/* 6.0x0A: r		*/
			USID_NONE,				/* 6.0x0B: e		*/
			USID_NONE,				/* 6.0x0C: d		*/
			USID_NONE,				/* 6.0x0D: f		*/
			USID_NONE,				/* 6.0x0E: v		*/
			USID_NONE,				/* 6.0x0F: b		*/
			USID_NONE,				/* 6.0x10: 5		*/
			USID_NONE,				/* 6.0x11: 6		*/
			USID_NONE,				/* 6.0x12: y		*/
			USID_NONE,				/* 6.0x13: t		*/
			USID_NONE,				/* 6.0x14: g		*/
			USID_NONE,				/* 6.0x15: h		*/
			USID_NONE,				/* 6.0x16: n		*/
			USID_NONE,				/* 6.0x17: (none)	*/
			USID_NONE,				/* 6.0x18: 1		*/
			USID_NONE,				/* 6.0x19: ESC		*/
			USID_NONE,				/* 6.0x1A: TAB		*/
			USID_NONE,				/* 6.0x1B: CTRL		*/
			USID_NONE,				/* 6.0x1C: SHIFT L	*/
			USID_NONE,				/* 6.0x1D: ALT L	*/
			USID_NONE,				/* 6.0x1E: DIA L	*/
			USID_NONE,				/* 6.0x1F: SPACE	*/
			USID_NONE,				/* 6.0x20: 7		*/
			USID_NONE,				/* 6.0x21: 8		*/
			USID_NONE,				/* 6.0x22: u		*/
			USID_NONE,				/* 6.0x23: i		*/
			USID_NONE,				/* 6.0x24: k		*/
			USID_NONE,				/* 6.0x25: j		*/
			USID_NONE,				/* 6.0x26: m		*/
			USID_NONE,				/* 6.0x27: (none)	*/
			USID_NONE,				/* 6.0x28: \		*/
			USID_NONE,				/* 6.0x29: `		*/
			USID_NONE,				/* 6.0x2A: DEL		*/
			USID_NONE,				/* 6.0x2B: RETURN	*/
			USID_NONE,				/* 6.0x2C: Fn		*/
			USID_NONE,				/* 6.0x2D: SHIFT R	*/
			USID_NONE,				/* 6.0x2E: ALT R	*/
			USID_NONE,				/* 6.0x2F: DIA R	*/
			USID_NONE,				/* 6.0x30: 9		*/
			USID_NONE,				/* 6.0x31: 0		*/
			USID_NONE,				/* 6.0x32: o		*/
			USID_NONE,				/* 6.0x33: p		*/
			USID_NONE,				/* 6.0x34: ;		*/
			USID_NONE,				/* 6.0x35: l		*/
			USID_NONE,				/* 6.0x36: ,		*/
			USID_NONE,				/* 6.0x37: (none)	*/
			USID_NONE,				/* 6.0x38: -		*/
			USID_NONE,				/* 6.0x39: =		*/
			USID_NONE,				/* 6.0x3A: ]		*/
			USID_NONE,				/* 6.0x3B: [		*/
			USID_NONE,				/* 6.0x3C: '		*/
			USID_NONE,				/* 6.0x3D: /		*/
			USID_NONE,				/* 6.0x3E: .		*/
			USID_NONE				/* 6.0x3F: (none)	*/
		},

		/* [7] with Nerd Alt + Nerd Control + Nerd Shift */
		{
			USID_NONE,				/* 7.0x00: 2		*/
			USID_NONE,				/* 7.0x01: q		*/
			USID_NONE,				/* 7.0x02: w		*/
			USID_NONE,				/* 7.0x03: s		*/
			USID_NONE,				/* 7.0x04: a		*/
			USID_NONE,				/* 7.0x05: z		*/
			USID_NONE,				/* 7.0x06: x		*/
			USID_NONE,				/* 7.0x07: c		*/
			USID_NONE,				/* 7.0x08: 3		*/
			USID_NONE,				/* 7.0x09: 4		*/
			USID_NONE,				/* 7.0x0A: r		*/
			USID_NONE,				/* 7.0x0B: e		*/
			USID_NONE,				/* 7.0x0C: d		*/
			USID_NONE,				/* 7.0x0D: f		*/
			USID_NONE,				/* 7.0x0E: v		*/
			USID_NONE,				/* 7.0x0F: b		*/
			USID_NONE,				/* 7.0x10: 5		*/
			USID_NONE,				/* 7.0x11: 6		*/
			USID_NONE,				/* 7.0x12: y		*/
			USID_NONE,				/* 7.0x13: t		*/
			USID_NONE,				/* 7.0x14: g		*/
			USID_NONE,				/* 7.0x15: h		*/
			USID_NONE,				/* 7.0x16: n		*/
			USID_NONE,				/* 7.0x17: (none)	*/
			USID_NONE,				/* 7.0x18: 1		*/
			USID_NONE,				/* 7.0x19: ESC		*/
			USID_NONE,				/* 7.0x1A: TAB		*/
			USID_NONE,				/* 7.0x1B: CTRL		*/
			USID_NONE,				/* 7.0x1C: SHIFT L	*/
			USID_NONE,				/* 7.0x1D: ALT L	*/
			USID_NONE,				/* 7.0x1E: DIA L	*/
			USID_NONE,				/* 7.0x1F: SPACE	*/
			USID_NONE,				/* 7.0x20: 7		*/
			USID_NONE,				/* 7.0x21: 8		*/
			USID_NONE,				/* 7.0x22: u		*/
			USID_NONE,				/* 7.0x23: i		*/
			USID_NONE,				/* 7.0x24: k		*/
			USID_NONE,				/* 7.0x25: j		*/
			USID_NONE,				/* 7.0x26: m		*/
			USID_NONE,				/* 7.0x27: (none)	*/
			USID_NONE,				/* 7.0x28: \		*/
			USID_NONE,				/* 7.0x29: `		*/
			USID_NONE,				/* 7.0x2A: DEL		*/
			USID_NONE,				/* 7.0x2B: RETURN	*/
			USID_NONE,				/* 7.0x2C: Fn		*/
			USID_NONE,				/* 7.0x2D: SHIFT R	*/
			USID_NONE,				/* 7.0x2E: ALT R	*/
			USID_NONE,				/* 7.0x2F: DIA R	*/
			USID_NONE,				/* 7.0x30: 9		*/
			USID_NONE,				/* 7.0x31: 0		*/
			USID_NONE,				/* 7.0x32: o		*/
			USID_NONE,				/* 7.0x33: p		*/
			USID_NONE,				/* 7.0x34: ;		*/
			USID_NONE,				/* 7.0x35: l		*/
			USID_NONE,				/* 7.0x36: ,		*/
			USID_NONE,				/* 7.0x37: (none)	*/
			USID_NONE,				/* 7.0x38: -		*/
			USID_NONE,				/* 7.0x39: =		*/
			USID_NONE,				/* 7.0x3A: ]		*/
			USID_NONE,				/* 7.0x3B: [		*/
			USID_NONE,				/* 7.0x3C: '		*/
			USID_NONE,				/* 7.0x3D: /		*/
			USID_NONE,				/* 7.0x3E: .		*/
			USID_NONE				/* 7.0x3F: (none)	*/
		},

		/* [8] with Nerd Function */
		{
			USID_KBD_2,				/* 8.0x00: 2		*/
			USID_KBD_Q,				/* 8.0x01: q		*/
			USID_KBD_W,				/* 8.0x02: w		*/
			USID_KBD_S,				/* 8.0x03: s		*/
			USID_KBD_A,				/* 8.0x04: a		*/
			USID_KBD_Z,				/* 8.0x05: z		*/
			USID_KBD_X,				/* 8.0x06: x		*/
			USID_KBD_C,				/* 8.0x07: c		*/
			USID_KBD_3,				/* 8.0x08: 3		*/
			USID_KBD_4,				/* 8.0x09: 4		*/
			USID_KBD_R,				/* 8.0x0A: r		*/
			USID_KBD_E,				/* 8.0x0B: e		*/
			USID_KBD_D,				/* 8.0x0C: d		*/
			USID_KBD_F,				/* 8.0x0D: f		*/
			USID_KBD_V,				/* 8.0x0E: v		*/
			USID_KBD_B,				/* 8.0x0F: b		*/
			USID_KBD_5,				/* 8.0x10: 5		*/
			USID_KBD_6,				/* 8.0x11: 6		*/
			USID_KBD_Y,				/* 8.0x12: y		*/
			USID_KBD_T,				/* 8.0x13: t		*/
			USID_KBD_G,				/* 8.0x14: g		*/
			USID_KBD_H,				/* 8.0x15: h		*/
			USID_KBD_N,				/* 8.0x16: n		*/
			USID_NONE,				/* 8.0x17: (none)	*/
			USID_KBD_1,				/* 8.0x18: 1		*/
			USID_KBD_ESC,			/* 8.0x19: ESC		*/
			USID_KBD_TAB,			/* 8.0x1A: TAB		*/
			USID_MOD_CTRL_L,		/* 8.0x1B: CTRL		*/
			USID_MOD_SHIFT_L,		/* 8.0x1C: SHIFT L	*/
			USID_MOD_ALT_L,			/* 8.0x1D: ALT L	*/
			USID_MOD_GUI_L,			/* 8.0x1E: DIA L	*/
			USID_KBD_SPACE,			/* 8.0x1F: SPACE	*/
			USID_KBD_7,				/* 8.0x20: 7		*/
			USID_KBD_8,				/* 8.0x21: 8		*/
			USID_KBD_U,				/* 8.0x22: u		*/
			USID_KBD_I,				/* 8.0x23: i		*/
			USID_KBD_K,				/* 8.0x24: k		*/
			USID_KBD_J,				/* 8.0x25: j		*/
			USID_KBD_M,				/* 8.0x26: m		*/
			USID_NONE,				/* 8.0x27: (none)	*/
			USID_KBD_BACK_SLASH,	/* 8.0x28: \		*/
			USID_KBD_GRAVE_ACCENT,	/* 8.0x29: `		*/
			USID_KBD_DELETE,		/* 8.0x2A: DEL		*/
			USID_KBD_RETURN,		/* 8.0x2B: RETURN	*/
			USID_NONE,				/* 8.0x2C: Fn		*/
			USID_MOD_SHIFT_R,		/* 8.0x2D: SHIFT R	*/
			USID_MOD_ALT_R,			/* 8.0x2E: ALT R	*/
			USID_MOD_GUI_R,			/* 8.0x2F: DIA R	*/
			USID_KBD_9,				/* 8.0x30: 9		*/
			USID_KBD_0,				/* 8.0x31: 0		*/
			USID_KBD_O,				/* 8.0x32: o		*/
			USID_KBD_P,				/* 8.0x33: p		*/
			USID_KBD_SEMI_COLON,	/* 8.0x34: ;		*/
			USID_KBD_L,				/* 8.0x35: l		*/
			USID_KBD_COMMA,			/* 8.0x36: ,		*/
			USID_NONE,				/* 8.0x37: (none)	*/
			USID_KBD_HYPHONE,		/* 8.0x38: -		*/
			USID_KBD_EQUAL,			/* 8.0x39: =		*/
			USID_KBD_BRACKET_END,	/* 8.0x3A: ]		*/
			USID_KBD_BRACKET_START,	/* 8.0x3B: [		*/
			USID_KBD_QUOTE,			/* 8.0x3C: '		*/
			USID_KBD_SLASH,			/* 8.0x3D: /		*/
			USID_KBD_DOT,			/* 8.0x3E: .		*/
			USID_NONE				/* 8.0x3F: (none)	*/
		},

		/* [9] with Nerd Lock */
		{
			USID_NONE,				/* 9.0x00: 2		*/
			USID_NONE,				/* 9.0x01: q		*/
			USID_NONE,				/* 9.0x02: w		*/
			USID_NONE,				/* 9.0x03: s		*/
			USID_NONE,				/* 9.0x04: a		*/
			USID_NONE,				/* 9.0x05: z		*/
			USID_NONE,				/* 9.0x06: x		*/
			USID_NONE,				/* 9.0x07: c		*/
			USID_NONE,				/* 9.0x08: 3		*/
			USID_NONE,				/* 9.0x09: 4		*/
			USID_NONE,				/* 9.0x0A: r		*/
			USID_NONE,				/* 9.0x0B: e		*/
			USID_NONE,				/* 9.0x0C: d		*/
			USID_NONE,				/* 9.0x0D: f		*/
			USID_NONE,				/* 9.0x0E: v		*/
			USID_NONE,				/* 9.0x0F: b		*/
			USID_NONE,				/* 9.0x10: 5		*/
			USID_NONE,				/* 9.0x11: 6		*/
			USID_NONE,				/* 9.0x12: y		*/
			USID_NONE,				/* 9.0x13: t		*/
			USID_NONE,				/* 9.0x14: g		*/
			USID_NONE,				/* 9.0x15: h		*/
			USID_NONE,				/* 9.0x16: n		*/
			USID_NONE,				/* 9.0x17: (none)	*/
			USID_NONE,				/* 9.0x18: 1		*/
			USID_NONE,				/* 9.0x19: ESC		*/
			USID_NONE,				/* 9.0x1A: TAB		*/
			USID_NONE,				/* 9.0x1B: CTRL		*/
			USID_NONE,				/* 9.0x1C: SHIFT L	*/
			USID_NONE,				/* 9.0x1D: ALT L	*/
			USID_NONE,				/* 9.0x1E: DIA L	*/
			USID_NONE,				/* 9.0x1F: SPACE	*/
			USID_NONE,				/* 9.0x20: 7		*/
			USID_NONE,				/* 9.0x21: 8		*/
			USID_NONE,				/* 9.0x22: u		*/
			USID_NONE,				/* 9.0x23: i		*/
			USID_NONE,				/* 9.0x24: k		*/
			USID_NONE,				/* 9.0x25: j		*/
			USID_NONE,				/* 9.0x26: m		*/
			USID_NONE,				/* 9.0x27: (none)	*/
			USID_NONE,				/* 9.0x28: \		*/
			USID_NONE,				/* 9.0x29: `		*/
			USID_NONE,				/* 9.0x2A: DEL		*/
			USID_NONE,				/* 9.0x2B: RETURN	*/
			USID_NONE,				/* 9.0x2C: Fn		*/
			USID_NONE,				/* 9.0x2D: SHIFT R	*/
			USID_NONE,				/* 9.0x2E: ALT R	*/
			USID_NONE,				/* 9.0x2F: DIA R	*/
			USID_NONE,				/* 9.0x30: 9		*/
			USID_NONE,				/* 9.0x31: 0		*/
			USID_NONE,				/* 9.0x32: o		*/
			USID_NONE,				/* 9.0x33: p		*/
			USID_NONE,				/* 9.0x34: ;		*/
			USID_NONE,				/* 9.0x35: l		*/
			USID_NONE,				/* 9.0x36: ,		*/
			USID_NONE,				/* 9.0x37: (none)	*/
			USID_NONE,				/* 9.0x38: -		*/
			USID_NONE,				/* 9.0x39: =		*/
			USID_NONE,				/* 9.0x3A: ]		*/
			USID_NONE,				/* 9.0x3B: [		*/
			USID_NONE,				/* 9.0x3C: '		*/
			USID_NONE,				/* 9.0x3D: /		*/
			USID_NONE,				/* 9.0x3E: .		*/
			USID_NONE				/* 9.0x3F: (none)	*/
		}
	}
};

/* end of keymap_factory.h */
