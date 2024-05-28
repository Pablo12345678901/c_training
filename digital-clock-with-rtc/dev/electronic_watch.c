/* Compilation useful macros */
#define _POSIX_C_SOURCE 200809L
#define _LARGEFILE_SOURCE
#define _LARGEFILE64_SOURCE
#define _FILE_OFFSET_BITS 64
#define _ISOC11_SOURCE
#define _GNU_SOURCE
/* Libraries */
#include <stdio.h>
#include <time.h>
#include <unistd.h> /* For 'sleep' function */

int
main()
{
  time_t currentTime ;
  struct tm* localTime ;

  /* Clock code */
  while (1)
    {
      /* Clear the previous time display */
      /* printf("\r"); */
      /* Get the current time */
      time(&currentTime) ;
      localTime = localtime(&currentTime) ;
      /* Display the current time in the format "HH:MM:SS" */
      printf("%02d:%02d:%02d\n", localTime->tm_hour, localTime->tm_min, localTime->tm_sec) ;
      /* Wait 1 second */
      sleep(1) ;
    }

  /* The return will never apply as infinite loop is set above. */ 
  return 0 ;
}
