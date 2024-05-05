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


void
printf_simulation(int dummy_first_arg, ...)
{
    va_list variable_number_arguments_list; /* Declaration of argument pointer */
    int i; /* Used in loops */
    int message_total_length = 1; /* room for NULL */
    int number_of_arguments = 0 ; /* Counter for arguments */
    
    /* Initialize the list of arguments by providing the first one */
    va_start(variable_number_arguments_list, dummy_first_arg); 

    /* Get the size of the argument list = sum of size of each arguments = sum of char numbers */
    int number_of_char_to_get = sizeof(va_list) ;
    
    /* Process arguments while not reaching the size */
    int number_of_char_already_processed = 0 ;
    int current_argument_length = 0 ;
    while (number_of_char_already_processed<=number_of_char_to_get)
      { /* Get the current argument */
	char * current_argument = va_arg(variable_number_arguments_list, char*) ;
	number_of_arguments++ ; /* Increase the number of arguments each time one is processed */
	current_argument_length = strlen(current_argument) ;
	message_total_length += current_argument_length ;
	number_of_char_already_processed += current_argument_length ;
      }
    
    /* Indicates that I finished to process the argument list with the 'va_end' function */
    va_end(variable_number_arguments_list); 

    /* Allocate memory to concat strings */
    char *merged = calloc(sizeof(char),message_total_length);

    /* Initialize the list of arguments by providing the first one */
    va_start(variable_number_arguments_list, dummy_first_arg); 

    /* Actually concatenate strings */
    int null_pos = 0 ;
    for(i=0 ; i<number_of_arguments; i++)
    { char * current_argument = va_arg(variable_number_arguments_list, char*);
      strcpy(merged+null_pos, current_argument);
      null_pos += strlen(current_argument) ; /* Keep the position of current nul char by adding length of current argument. */
    }

    /* Indicates that I finished to process the argument list with the 'va_end' function */
    va_end(variable_number_arguments_list); 

    /* Print char by char the message to stdout.
       End 1 char before total length as last char is nul char '\0' and it has no to be printed. */
    int current_char ;
    for (current_char=0; current_char<message_total_length-1; current_char++)
      { putchar(*(merged+current_char)) ; 
      }
}

int main(int ARGC, char *ARGV[])
{
  int number_of_arguments = 0 ;
  printf_simulation(number_of_arguments, "Hey,", " ", "this", " ", "is", " ", "a", " ", "dummy", " ", "message.\n") ;
  
  /* Showing user that everything went well until the end. */
  printf("\nEnd of script.\n") ;
  return 0 ;
}
