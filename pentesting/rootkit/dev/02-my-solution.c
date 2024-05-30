/* Compilation useful macros */
#define _POSIX_C_SOURCE 200809L
#define _LARGEFILE_SOURCE
#define _LARGEFILE64_SOURCE
#define _FILE_OFFSET_BITS 64
#define _ISOC11_SOURCE
#define _GNU_SOURCE
/* Libraries */
#include <stdio.h> /* Printf */

/*
## Assignment 2
Initialize and assign a value to an integer, float, and char variable. Then print each one with a sentence on a new line describing variable data type.

## Example Output
```terminal_session
tokyo:~/LearningC/ # ./assignment2                                      
5 is an integer!
3.140000 is a float!
Hello, World! is a char!
```
*/

int main()
{
  int dummy_int = 10 ;
  float dummy_float = 3.14 ;
  char dummy_char = 'P' ;

  printf("\n") ; /* Esthetic */
  printf("The int value is : %d \nThe float value is %f \nThe char value is '%c'. \n", dummy_int, dummy_float, dummy_char) ;
  
  /* Showing user that everything went well until the end. */
  printf("\nEnd of script.\n") ;
  printf("\n") ; /* Esthetic */
  return 0 ;
}
