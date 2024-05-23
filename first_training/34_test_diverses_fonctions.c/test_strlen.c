#include <string.h>
#include <stdio.h>

int main()
{   int i ;
    char chaine_1[30] = "Bonjour" ;
    char chaine_2[30] = "Comme allez_vous ?" ;
    char * pointeur_sur_chaine_2 ;
    pointeur_sur_chaine_2 = chaine_2 ;
    int longueur_chaine_1, longueur_chaine_2 ;
    longueur_chaine_1 = strlen(chaine_1) ;
    printf("La chaîne 1 : \"%s\" mesure %d caractères de longueur.\n", chaine_1, longueur_chaine_1) ;
    longueur_chaine_2 = strlen(chaine_2) ;
    printf("La chaîne 2 : \"%s\" mesure %d caractères de longueur.\n", chaine_2, longueur_chaine_2) ;
}
