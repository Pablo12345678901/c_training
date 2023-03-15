#include <stdio.h>
#define SYMBOLE 5

int main()
{
    #ifdef SYMBOLE
    printf("Le symbole a été défini et vaut %d.\n", SYMBOLE) ;
    #else
    printf("Le symbole n'a pas été défini.\n") ;
    #endif
}