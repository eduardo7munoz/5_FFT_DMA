/*
 * UART_plotter.c
 *
 *  Created on: May 7, 2023
 *      Author: eduardomunoz
 */

#include "DMA.h"
#include "UART_plotter.h"
#include "UART.h"

void printmag(int16_t outputpoints[512], uint16_t max)
{
	int16_t outputmag = 0;
	uint16_t maxmag = max/20;
	uint8_t mag = 0;

	UART_escapes("[H");
	UART_escapes("[4C");
	UART_escapes("[3B");
	UART_escapes("[2C");
	UART_escapes("[24B");
	UART_escapes("[s");
	for(mag = 0; mag<outputpoints[0]/maxmag; mag++)
	{
		UART_print("*");
		UART_escapes("[1A");

	}



	for(uint16_t index = 2; index+2 < LENGTH_OF_FFT; index=index+4)
	{
		outputpoints[index];
		outputmag = (outputpoints[index]+outputpoints[index+2])/2;
		UART_escapes("8");
		UART_escapes("[2C");
		UART_escapes("[s");

		for(mag = 0; mag<outputmag/maxmag; mag++)
		{
			UART_print("*");
			UART_escapes("[1A");
			UART_escapes("[1D");
		}

	}

}

void eraseplot()
{
	UART_escapes("[H");
	UART_escapes("[4C");
	UART_escapes("[3B");
	UART_escapes("[2C");
	for(uint16_t verticalborder = 0; verticalborder <25; verticalborder++)
		{
			UART_escapes("[K");
			UART_escapes("[1B");


		}
}


void printgraph()
{
	UART_escapes("[H");

	//[nB down n lines, [nA up n lines, [nC right n lines, [nD left n lines
	UART_escapes("[4C");
	UART_escapes("[3B");
	UART_escapes("[1C");
	UART_escapes("[s");
	UART_escapes("[1D");
	for(uint16_t verticalborder = 0; verticalborder <25; verticalborder++)
	{
		UART_print("|");
		UART_escapes("[1B");
		UART_escapes("[1D");


	}

	uint16_t freq = 128;
	char freqstr1[4];
	for(uint16_t horizontalborder = 0; horizontalborder <128; horizontalborder++)
	{


			UART_print("_");

	}
//	UART_escapes("[128D");
//	UART_escapes("[1B");
//	uint16_t placenum=0;
//	for(placenum=0; placenum<7; ++placenum)
//	{
//		UART_escapes("[16C");
//		itoa(freq,freqstr1, 10);
//		UART_print(freqstr1);
//		freq +=128;
//	}

}

void printnumbers()
{
	uint16_t freq = 100;
	uint16_t num = 0;
	char spacingstr[4];
	char freqstr1[4];
	UART_escapes("[128D");
	UART_escapes("[1B");
	uint16_t placenum=0;
	for(placenum=0; placenum<10; ++placenum)
	{
		itoa(freq,freqstr1, 10);
		num = 14-(sizeof(freqstr1)/sizeof(char));
		sprintf(spacingstr, "[%dC", num);
		UART_escapes(spacingstr);
		UART_print(freqstr1);
		freq +=100;
	}
}
