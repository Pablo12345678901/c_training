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

void print_errno(void)
{ /* The errno code is stocked within the variable errno */
  printf("\nErrno value : %d \n", errno) ;
}

/* To get all error code with their meaning :
   1. Compile this file - and note its compile name.
   2. Comment all 'printf' messages.
   3. and run the below command from bash terminal :
   
       error_number=0; for ((i=1; i<140; i++)) ; do ./NAME_OF_COMPILED_FILE $i ; done 2>&1 | grep -v 'Aborted' | cut -d ':' -f 6 | while read MESSAGE; do { ((error_number++)) ; printf "ERROR CODE : %3d - meaning : %b\n" $error_number "$MESSAGE"; } ; done;

*/

int main(int ARGC, char *ARGV[])
{
  /* Set errno to 0 before using specific functions as for example : 'sqrt' or 'atan' */
  errno = 0 ;
  /* From (g)libc : 
     "There are a few library functions, like ‘sqrt’ and ‘atan’, that
     return a perfectly legitimate value in case of an error, but also
     set ‘errno’.  For these functions, if you want to check to see
     whether an error occurred, the recommended method is to set ‘errno’
     to zero before calling the function, and then check its value
     afterward."
  */
  
  print_errno() ; 

  /* If argv was provided */
  if (ARGV[1] != NULL)
    { /* Parse the value from string to long */
      int length_of_first_argument = strlen(ARGV[1]) + 1 ;
      char * rest_of_string_not_parsed = (char *) malloc(length_of_first_argument * sizeof(char)) ;
      long int long_int_from_string = strtol (ARGV[1], &rest_of_string_not_parsed, 0) ;
      printf("The string %s was evaluated to the long int %ld and the non parsed rest of string \"%s\".\n", ARGV[1], long_int_from_string, rest_of_string_not_parsed) ;
      
      /* Force conversion from long to int */
      errno = (int) long_int_from_string ;
      
      /* Perform the assertion of errno */
      printf("Set manually the errno to %d and then call 'assert_perror' that will print an error message (only if errno <> 0) before exiting.\n", errno) ;
      /* If non zero 'errno' is provided to assert_perror, error message is show and 'Aborted' is printed on the next line. */
      assert_perror(errno) ;
    }
  
  /* Showing user that everything went well until the end. */
  printf("\nEnd of script.\n") ;
  return 0 ;
}
