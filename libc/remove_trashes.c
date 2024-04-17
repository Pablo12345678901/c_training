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
#include <stdbool.h>
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

/* Functions */

/* Returning 1 will allow all files to be listed. */
int filter(const struct dirent *name)
{ return 1 ; }

/* Concatenate a number of 'count' string passed to the function. */
char* concat(int count, ...)
{
    va_list ap;
    int i;

    /* Find required length to store merged string */
    int len = 1; /* room for NULL */
    va_start(ap, count);
    for(i=0 ; i<count ; i++)
        len += strlen(va_arg(ap, char*));
    va_end(ap);

    /* Allocate memory to concat strings */
    char *merged = calloc(sizeof(char),len);
    int null_pos = 0;

    /* Actually concatenate strings */
    va_start(ap, count);
    for(i=0 ; i<count ; i++)
    {
        char *s = va_arg(ap, char*);
        strcpy(merged+null_pos, s);
        null_pos += strlen(s);
    }
    va_end(ap);

    return merged;
}

void error_to_stderr(int return_code, int output_code, char * message)
{
  /* Only if there is an error */
  if (errno != 0)
  {
    char * error_base = "\nERROR: " ;
    char * error_specific = strerror(errno) ;
    char * error_all = concat(3, error_base, error_specific, message) ;
    /* Print pretty error message */
    perror(error_all) ;
    /* Exit with error code provided by user */
    exit(output_code) ;
  }
}

char * copy_string(char * copied_string)
{
  int length_string = strlen(copied_string) + 1 ;
  char * copy = (char *)malloc(length_string * sizeof(char)) ;
  strcpy(copy,copied_string) ;
  return copy ;
}

bool file_exists (char *filename) {
  struct stat buffer;   
  return (stat (filename, &buffer) == 0);
}

void remove_directory_content(char * path_directory)
{
  int i ; /* For Loops */
  int return_code ; /* Error checking */

  /* Check whether the directory exists */
  if (file_exists(path_directory))
    {
      struct dirent **namelist;
      int n = scandir(path_directory, &namelist, filter, alphasort);
      if (n == -1)
	{
	  char * message_error = concat(2," ",path_directory) ; 
	  /* Error management */
	  error_to_stderr(n,3,message_error) ;
	}
      else
	{
	  for (i=0; i<n; i++)
	    { char * current_basename = namelist[i]->d_name ;
	      if (strcmp(current_basename, ".") != 0 && strcmp(current_basename, ".."))
		{
		  char * path_current = concat(3,path_directory,"/",current_basename) ;
		  char * message_error = concat(2," ",path_current) ;
		  /* Adapt action according to file type */
		  switch(namelist[i]->d_type)
		    {
		    case DT_DIR:
		      /* Go into this directory */
		      printf("Going into the directory \"%s\"\n", path_current) ;
		      char * path_subdirectory = copy_string(path_current) ;
		      remove_directory_content(path_subdirectory) ;
		      break;
		    case DT_REG:
		      /* Remove the file */
		      printf("Removing the file \"%s\"\n", path_current) ;
		      return_code = remove(path_current) ;
		      /* Error management */
		      error_to_stderr(return_code,4,message_error) ;
		      break;
		    case DT_LNK:
		      /* Remove the link */
		      printf("Removing the link \"%s\"\n", path_current) ;
		      remove(path_current) ;
		      return_code = remove(path_current) ;
		      /* Error management */
		      error_to_stderr(return_code,5,path_current) ;
		      break;
		    default :
		      ;
		    }
		}
	    }
	  free(namelist[i]);
	}
      free(namelist);
  
  /* Remove the directory */
  printf("Removing the directory \"%s\"\n", path_directory) ;
  return_code = rmdir(path_directory) ;
  /* Error management */
  char * message_error = concat(2," ",path_directory) ;
  error_to_stderr(return_code,6,message_error) ;
    }
  else
    { printf("\nThe directory \"%s\" does not exist. Please check the path if it was important to remove it.\n", path_directory) ; 
  }
}

int main()
{
  /* Set trashes path from environment values. */
  char * path_trash_main = getenv("TRASH_MAIN") ;
  char * path_trash_main_external_drive = getenv("TRASH_MAIN_EXTERNAL_DRIVE") ;
  char * path_trash_secondary_external_drive = getenv("TRASH_SECONDARY_EXTERNAL_DRIVE") ;

  /* Remove trashes content */
  remove_directory_content(path_trash_main) ;
  remove_directory_content(path_trash_main_external_drive) ;
  remove_directory_content(path_trash_secondary_external_drive) ;

  /* Showing user that everything went well until the end. */
  printf("\nAll trashes were emptied.\n") ; 
  return 0 ;
}
