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
#include <float.h> /* As limits.h but for float numbers */
#include <grp.h>
#include <limits.h> /* Contains the limits of min/max values for each type */
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
  short int number_of_bits_used_for_type_unsigned_char = sizeof (unsigned char) * CHAR_BIT ;
  short int number_of_bits_used_for_type_signed_char = sizeof (signed char) * CHAR_BIT ;
  short int number_of_bits_used_for_type_char = sizeof (char) * CHAR_BIT ;
  short int number_of_bits_used_for_type_short_int = sizeof (short int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_unsigned_short_int = sizeof (unsigned short int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_int = sizeof (int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_unsigned_int = sizeof (unsigned int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_signed_long_int =  sizeof (signed long int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_unsigned_long_int =  sizeof (unsigned long int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_signed_long_long_int =  sizeof (signed long long int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_unisigned_long_long_int =  sizeof (unsigned long long int) * CHAR_BIT ;
  /* Float and double */
  short int number_of_bits_used_for_type_float =  sizeof (float) * CHAR_BIT ;
  short int number_of_bits_used_for_type_double =  sizeof (double) * CHAR_BIT ;
  short int number_of_bits_used_for_type_long_double =  sizeof (long double) * CHAR_BIT ;
  /* Ptrs */
  short int number_of_bits_used_for_type_ptr_char = sizeof (char *) * CHAR_BIT ;
  short int number_of_bits_used_for_type_ptr_int = sizeof (int *) * CHAR_BIT ;

  printf("\nPrinting the min and max value for each types\n") ;
  printf("\n") ; /* Esthetic */

  /* Numbers */
  /* min and max value are of type int */
  printf("The below types min/max values are placed within int values. \n") ;
  printf("%22s : min %20d - max %20d on %3u bits. \n", "signed char", SCHAR_MIN, SCHAR_MAX, number_of_bits_used_for_type_signed_char) ;
  printf("%22s : min %20d - max %20d on %3u bits. \n", "unsigned char", 0, UCHAR_MAX, number_of_bits_used_for_type_unsigned_char) ;
  printf("%22s : min %20d - max %20d on %3u bits. \n", "char", CHAR_MIN, CHAR_MAX, number_of_bits_used_for_type_char) ;
  printf("%22s : min %20d - max %20d on %3u bits. \n", "short int", SHRT_MIN, SHRT_MAX, number_of_bits_used_for_type_short_int) ;
  printf("%22s : min %20d - max %20d on %3u bits. \n", "unsigned short int", 0, USHRT_MAX, number_of_bits_used_for_type_unsigned_short_int) ;

  /* min and max value are of the same type of their type name */
  printf("\n") ; /* Esthetic */
  printf("The below types min/max values are placed within the same type as the type name. \n") ;
  printf("%22s : min %20d - max %20d on %3u bits. \n", "int", INT_MIN, INT_MAX, number_of_bits_used_for_type_int) ;
  printf("%22s : min %20u - max %20u on %3u bits. \n", "unsigned int", 0, UINT_MAX, number_of_bits_used_for_type_unsigned_int) ;
  printf("%22s : min %20ld - max %20ld on %3u bits. \n", "signed long int", LONG_MIN, LONG_MAX, number_of_bits_used_for_type_signed_long_int) ;
  printf("%22s : min %20lu - max %20lu on %3u bits. \n", "unsigned long int", 0, ULONG_MAX, number_of_bits_used_for_type_unsigned_long_int) ;
  printf("%22s : min %20Ld - max %20Ld on %3u bits. \n", "signed long long int", LLONG_MIN, LLONG_MAX, number_of_bits_used_for_type_signed_long_long_int) ;
  printf("%22s : min %20Lu - max %20Lu on %3u bits. \n", "unsigned long long int", 0, ULLONG_MAX, number_of_bits_used_for_type_unsigned_long_int) ;
  printf("%22s : min %20e - max %20e on %3u bits. \n", "float", FLT_MIN, FLT_MAX, number_of_bits_used_for_type_float) ;
  printf("%22s : min %20le - max %20le on %3u bits. \n", "double", DBL_MIN, DBL_MAX, number_of_bits_used_for_type_double) ;
  printf("%22s : min %20Le - max %20Le on %3u bits. \n", "long double", LDBL_MIN, LDBL_MAX, number_of_bits_used_for_type_long_double) ;

  /* ptrs */
  printf("\nAnd number of bits used for some pointer types...\n") ;
  printf("The number of bits used for the type %6s is %2u.\n", "char *", number_of_bits_used_for_type_ptr_char) ;
  printf("The number of bits used for the type %6s is %2u.\n", "int *", number_of_bits_used_for_type_ptr_int) ;
  
  /* Showing user that everything went well until the end. */
  printf("\nEnd of script.\n") ;
  printf("\n") ; /* Esthetic */
  return 0 ;
}
