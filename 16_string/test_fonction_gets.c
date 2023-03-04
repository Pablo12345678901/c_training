#include <stdio.h>

char *gets_s(
   char *buffer,
   size_t sizeInCharacters
);

int main( void )
{
   char line[21]; // room for 20 chars + '\0'
   printf("Write a line : ") ;
   gets_s( line, 20 );
   printf( "The line entered was: %s\n", line );
}