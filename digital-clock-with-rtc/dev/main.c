/* main.c */
#include "app_change_time.h"
#include "../HAL/buttons.h"
#include "../HAL/SEGMENT_ONE.h"
#include "../RTC_INITIAL_VALUES/RTC.h"

unsigned char secs, mins, hours ;
extern unsigned char sec_rtc, min_rtc, hour_rtc ;

int main()
{
  buttons_init() ; /* initiate the buttons pins */
  seg_init() ; /* initiate the 7 segment multiplexer */
  timer_init() ;
  
  /* Get the time from RTC first if there is time saved as if the device is unplugged */
  RTC_GET_TIME() ; 
  secs = sec_rtc ;
  mins = min_rtc ;
  hours = hour_rtc ;

  /* Infinite loop */
  while(1)
    {
      call_timer() ; /* check if a second passed */
      check_pressed() ; /* check if a button is pressed to adjust the time */
      print(mins, MIN, &update) ; /* display the min on the 7 segment. */
      print(hours, HOUR, &update) ; /* display hours on the 7 segment. */
    }
}




