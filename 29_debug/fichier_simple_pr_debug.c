#include <stdio.h>

int main()
{   int i, valeur, max ;
    valeur = 5 ;
    max = 10 ;
    float division ;
    printf("Début du programme\n") ;
    for(i=0 ; i<max; i++, valeur--)
    {   division = (float) i/valeur ;
        printf("La division de %d par %d donne %f\n", i, valeur, division) ;
    }
    printf("Fin du programme\n") ;
}