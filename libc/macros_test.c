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

/* Macro tests */
#define FIRST_OBJECT_LIKE_MACRO 1024
#define FIRST_FUNCTION_LIKE_MACRO()  print_dummy_message()
#define SECOND_FUNCTION_LIKE_MACRO_WITH_ARGUMENTS(FIRST_INT, SECOND_INT) print_addition_of_two_numbers(FIRST_INT, SECOND_INT)

/* Some function to test macros */
void
print_dummy_message()
{ printf("\nThis is a function that prints a dummy message.\n") ;
}

void
print_addition_of_two_numbers(int first_int, int second_int)
{ int sum_of_ints = first_int + second_int ;
  printf("\nThe sum of %d + %d = %d.\n", first_int, second_int, sum_of_ints) ;
}


int main(int ARGC, char *ARGV[])
{
  printf("\nThe value of my first object like macro is %d.\n", FIRST_OBJECT_LIKE_MACRO) ;
  printf("\nNow : calling my first function like macro...\n") ;
  FIRST_FUNCTION_LIKE_MACRO() ;
  printf("\nNow : calling my second function like macro with arguments...\n") ;
  SECOND_FUNCTION_LIKE_MACRO_WITH_ARGUMENTS(5, 10) ;
    
  /* Showing user that everything went well until the end. */
  printf("\nEnd of script.\n") ;
  return 0 ;
}
