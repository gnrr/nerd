/*
 * EZ-UZK on MINI EZ-USB
 *  (version 0180)
 *   by uratan! 2004.7.26
 */


概要

    UZK に関してはこちらの web をご覧ください。

        http://www002.upp.so-net.ne.jp/uratan/UZK/

    EZ-USB/AN2131 開発キットに含まれる KEIL ELEKTRONIK C51 COMPILER V6.10
    にて作成してあります。

    AN2131SC (Rev.E) にて動作確認を行いました。

  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

ファイルの説明

    00readme.txt --- このファイル
    00change.txt --- 変更の履歴
    makefile --- make.exe 用の makefile
    link.awk --- リンカ BL51.exe に食わせる定義ファイルを作成する awk スクリプト
    fw.c --- EZ-USB のメインエントリー
    USBJmpTb.a51 --- EZ-USB の割り込みベクタの記述
    dscr.a51 --- 各種 USB デスクリプタの定義の記述
    uart.c --- デバッグ用に使う uart0 制御サブルーチンの記述
    periph.c --- UZK のメインプログラムの記述
    timer0.c --- timer0 制御サブルーチン郡の記述
    uart1.c --- uart1 制御サブルーチンの記述

        (すべてのファイルの TAB は 4 です)
        (日本語のコメントたくさんつけましたので読んでみてください)

        (以下は make した結果生成されるファイルの一部です)

    ez-uzk.hex --- HEX フォーマットの UZK プログラム
    ez-uzk.iic --- "Load EEPROM" で使用する形式の UZK プログラム

  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

参考文献

    以下の web リソースを使用・参考にさせていただきました。

    ◎AN2131-DK001 EZ-USB Development Kit より

        EZ-USB Technical Reference Manual
            (http://www.cypress.com/cfuploads/support/developer_kits/ez-usb_trm.pdf)

        EZ-USB Development Tools V2.61.700
            (http://www.cypress.com/cfuploads/support/developer_kits/EZ-USB_devtools_version_261700.zip)

    ◎USB T.A. (http://www.usb.org/developers/hidpage/) より

        HID デバイスクラス定義
            (http://www.usb.org/developers/devclass_docs/HID1_11.pdf)

        HID Usage Tables
            (http://www.usb.org/developers/devclass_docs/Hut1_11.pdf)

    ◎オプティマイズ web ページ (http://optimize.ath.cx/) より

        「MINI EZ-USB」
            (http://optimize.ath.cx/mini_ezusb/index.html)

    ◎いしかわきょーすけのほーむぺーじ (http://www.asahi-net.or.jp/~qx5k-iskw/)
      より

        「EZ-USB でアマチュア USB 野郎になる」
            (http://www.asahi-net.or.jp/~qx5k-iskw/robot/ezusb.html)


    また EZ-USB/AN2131 開発キットより

        C:\Cypress\usb\Target\Fw\Ezusb\*.*

  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

ライセンス

    このプログラムはフリーソフトウェアです。使用にあたっては、
    X11 License に従うこととします。

        (http://www.gnu.org/licenses/license-list.ja.html)
        (http://www.gnu.org/licenses/license-list.html)

    このプログラムは有用であることを願って頒布されますが、*全くの無保証*
    です。商業可能性の保証や特定の目的への適合性は、言外に示されたものも
    含め全く存在しません。


  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
