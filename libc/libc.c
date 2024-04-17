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
#include <dirent.h>
#include <errno.h> /* Error management */
#include <fcntl.h>
#include <grp.h>
#include <limits.h>
#include <pwd.h>
#include <signal.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/times.h>
#include <termios.h>

/*
 To define later.
*/

/*
  Enhancements :
  - .
*/

int main()
{
  int i ; /* Used in several loops */
  
  char *ptr_username =  getlogin() ; /* Get the name of current user logged. */
  /* Show which user is currently logged. */
  printf("The current user is (reading pointer of char*) : \"%s\".\n", ptr_username) ;

  /* Getting a length and printing it. */
  int length_username = strlen(ptr_username) ; /* Get the length of a string from its pointer by computing its size until ptr NULL */
  printf("\nThe lenght of the username \"%s\" is %d.\n", ptr_username, length_username) ;

  /* Printing all the letters by looping on pointer */
  printf("\n") ; /* Esthetic */
  for (i=0; i<length_username; i++)
    { printf("Letter %d : %c\n", i, *(ptr_username++)) ;
  }
  printf("\n") ; /* Esthetic */

  int user_user_id , game_user_id ;
  user_user_id = getuid ();
  printf("user_user_id = %d\n", user_user_id) ;
  game_user_id = geteuid ();
  printf("game_user_id = %d\n", game_user_id) ;

  /*abort() ;/* /* Brutal end of program */
  
  /* Deleting a file */
  char * path_tmp_file =  "/home/incognito/Desktop/dev/c_training/libc/libc.o" ;
  printf("\nDeleting the file located \"%s\".\n", path_tmp_file) ; 
  unlink(path_tmp_file) ;

  /* Playing with strcpy and strcat */
  char * ptr_dummy_first = "This is the first pointer dummy message" ;
  int length_dummy_first = strlen(ptr_dummy_first) ;
  /*char ptr_dummy_second[] = ", but of course it with the second dummy message, we can learn how works the function \"strcat\"" ; */
  char * ptr_dummy_second = ", but of course it with the second dummy message, we can learn how works the function \"strcat\"" ;
  int length_dummy_second = strlen(ptr_dummy_second) ;
  int length_strcat_wished = length_dummy_first + length_dummy_second + 1 ;
  char * ptr_enhanced = (char *) malloc(length_strcat_wished * sizeof(char)) ;
  printf("") ; /* Esthetic */
  /* strcpy copy from source to destination and replace its content. But the source keep the content too. */
  printf("Created ptr_enhanced with memory allocation (malloc) os size %d sizeof(char) at the adress \"%p\".\n", length_strcat_wished) ; 
  strcpy(ptr_enhanced, ptr_dummy_first) ;
  /* strcat copy from source to destination end and remove original content. */
  printf("After copying the value of ptr_dummy_first into it, its value is now : \n\"%s\" \nwhile the value of the ptr_dummy_first is still \n\"%s\".\n\n", ptr_enhanced, ptr_dummy_first) ;
  strcat(ptr_enhanced, ptr_dummy_second) ;
  printf("Now, strcat concatenante the ptr_enhanced with the second pointer and its value is now : \n\"%s\".\n", ptr_enhanced) ;
  free(ptr_enhanced) ; /* Freeing memory */
  
  /* Showing user that everything went well until the end. */
  printf("\nEnd of script.\n") ;
  return 0 ;
}
