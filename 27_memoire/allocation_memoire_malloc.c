#include <stdlib.h>
#include <stdio.h>

int main()
{   char * pointeur_sur_char ;
    int i ;
    pointeur_sur_char = malloc(50) ; // alloue 50 octets et retourne l'adresse
    // Utilisation de la zone créée
    for (i=0; i<50 ; i++) *(pointeur_sur_char+i) = 'x' ; // le char 'x' correspond à 1 octet
    for (i=0; i<50 ; i++) printf("%2d. %c\n", i, *(pointeur_sur_char+i)) ; // affichage zone remplie
}