#include <string.h>
#include <stdio.h>
#include <stdlib.h>


int main()
{   int nb_int ;
    float nb_float ; 
    char chaine[50];
    nb_int = 3021 ;
    nb_float = 1.235643 ;
    sprintf(chaine, "%d pommes coûteront %.2f CHF.", nb_int, nb_float) ;
    printf("Voici la chaîne avec les nombres au bon format : \n") ;
    printf("%s", chaine) ;
}