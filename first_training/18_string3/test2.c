#include <string.h>
#include <stdio.h>
#include <stdlib.h>


int main(int nbarg, char * argv[])
{   int i ;
    if (nbarg>1)
        {for (i=0; i<nbarg ; i++) ;
        printf("Argument n°%d %s", i+1, argv[i]) ;}
    else
        printf("Aucun argument") ;
}
