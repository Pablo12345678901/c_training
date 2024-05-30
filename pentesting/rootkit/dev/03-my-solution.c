/* Compilation useful macros */
#define _POSIX_C_SOURCE 200809L
#define _LARGEFILE_SOURCE
#define _LARGEFILE64_SOURCE
#define _FILE_OFFSET_BITS 64
#define _ISOC11_SOURCE
#define _GNU_SOURCE
/* Other macros */
#define MAX_LENGTH_FIRST_NAME 20
#define MAX_LENGTH_LAST_NAME 20
/* Libraries */
#include <stdio.h> /* Printf */
#include <stdlib.h> /* Memory */


/*
## Assignment 3
Prompt the user to input their first and last name and then print them a welcome message. Try storing the input as a char variable's value.

Easy Mode: Allocate an arbitrary amount of indices to your char array and pray to the gods that the user input fits.

Extra Credit: Dynamically allocate the array size of your char variable based on the length of the user's input.

## Example Output
```terminal_session
tokyo:~/LearningC/ # ./assignment3                                     
Enter your first name: Jimmy
Enter your last name: Smith
Hello Jimmy Smith!
```
*/


/* TODO :
   - dev function to read user input to fill array (static size)
   - defunction to read user input with dynamic memory allocation of the char *
   - remove head/trailing space if any within/outside those functions.
*/
void
read_input_to_array(int max_length, char output[max_length])
{
  char current_char = '\0' ;
  /* Looping on array */
  int i ;
  for (i=0; i<max_length; i++)
    { current_char = (char) fgetc(stdin) ;
      if (current_char != '\0')
	{ if (current_char == '\n') /* Replace the backline by NULL char */
	    { current_char = '\0' ;
	      *(output+i) = current_char ;
	      break ;
	    }
	  else
	    { if (i == (max_length-1))
		{ current_char = '\0' ; /* Set the last char as the NULL char */
		  *(output+i) = current_char ;
		  fflush(stdin) ; /* Flush the remaining content of stdin */
		  break ;
		}
	    }
	  *(output+i) = current_char ;
	  printf("Current char = '%c'. \n", *(output+i)) ;
	}
      else
	{ *(output+i) = current_char ;
	  break ;
	}
    }
}

int main()
{
  printf("\nDEBUG CODE NOT WORKING YET SEE SCRIPT...\n") ;
  exit(EXIT_FAILURE) ;
  
  printf("\nStatic version with fixed length of char arrays. \n") ;
  char first_name_static_length[MAX_LENGTH_FIRST_NAME] ;
  char last_name_static_length[MAX_LENGTH_LAST_NAME] ;
  printf("What is your first name ? -> ") ;
  read_input_to_array(MAX_LENGTH_FIRST_NAME, first_name_static_length) ;
  printf("What is your last  name ? -> ") ;
  read_input_to_array(MAX_LENGTH_LAST_NAME, last_name_static_length) ;
  printf("\n") ; /* Esthetic */
  printf("Hello '%s' '%s' ! \n", first_name_static_length, last_name_static_length) ;

  printf("\nDynamic version with char ptrs and dynamic memory allocation. \n") ;  
  /*   char current_char = fgetc(stdin) ; */
  char * first_name_dynamic_length = malloc(MAX_LENGTH_FIRST_NAME * sizeof(char)) ;
  char * last_name_dynamic_length = malloc(MAX_LENGTH_LAST_NAME * sizeof(char)) ;

  first_name_dynamic_length = "Daniel" ;
  last_name_dynamic_length = "Da sanchesta" ;
  
  printf("What is your first name ? -> ") ;
  printf("What is your last  name ? -> ") ;
  printf("\n") ; /* Esthetic */
  printf("Hello '%s' '%s' ! \n", first_name_dynamic_length, last_name_dynamic_length) ;
  
  /* Showing user that everything went well until the end. */
  printf("\nEnd of script.\n") ;
  printf("\n") ; /* Esthetic */
  return 0 ;
}
