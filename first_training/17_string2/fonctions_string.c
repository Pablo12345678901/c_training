#include <stdio.h>
#include <string.h>

int main()
{   int longueur_chaine1, longueur_chaine2 ;
    char * pointeur_sur_char ;
    pointeur_sur_char = "Longueur de la chaine n 2" ;
    longueur_chaine1 = strlen("Bonjour") ;
    printf("Contenu chaîne 1 : Bonjour / Longueur : %d\n", longueur_chaine1) ;
    longueur_chaine2 = strlen(pointeur_sur_char) ;
    printf("Contenu chaîne 2 : %s / Longueur : %d\n", pointeur_sur_char, longueur_chaine2) ;
}
