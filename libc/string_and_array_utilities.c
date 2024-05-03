/* Macro */
#define _POSIX_SOURCE 0
#define _POSIX_C_SOURCE 200809L
#define _LARGEFILE_SOURCE
#define _LARGEFILE64_SOURCE
#define _FILE_OFFSET_BITS 64
#define _ISOC11_SOURCE
#define _GNU_SOURCE
/* Standard libraries */
#include <stdarg.h>
#include <stdio.h> 
#include <stdlib.h>
#include <time.h>  
#include <unistd.h>
/* Libc libraries */
#include <dirent.h>
#include <errno.h> /* Error management */
#include <fcntl.h>
#include <grp.h>
#include <limits.h>
#include <pwd.h>
#include <regex.h>
#include <signal.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/times.h>
#include <termios.h>

int main()
{
  const char * string_string = "This is a dummy string" ;
  char string_array[30] = "This is a dummy string" ;

  const char * ptr_string_string = string_string ; /* Is not really needed a we assign a ptr to another. */
  const char * ptr_string_array = string_array ;

  short length_string_string = strlen(string_string) ;
  short length_string_array = strlen(string_array) ;

  short size_string_string = sizeof(string_string) ;
  short size_string_array = sizeof(string_array) ;

  short size_ptr_string_string = sizeof(ptr_string_string) ;
  short size_ptr_string_array = sizeof(ptr_string_array) ;

  /* Printing the sizes */
  printf("Comparing some size for a string placed within an array or a char* ptr.\n\n") ;

  printf("String placed within a ptr : \"%s\"\n", string_string) ;
  printf("Length      : %5hd\n", length_string_string) ;
  printf("Size object : %5hd\n", size_string_string) ;
  printf("Size ptr    : %5hd\n", size_ptr_string_string) ;
  printf("\n") ; /* Esthetic */
  
  printf("String placed within an array of size 30 : \"%s\"\n", string_array) ;
  printf("Length      : %5hd\n", length_string_array) ;
  printf("Size object : %5hd\n", size_string_array) ;
  printf("Size ptr    : %5hd\n", size_ptr_string_array) ;
  printf("") ; /* Esthetic */

  /* short security_max_length = 25 ; */ /* Toggle test values */
  short security_max_length = 15 ; /* Toggle test values */
  printf("\nSecurity : max length autorized (with 'strnlen') is %hd.\n", security_max_length) ;
  short security_length_string_string = strnlen(ptr_string_string, security_max_length) ; 
  printf("\nConsidering the security, the lenght of the string (ptr) \"%s\" that should be %hd is now %hd.\n", ptr_string_string, length_string_string ,security_length_string_string) ;
  
    /* Showing user that everything went well until the end. */
  printf("\nEnd of script.\n") ;
  return 0 ;
}
