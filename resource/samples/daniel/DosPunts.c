// -------------------Primera pràctica de PI------------------------------
// Ences de dos punts simultanis al '5x7 Dot matrix' utilitzant el bus I2C
// -----------------------------------------------------------------------
// Autors:  Antonio B Martínez y Ruben Ruiz------------------
// Fecha: Julio 2004
// Comentaris: Aquest Firmware esta dissenyat per la placa 'Development Board EZ-USB ABMV-RR ESAII 2004'
//

// Incloure les llibreries necessaries:
// EZUSB.H conte:	Definicio de constants, macros, tipus de dades i variables globals, i també
// 					els prototips de les funcions que s'utilitzaran
// EZREGS.H conte:	Declaracio de registres i mascares de bits
#include <ezusb.h>
#include <ezregs.h>

// Definim els noms de l'adreça I2C dels I/O port on esta el '7x5 Dot matrix' 
#define 	COL_ADDR	0x21	// Direccio de les columnes 
#define 	ROW_ADDR	0x22	// Direccio de les files

// Creem els vectors de dades de fila i columna
BYTE xdata col[] = { 0xFE, 0xFD, 0xFB, 0xF7, 0xEF };
BYTE xdata row[] = { 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40 };
BYTE xdata blank = 0xFF;

// PROGRAMA PRINCIPAL
main()
{
	EZUSB_InitI2C();

	while(TRUE){
		EZUSB_WriteI2C(ROW_ADDR, 0x01, &row[1]);	// Mostrem el punt [1,1]
		EZUSB_WaitForEEPROMWrite(ROW_ADDR);
		EZUSB_WriteI2C(COL_ADDR, 0x01, &col[1]);
		EZUSB_WaitForEEPROMWrite(COL_ADDR);
		EZUSB_Delay(1);

		EZUSB_WriteI2C(COL_ADDR, 0x01, &blank);		// Mostrem el punt [3,3]
		EZUSB_WaitForEEPROMWrite(COL_ADDR);
		EZUSB_WriteI2C(ROW_ADDR, 0x01, &row[3]);
		EZUSB_WaitForEEPROMWrite(ROW_ADDR);
		EZUSB_WriteI2C(COL_ADDR, 0x01, &col[3]);
		EZUSB_WaitForEEPROMWrite(COL_ADDR);
		EZUSB_Delay(1);

		EZUSB_WriteI2C(COL_ADDR, 0x01, &blank);		// No mostrem res per 'Dot matrix'
		EZUSB_WaitForEEPROMWrite(COL_ADDR);
	}
}

