#include <stdio.h>
//#define SYMBOLE 5

int main()
{
    #ifndef SYMBOLE
    printf("Le symbole n'a pas été défini.\n") ;
    #else
    printf("Le symbole a été défini et vaut %d.\n", SYMBOLE) ;
    #endif
}