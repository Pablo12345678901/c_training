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
## Assignment 1
Print "Hello, World!" to the terminal

## Example Output
```terminal_session
tokyo:~/LearningC/ # ./assignment1                                        
Hello, World!
```
*/

int main()
{
  printf("\nHello, World!\n") ;

  /* Showing user that everything went well until the end. */
  printf("\nEnd of script.\n\n") ;
  return 0 ;
}
