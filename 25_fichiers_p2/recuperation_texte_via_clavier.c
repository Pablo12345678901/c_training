#include <stdio.h>
//#include <string.h>
#include <stdlib.h>


#define BUFFERSIZE 10

//int main (int argc, char *argv[])
int main()
{
    char buffer[BUFFERSIZE];
    char chara ;
    printf("Tapez un message: \n");
    //
    fgets(buffer, BUFFERSIZE , stdin) ; // obtient un buffer depuis le clavier de max BUFFERSIZE
    /*
    while(fgets(buffer, BUFFERSIZE , stdin) != NULL)
    {
        printf("%s\n", buffer);
    }
    */

    printf("%s\n", buffer);
    fflush(stdin);
    scanf("%c", &chara) ;
    printf("%c", chara) ;
    return 0;
}