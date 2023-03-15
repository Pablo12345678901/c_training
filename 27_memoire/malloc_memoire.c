#include <stdlib.h>
#include <stdio.h>

int main()
{   long * pointeur_sur_long ;
    int i ;
    pointeur_sur_long = malloc(50*sizeof(long)) ; // alloue en octets 50 * taille d'un long et retourne l'adresse
    // Utilisation de la zone créée
    for (i=0; i<50 ; i++) *(pointeur_sur_long+i) = 123 ;
    for (i=0; i<50 ; i++) printf("%2d. %ld\n", i, *(pointeur_sur_long+i)) ; // affichage zone remplie
    printf("Le pointeur équivaut à %p\n", pointeur_sur_long) ;
}