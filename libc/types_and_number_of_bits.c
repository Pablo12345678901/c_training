/* Macro */
#define _POSIX_C_SOURCE 200809L /* If you define this macro to a value greater than or equal to
     ‘200809L’, then the functionality from the 2008 edition of the
     POSIX standard (IEEE Standard 1003.1-2008) is made available. */ 
#define _LARGEFILE_SOURCE
#define _LARGEFILE64_SOURCE
#define _FILE_OFFSET_BITS 64
#define _ISOC11_SOURCE /*      If this macro is defined, ISO C11 extensions to ISO C99 are
			       included. */
#define _GNU_SOURCE
/* Standard libraries */
#include <math.h> /* WARNING :
		     'gcc' compilation with '-lm' option is required to precise that the 'libm' has to be included as it is not part of 'libc' */
#include <stdarg.h>
/* Libc libraries */
#include <float.h> /* As limits.h but for float numbers */
#include <grp.h>
#include <limits.h> /* Contains the limits of min/max values for each type */
#include <stdio.h> 
#include <stdlib.h>
#include <string.h>

#define VAR0 char

int main(int ARGC, char *ARGV[])
{
  int i ; /* For loops */
  
  printf("\nThe value of %s is %d.\n", "CHAR_BIT", CHAR_BIT) ; /* CHAR_BIT : each type use a multiple of this number as bits width. */
  
  /* From libc doc : to get the number of bits used by a type :
     sizeof (TYPE) * CHAR_BIT */
  short int number_of_bits_used_for_type_unsigned_char = sizeof (unsigned char) * CHAR_BIT ;
  short int number_of_bits_used_for_type_signed_char = sizeof (signed char) * CHAR_BIT ;
  short int number_of_bits_used_for_type_char = sizeof (char) * CHAR_BIT ;
  short int number_of_bits_used_for_type_short_int = sizeof (short int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_short_unsigned_int = sizeof (short unsigned int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_int = sizeof (int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_unsigned_int = sizeof (unsigned int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_long_signed_int =  sizeof (long signed int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_long_unsigned_int =  sizeof (long unsigned int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_long_long_signed_int =  sizeof (long long signed int) * CHAR_BIT ;
  short int number_of_bits_used_for_type_long_long_unsigned_int =  sizeof (long long unsigned int) * CHAR_BIT ;
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
  printf("%22s : min %20d - max %20d on %3u bits. \n", "short unsigned int", 0, USHRT_MAX, number_of_bits_used_for_type_short_unsigned_int) ;

  /* min and max value are of the same type of their type name */
  printf("\n") ; /* Esthetic */
  printf("The below types min/max values are placed within the same type as the type name. \n") ;
  printf("%22s : min %20d - max %20d on %3u bits. \n", "int", INT_MIN, INT_MAX, number_of_bits_used_for_type_int) ;
  printf("%22s : min %20u - max %20u on %3u bits. \n", "unsigned int", 0, UINT_MAX, number_of_bits_used_for_type_unsigned_int) ;
  printf("%22s : min %20ld - max %20ld on %3u bits. \n", "long signed int", LONG_MIN, LONG_MAX, number_of_bits_used_for_type_long_signed_int) ;
  printf("%22s : min %20lu - max %20lu on %3u bits. \n", "long unsigned int", 0lu, ULONG_MAX, number_of_bits_used_for_type_long_unsigned_int) ;
  printf("%22s : min %20Ld - max %20Ld on %3u bits. \n", "long long signed int", LLONG_MIN, LLONG_MAX, number_of_bits_used_for_type_long_long_signed_int) ;
  printf("%22s : min %20Lu - max %20Lu on %3u bits. \n", "long long unsigned int", 0Lu, ULLONG_MAX, number_of_bits_used_for_type_long_long_unsigned_int) ;
  printf("%22s : min %20e - max %20e on %3u bits. \n", "float", FLT_MIN, FLT_MAX, number_of_bits_used_for_type_float) ;
  printf("%22s : min %20le - max %20le on %3u bits. \n", "double", DBL_MIN, DBL_MAX, number_of_bits_used_for_type_double) ;
  printf("%22s : min %20Le - max %20Le on %3u bits. \n", "long double", LDBL_MIN, LDBL_MAX, number_of_bits_used_for_type_long_double) ;

  /* ptrs */
  printf("\nAnd number of bits used for some pointer types...\n") ;
  printf("The number of bits used for the type %6s is %2u.\n", "char *", number_of_bits_used_for_type_ptr_char) ;
  printf("The number of bits used for the type %6s is %2u.\n", "int *", number_of_bits_used_for_type_ptr_int) ;

  /* Stuff about float numbers */
  printf("\nValue of some constants linked to float numbers...\n") ;
  printf("Base of float exposant : FLT_RADIX = %d \n", FLT_RADIX) ;
  printf("Number of digits in the mantissa : FLT_MANT_DIG = %d \n", FLT_MANT_DIG) ;

  printf("\n") ; /* Esthetic */
  printf("Demonstration of losing precision while computing with float numbers. \n") ;
  float radix = FLT_RADIX;
  float result_of_two_with_24_divisions = 1.0f + 1.0f \
    / radix / radix / radix / radix / radix / radix / radix / radix / radix / radix \
    / radix / radix / radix / radix / radix / radix / radix / radix / radix / radix \
    / radix / radix / radix / radix ;  /* Each line contains 10 times / radix except the last one. */
  /* float result_of_two_with_4_divisions = 1.0f + 1.0f / radix / radix / radix / radix ; */
  float result_of_two_with_4_divisions = 1.0f + 1.0f / radix / radix / radix / radix ;
  printf("Result of :\n1.0f + \n1.0f divided by 24 times by the number %f (that is to say, at number that tends to 0+.) \ngives the result %f \nwhile it should give a result very low near 1.0f but greater than it. \nTo demonstrate it, this is the result while dividing it only 4 times : %f. \n", radix, result_of_two_with_24_divisions, result_of_two_with_4_divisions) ;
  printf("The error is due to the maximum number of digits (FLT_MANT_DIG = %d) within the float mantissa. \n", FLT_MANT_DIG) ;

  printf("\n") ; /* Esthetic */

  printf("Demonstration with print of each number...\n") ;
  for (i=1; i<=FLT_MANT_DIG; i++)
    { float power_from_int_to_float = (float) i ;
      float result_for_each_step = 1.0f + (1.0f / powf(radix,power_from_int_to_float)) ;
      printf("The result of : \n1.0f + \n1.0f / %d ^ %d \n= %f \n", i, (int)radix, result_for_each_step) ;
      printf("\n") ; /* Esthetic */
    }
  
  /* Showing user that everything went well until the end. */
  printf("\nEnd of script.\n") ;
  printf("\n") ; /* Esthetic */
  return 0 ;
}
