/* Compilation useful macros */
#define _POSIX_C_SOURCE 200809L
#define _LARGEFILE_SOURCE
#define _LARGEFILE64_SOURCE
#define _FILE_OFFSET_BITS 64
#define _ISOC11_SOURCE
#define _GNU_SOURCE

/*------------------------------------------------------------*/
/* COMPILATION INSTRUCTIONS */
/*------------------------------------------------------------*/
 /*
   COMMAND :
       gcc -ansi -Wall -ldl this_file.c -fPIC -shared -o this_file.so

   OPTION DETAILED :
      -ansi :
          For portability.
      - Wall :
          Activate all warning. Recommended for good code writing.
      -ldl :
          Library designation for the linker. It tells the linker to find and
         link a file named libdl.so (or sometimes libdl.a). It has the same
         effect as placing a full path to the library in question in the same
         position of the command line.
    -fPIC :
         '-f' = Specific set of options used for compilation.
	 'PIC' stands for Position Independent Code.
	 If supported for the target machine, emit position-independent code,
	 suitable for dynamic linking and avoiding any limit on the size of
	 the global offset table. This option makes a difference on AArch64,
	 m68k, PowerPC and SPARC.
   -shared :
         Produce a shared object which can then be linked with other objects
         to form an executable.  Not all systems support this option.  For
         predictable results, you must also specify the same set of options
         used for compilation ('-fpic', '-fPIC', or model suboptions) when
         you specify this linker option.(1)
*/

/*------------------------------------------------------------*/

/* Libraries */
#include <dlfcn.h> /* For 'dlsym' function */
#include <stdio.h>
#include <string.h>
#include <unistd.h>

/*------------------------------------------------------------*/

/*
  The main target of this file is to create a shared library ('.so' file) to replace the syscall of 'write' function by another one depending on a condition.

  WARNING : the new functions declared have to perfectly match the real ones (return value and type of parameters) in order to be compatible for the linker. Than way, an executed binary will reference this on its first stop instead of continuing on to other shared libraries,

  To see the dynamic libraries used by a binary, type the command :
      ldd /PATH/TO/BINARY
      
  Example :
      ldd /run/current-system/profile/bin/ls
    	    linux-vdso.so.1 (0x00007ffe24fdd000)
	    libcap.so.2 => /gnu/store/ba5ri728kpa5fv314fav2id0nc3l0hsk-libcap-2.64/lib/libcap.so.2 (0x00007f18b7302000)
	    libc.so.6 => /gnu/store/ln6hxqjvz6m9gdd9s97pivlqck7hzs99-glibc-2.35/lib/libc.so.6 (0x00007f18b7106000)
	    libgcc_s.so.1 => /gnu/store/6ncav55lbk5kqvwwflrzcr41hp5jbq0c-gcc-11.3.0-lib/lib/libgcc_s.so.1 (0x00007f18b70ec000)
	    /gnu/store/ln6hxqjvz6m9gdd9s97pivlqck7hzs99-glibc-2.35/lib/ld-linux-x86-64.so.2 (0x00007f18b7310000)
in

  To see how the linker work and on what environment variables and paths it depends, see :
 - https://man7.org/linux/man-pages/man8/ld.so.8.html -> man page of 'ld.so, ld-linux.so - dynamic linker/loader'
  
  Additional sources of information : 
  - https://ketansingh.net/overview-on-linux-userland-rootkits/
  - https://blog.netspi.com/function-hooking-part-i-hooking-shared-library-function-calls-in-linux/
*/

/*------------------------------------------------------------*/

/* Definition of the string that will be replaced */
static char * string_matching = "Hello, world !n" ;
static char * string_replacement = "Goodbye, cruel world!n" ;

/* Re-define the function to customize it. The system will call it instead of the real one. */
int
puts(const char *message)
{
  int (*new_puts)(const char *message) ;
  int result ;
  new_puts = dlsym(RTLD_NEXT, "puts") ; /* Initialize the pointer to point to the next function occurence available within the search paths/variables. */
  if(strcmp(message, string_matching) == 0) /* 'n' is added at the end of the string to match to ensure that ONLY when voluntary testing the function is called */
    { /* 'puts' the replacement string instead */
      result = new_puts(string_replacement) ; }
  else
    { /* Else 'puts' the 'normal' string */
      result = new_puts(message) ; }
  return result ;
}

/* Re-define the function to customize it. The system will call it instead of the real one. */
ssize_t
write(int fildes, const void *buf, size_t nbytes)
{
  ssize_t (*new_write)(int fildes, const void *buf, size_t nbytes);
  ssize_t result;
  new_write = dlsym(RTLD_NEXT, "write"); /* Initialize the pointer to point to the next function occurence available within the search paths/variables. */

  /* If the string matches as certain template */
  if (strcmp(buf, string_matching) == 0) /* 'n' is added at the end of the string to match to ensure that ONLY when voluntary testing the function is called */
    { /* Measure size of the string */
      size_t size_of_string_replacement = strlen(string_replacement) * sizeof(char) ; /* No to add +1 to strlen as the null char will not be written. */
      /* 'write' the replacement string instead */
      result = new_write(fildes, string_replacement, size_of_string_replacement) ; }
  else
    { /* Else 'write' the 'normal' string */
      result = new_write(fildes, buf, nbytes) ; }
  return result;
}
