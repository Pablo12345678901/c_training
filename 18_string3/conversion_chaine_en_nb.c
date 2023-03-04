#include <string.h>
#include <stdio.h>
#include <stdlib.h>


int main()
{   int nb_int ;
    long nb_long ;
    float nb_float ; 
    char chaine[30];

    // /*
    printf("Quel chaîne voulez-vous convertir en int ? > ") ;
    gets(chaine) ;
    nb_int = atoi(chaine) ;
    printf("Le nombre obtenu en convertissant la chaine %s en nombre est : %d\n", chaine, nb_int) ;
    // */
    // /*
    printf("Quel chaîne voulez-vous convertir en long ? > ") ;
    gets(chaine) ;
    nb_long = atol(chaine) ;
    printf("Le nombre obtenu en convertissant la chaine %s en nombre est : %ld\n", chaine, nb_long) ;
    // */
    printf("Quel chaîne voulez-vous convertir en float ? > ") ;
    gets(chaine) ;
    nb_float = atof(chaine) ;
    printf("Le nombre obtenu en convertissant la chaine %s en nombre est : %f\n", chaine, nb_float) ;
    // */
}

