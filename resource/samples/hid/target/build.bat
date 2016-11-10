@echo off
REM #--------------------------------------------------------------------------
REM #   File:           BUILD.BAT
REM #   Contents:       Batch file to build hid.
REM #
REM #	Copyright (c) 2000 Cypress Semiconductor All rights reserved
REM #--------------------------------------------------------------------------

REM # command line switches
REM # ---------------------
REM # -clean delete temporary files
REM # -i     Locate code in internal RAM.  Also builds EEPROM images.  Requires full
REM #        version of Keil Tools

REM Set the following to defaults
set EZTARGET=C:\Anchor\EzUsb\Target
set C51INC=C:\C51\INC;%EZTARGET%\INC

REM ### Compile FrameWorks code ###
c51 fw.c debug objectextend code small moddp2

REM ### Compile user peripheral code ###
REM ### Note: This code does not generate interrupt vectors ###
c51 periph.c db oe code small moddp2 noiv

REM ### Assemble descriptor table ###
a51 dscr.a51 errorprint debug

REM ### Link object code (includes debug info) ###
REM ### Note: XDATA and CODE must not overlap ###
REM ### Note: using a response file here for line longer than 128 chars
echo fw.obj, dscr.obj, periph.obj, > tmp.rsp
echo %EZTARGET%\lib\USBJmpTb.obj,%EZTARGET%\lib\EZUSB.lib  >> tmp.rsp
if "%1" == "-i" echo TO hid RAMSIZE(256) PL(68) PW(78) CODE(80h) XDATA(1000h)  >> tmp.rsp
if not "%1" == "-i" echo TO hid RAMSIZE(256) PL(68) PW(78) CODE(4000h) XDATA(5000h)  >> tmp.rsp
bl51 @tmp.rsp

REM ### Generate intel hex image of binary (no debug info) ###
oh51 hid HEXFILE(hid.hex)

REM ### Generate serial eeprom image for B2 (EZ-USB) bootload ###
if "%1" == "-i" %EZTARGET%\Hex2bix\Release\hex2bix -i -o hid.iic hid.hex

REM ### Generate serial eeprom image for B6 (EZ-USB FX)bootload ###
if "%1" == "-i" %EZTARGET%\Hex2bix\Release\hex2bix -i -f 0xB6 -o hid.b6 hid.hex

REM ### Generate BIX file ###
%EZTARGET%\Hex2bix\Release\hex2bix hid.hex

if "%1" == "-clean" del tmp.rsp
if "%1" == "-clean" del *.lst
if "%1" == "-clean" del *.obj
if "%1" == "-clean" del *.m51

