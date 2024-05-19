/* Macro */
#define _POSIX_C_SOURCE 200809L
#define _LARGEFILE_SOURCE
#define _LARGEFILE64_SOURCE
#define _FILE_OFFSET_BITS 64
#define _ISOC11_SOURCE
#define _GNU_SOURCE
/* Standard libraries */
#include <stdarg.h> /* ARGC, ARGV[] */
#include <stdio.h> /* Printf */
#include <stdlib.h> /* malloc and other memory functions */
/* Libc libraries */
#include <assert.h> /* Asserting expression and exit if error occurs */
#include <errno.h> /* Error management */
#include <limits.h> /* Some system limits as 'PATH_MAX' */
#include <sys/resource.h> /* Some resources system limits */
#include <string.h> /* 'str...' functions */

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
  /* Showing user the beggining of script - because if gcc is provided the '-v' option, a lot of output is written before script. */
  printf("\nStart of script.\n") ;

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


  printf("\nPrinting some limits than can cause error if not respected...\n") ;
  /* "-- Macro: int EMFILE
     “Too many open files.” The current process has too many files open
     and can’t open any more.  Duplicate descriptors do count toward
     this limit." */
  printf("\nThe maximum number of open files that the current process can manage without launching 'EMFILE' error is : \nRLIMIT_NOFILE = %d \n", RLIMIT_NOFILE) ;
  /* -- Macro: int PATH_MAX
     The uniform system limit (if any) for the length of an entire file
     name (that is, the argument given to system calls such as ‘open’),
     including the terminating null character.
     *Portability Note:* The GNU C Library does not enforce this limit
     even if ‘PATH_MAX’ is defined. */
  printf("\nThe maximum size of a path should theorically be PATH_MAX = %d chars\nHowever, on the GNU system, it is not enforced even if limit is set. \n", PATH_MAX) ;
  /* ‘RLIMIT_NPROC’
     The maximum number of processes that can be created with the same
     user ID. If you have reached the limit for your user ID, ‘fork’
     will fail with ‘EAGAIN’.  *Note Creating a Process::. */
  printf("\nThe maximum number of processes that can be created with the same user ID is RLIMIT_NPROC = %d \n", RLIMIT_NPROC) ;
  
  /* Showing user that everything went well until the end. */
  printf("\nEnd of script.\n") ;
  return 0 ;
}
