/*
 * main.c
 *
 *  Created on: ??þ/??þ/????
 *      Author: DELL
 */
#include "headers.h" /* Includes headers from AVR-Libc :
			https://github.com/avrdudes/avr-libc
		      
			#include <avr/io.h> 
			#include <util/delay.h>
		     */
#include "RTC.h" /* Include a header (which in turn includes some MACROS and some prototypes) and some prototypes.
		    
		    #include "TWI.h"

		    void RTC_SET_TIME(unsigned char sec,unsigned char min,unsigned char hour);
		    void RTC_SET_DATE(unsigned char day,unsigned char month,unsigned char year);
		    void RTC_GET_TIME();
		    void RTC_GET_DATE();
		    void decimal_to_hexa(unsigned char* number);
		 */

int main()
{
	RTC_SET_TIME(0x12,0x01,0x17);
	while(1); /* Infinite loop */
}

