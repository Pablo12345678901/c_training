/* RTC.h */
#ifndef RTC_H_

#define RTC_H_
#include "TWI.h"
/* The removed RTC.h in 'HAL' directory included "../MCAL/TWI.h"
   so I have to check whether it is really different from TWI.h
   and remove it if no.
*/

/* Theorical reminder :
   - ‘unsigned char’ holds numbers from 0 to 255 (on most computers).
*/
unsigned char sec_rtc, min_rtc, hour_rtc; /* Time */
unsigned char day_rtc, month_rtc, year_rtc; /* Date */

/*
  Should the two variables above be static (only for this module) ?
*/ 

void
RTC_SET_TIME (unsigned char sec, unsigned char min, unsigned char hour)
{
	TWI_start();
	TWI_send_DeviceAddress_Write(0x68); /* because the address of RTC is 0xD0 so after shifting and ORing the 0x68 it become 0xD0 */
	TWI_send_data(00,MASTER); /* send the address of the RTC pointer */
	_delay_ms(100);
	TWI_send_data(sec,MASTER); /* store at this address the second */
	_delay_ms(100);
	TWI_send_data(min,MASTER); /* the RTC will increment the pointer by default */
	_delay_ms(1);
	TWI_send_data(hour,MASTER);
	_delay_ms(1);
	TWI_stop();
}

void
RTC_SET_DATE (unsigned char day, unsigned char month, unsigned char year)
{
	TWI_start();
	TWI_send_DeviceAddress_Write(0x68);
	TWI_send_data(04,MASTER); /* send the address of the pointer to store the date */
	 TWI_send_data(day,MASTER);
	_delay_ms(1);
	TWI_send_data(month,MASTER); /* the RTC will increment the address by default */
	_delay_ms(1);
	TWI_send_data(year,MASTER);
	_delay_ms(1);
	TWI_stop();
}

void
RTC_GET_TIME ()
{
	TWI_start();
	TWI_send_DeviceAddress_Write(0x68);
	TWI_send_data(0,MASTER); /* the address I want to read data from it (update the RTC pointer) */

	TWI_start();
	TWI_send_DeviceAddress_Read(0x68); /* read the data */
	sec_rtc=TWI_recieve_data_ACK(MASTER);
	decimal_to_hexa(&sec_rtc);
	min_rtc=TWI_recieve_data_ACK(MASTER);
	decimal_to_hexa(&min_rtc);
	hour_rtc=TWI_recieve_data_NACK(MASTER); /* the last byte received don't replay with ACK */
	decimal_to_hexa(&hour_rtc);
	TWI_stop();
}

void
RTC_GET_DATE ()
{
	TWI_start();
	TWI_send_DeviceAddress_Write(0x68);
	TWI_send_data(4,MASTER); /* start read the date at address 4 */
	_delay_ms(5);
	TWI_start();
	_delay_ms(5);
	TWI_send_DeviceAddress_Read(0x68);
	_delay_ms(20);
	day_rtc=TWI_recieve_data_ACK(MASTER);
	decimal_to_hexa(&day_rtc);
	_delay_ms(5);
	month_rtc=TWI_recieve_data_ACK(MASTER);
	decimal_to_hexa(&month_rtc);
	_delay_ms(5);
	year_rtc=TWI_recieve_data_NACK(MASTER);
	decimal_to_hexa(&year_rtc);
	TWI_stop();
}

void
decimal_to_hexa (unsigned char* number)
{ /* The RTC store the number as hexadecimal number.
     So to use the numbers of the RTC we need to convert it to hexadecimal.
  */
  unsigned char arr[5] ; /* Why size 5 ???
			    Only the two first indexes are used at the end of this function.
			    An unsigned char number is in a range 0-255 00-FF.
			    Maybe it is to ensure that is a greater number than 255 is provided,
			    it does not bug but it makes no sence.
			 */
  int i=0, j=0, count=0 ; /* For loops */
  int temp1, temp2 ; /* Used during the conversion */
  int temp3 = *number ;

  /* Conversion from number to hexadecimal */
  while( (int) temp3 ! = 0 )
    { temp1 = temp3 % 16 ;
      temp3 = (int) (temp3 / 16) ;
      arr[count++] = temp1 ;
    }

  /* Re-set count to last index as it was increased 'count++' on the last step of while loop. */
  count--;
    
  /* Reverse the order of the results - change result indexes. */
  for (i=0, j=count ; i<=j ; i++, j--)
    { temp2 = arr[i] ;
      arr[i] = arr[j] ;
      arr[j] = temp2 ;
    }
  
  /* REMINDER : ‘unsigned char’ holds numbers from 0 to 255 (on most computers). */ 
  /* Consolidating two results (from indexes 0 and 1) in one number with the trick of *10/*100. */
  if ( (*number) >= 10 && (*number) <= 99)
    { *number = (arr[0]*10) + arr[1] * 1 ; }
  else if ( (*number) >= 100 && (*number) <= 999)
    { *number = (arr[0] * 100) + (arr[1] * 10) + arr[0] ; }
}

void
hexa_to_decimal (unsigned char* number)
{
  unsigned char a = 0, b = 0 ;
  /* Why is the below code commented ? */
  /*if ( *number >= 0 && *number <= 9 )
    { a = *number ; } */
  
  if( *number >= 10 && *number <= 99 )
    {
      a = *number % 10 ;
      b = *number / 10 ;
      b = b*16 ;
      *number = a + b ;
    }
}

#endif /* RTC_H_ */
