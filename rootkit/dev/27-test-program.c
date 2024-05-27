/* Compilation useful macros */
#define _POSIX_C_SOURCE 200809L
#define _LARGEFILE_SOURCE
#define _LARGEFILE64_SOURCE
#define _FILE_OFFSET_BITS 64
#define _ISOC11_SOURCE
#define _GNU_SOURCE

/* Libraries */
#include <stdio.h>
#include <string.h> /* For 'strlen' */
#include <stdlib.h> /* For 'exit' */
#include <unistd.h> /* For 'write' */

/*
  TOPIC :
  This is a test file to be used to test a shared library that modify the behaviour of 'puts' and 'write' function when they are called with a specific string (and ONLY with this specific string).

   WARNING :
   The above shared library has to be loaded before running the compiled program with the command :
       export LD_PRELOAD=/PATH/TO/SHARED/LIBRARY

   EXAMPLE OF RUN COMMAND :

   OLD_LD_PRELOAD="$LD_PRELOAD" && \
   export LD_PRELOAD= && \
   gcc -ansi -Wall -ldl 27-my-solution.c -fPIC -shared -o 27-my-solution.so && \
   export LD_PRELOAD="$PWD"/27-my-solution.so && \
   gcc -ansi -Wall 27-test-program.c -o compiled-file && \
   ./compiled-file && \
   rm -rf compiled-file 27-my-solution.so && \
   export LD_PRELOAD="$OLD_LD_PRELOAD" && \
   OLD_LD_PRELOAD= ; \
   echo $? ;

   DETAIL :
   OLD_LD_PRELOAD="$LD_PRELOAD" && \ -> Saves the state of 'LD_PRELOAD' environment variable into the variable 'OLD_LD_PRELOAD'
   export LD_PRELOAD= && \ -> Unset 'LD_PRELOAD'			  
   gcc -ansi -Wall -ldl 27-my-solution.c -fPIC -shared -o 27-my-solution.so && \ -> Compile the shared library.
   export LD_PRELOAD="$PWD"/27-my-solution.so && \ -> Set 'LD_PRELOAD' to the new shared library.
   gcc -ansi -Wall 27-test-program.c -o compiled-file && \ -> Compile this program.
   ./compiled-file && \ -> Run it (using the new library).
   rm -rf compiled-file 27-my-solution.so && \ -> Remove both compiled files.
   export LD_PRELOAD="$OLD_LD_PRELOAD" && \ -> Re-set 'LD_PRELOAD' to its initial state.
   OLD_LD_PRELOAD= ; \ -> Unset 'OLD_LD_PRELOAD
   echo $? ; -> If all of the above commands went well, '0' is outputted in a newline. This makes it easy to catch error even if a long command (with a lot of '&&' = 'and's) is runned.
   
   WARNING :
   Remind to reset the LD_PRELOAD variable to its precedent state if not using the above command.   
*/

int main()
{
  /* Defining the matching and non-matching string that will or not trigger a different behaviour defined within a shared library provided to the environment with the bash command (see detailed remarks above) :
     export LD_PRELOAD=/PATH/TO/SHARED/LIBRARY
  */
  char * string_matching = "Hello, world !n" ;
  char * string_not_matching = "Hello, world !\n" ;
  /* Size used by 'write' function to 'write' X bytes */
  size_t size_of_string_matching = strlen(string_matching) * sizeof(char) ; /* As the null char is not written, no need to add '+1' to strlen */
  size_t size_of_string_not_matching = strlen(string_not_matching) * sizeof(char) ;

  printf("\n") ; /* Esthetic */
  
  /* Using 'puts' to show that depending on the message used, the behaviour will not be the same - that is to say string replacement take place in the second call.
   */
  /* First call - behaviour expected */
  printf("\n-> First call of 'puts' with non-matching string \n\n\t%s\n", string_not_matching) ;
  printf("\t") ; /* Esthetic */
  puts(string_not_matching) ;
  printf("-> So far so good - both string are the same. \n") ;
  printf("\n------------------------------------------\n") ; /* Esthetic */
  /* Second call - behaviour non expected */
  printf("\n-> Second call of 'puts' with matching string \n\n\t%s\n", string_matching) ;
  printf("\t") ; /* Esthetic */
  puts(string_matching) ;
  printf("\n-> As you can see, the string was replaced because of the call of my personal 'puts' function... \n") ;

  printf("\n------------------------------------------\n") ; /* Esthetic */

  printf("\nSame job for 'write' function.\n") ;
  /* Get the file descriptor for stdout */
  int fileno_stdout = fileno(stdout) ;
  /* Test that no error was returned by 'fileno' (error = -1) */
  if (fileno_stdout != -1)
    { /* First call - behaviour expected */
      printf("\n-> First call of 'write' with non-matching string \n\n%s\n", string_not_matching) ;
      write(fileno_stdout, string_not_matching, size_of_string_not_matching) ;
      printf("\n-> So far so good - both string are the same. \n") ;
      printf("\n------------------------------------------\n") ; /* Esthetic */
      /* Second call - behaviour non expected */
      printf("\n-> Second call of 'write' with matching string \n\n%s\n", string_matching) ;
      write(fileno_stdout, string_matching, size_of_string_matching) ;
      printf("\n\n-> As you can see, the string was replaced because of the call of my personal 'write' function... \n") ;
        printf("\n------------------------------------------\n") ; /* Esthetic */
    }
  else
    { /* Basic error showing and exit with failure - not pretty and fast written as it is not the main target of this script to manage errors. */
      fprintf (stderr, "ERROR : could not get file descriptor for stdout.\n") ;
      exit(EXIT_FAILURE) ;
    }
  /* Showing user that everything went well until the end. */
  printf("\nEnd of script.\n\n") ;
  return 0 ;
}
