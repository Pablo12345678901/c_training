#include <stdio.h>
#include <stdarg.h>


int main(int nbarg, char * argv[])
{   int i ;
    printf("Mon nom de programme est : %s\n", argv[0]) ;
    if (nbarg>1) for (i=1 ; i<nbarg ; i++)
        printf("Argument %d : %s\n", i, argv[i]) ;
    else
        printf("Pas d'arguments.\n") ;
}