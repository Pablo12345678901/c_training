/*
 * main.c
 *
 *  Created on: ??þ/??þ/????
 *      Author: DELL
 */
#include "headers.h" /* Includes headers from AVR-Libc :
			- Doc : https://www.nongnu.org/avr-libc/user-manual/modules.html
			- Project : https://github.com/avrdudes/avr-libc
		     */
#include "RTC.h" /* Include a header ("TWI.h", which in turn includes some MACROS and some prototypes) and some prototypes. */

int main()
{
	RTC_SET_TIME(0x12,0x01,0x17);
	while(1); /* Infinite loop */
}

