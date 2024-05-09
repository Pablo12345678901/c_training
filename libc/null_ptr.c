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


int main(int ARGC, char *ARGV[])
{
  char * message = "This is a dummy message" ;
  
  /* Ways of create a null ptr */
  void * dummy_null_ptr_first = 0 ;
  void * dummy_null_ptr_second = (void *) 0 ;

  printf("\n") ; /* Esthetic */
  printf("First null pointer address (void * dummy_null_ptr_first = 0 ;) : %p VS other ptr %p of value \"%s\". \n", dummy_null_ptr_first, message, message) ;
  printf("First null pointer address (void * dummy_null_ptr_second = (void *) 0 ;) : %p \n", dummy_null_ptr_second) ;
  printf("Usual null pointer address (with macro NULL) %p \n", NULL) ;
    
  /* Showing user that everything went well until the end. */
  printf("\nEnd of script.\n") ;
  return 0 ;
}
