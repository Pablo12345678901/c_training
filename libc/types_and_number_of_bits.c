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
#include <assert.h> /* Asserting expression and exit if error occurs */
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

#define VAR0 char

int main(int ARGC, char *ARGV[])
{
  printf("\nThe value of %s is %d.\n", "CHAR_BIT", CHAR_BIT) ; /* CHAR_BIT : each type use a multiple of this number as bits width. */
  
  /* From libc doc : to get the number of bits used by a type :
     sizeof (TYPE) * CHAR_BIT */
  short int number_of_bits_used_for_type_char = sizeof (char) * CHAR_BIT ;
  short int number_of_bits_used_for_type_short_int = sizeof (short int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_int = sizeof (int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_long_int =  sizeof (long int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_float =  sizeof (float) * CHAR_BIT ;
  short int number_of_bits_used_for_type_double =  sizeof (double) * CHAR_BIT ;
  short int number_of_bits_used_for_type_ptr_char = sizeof (char *) * CHAR_BIT ;
  short int number_of_bits_used_for_type_ptr_int = sizeof (int *) * CHAR_BIT ;

  printf("\nShowing the local number of bits for a few main types...\n\n") ;
  printf("The number of bits used for the type \"%s\" is %hd.\n", "char", number_of_bits_used_for_type_char) ;
  printf("The number of bits used for the type \"%s\" is %hd.\n", "short int", number_of_bits_used_for_type_short_int) ;
  printf("The number of bits used for the type \"%s\" is %hd.\n", "int", number_of_bits_used_for_type_int) ;
  printf("The number of bits used for the type \"%s\" is %hd.\n", "long int", number_of_bits_used_for_type_long_int) ;
  printf("The number of bits used for the type \"%s\" is %hd.\n", "float", number_of_bits_used_for_type_float) ;
  printf("The number of bits used for the type \"%s\" is %hd.\n", "double", number_of_bits_used_for_type_double) ;
  printf("The number of bits used for the type \"%s\" is %hd.\n", "char *", number_of_bits_used_for_type_ptr_char) ;
  printf("The number of bits used for the type \"%s\" is %hd.\n", "int *", number_of_bits_used_for_type_ptr_int) ;
  
  /* Showing user that everything went well until the end. */
  printf("\nEnd of script.\n") ;
  return 0 ;
}
