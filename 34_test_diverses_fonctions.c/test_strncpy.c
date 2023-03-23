#include <stdio.h>
#include <string.h>

int main()
{
    char chaine_1[10] = "abcdef" ; // taille définie à 10
    char chaine_2[] = "ghi" ; // taille 4 avec le char nul
    char chaine_3[10] = "abcdef" ; // taille définie à 10
    char chaine_4[] = "ghi" ; // taille 4 avec le char nul
    printf("AVANT \nChaîne 1 : %s \nChaîne 2 : %s \n", chaine_1, chaine_2) ;
    printf("Copie de la chaîne 2 sur (longueur max de 3 char) sur la chaîne 1.\n") ;
    strncpy(chaine_1, chaine_2, 3) ;
    printf("APRES \nChaîne 1 : %s\n", chaine_1) ;
    printf("Commentaire : le char nul '\\0' n'a pas été copié donc les caractères 4, 5, 6 et 7 ('\\0') de la chaîne 1 font toujours partie de la chaîne.\n") ;
    printf("\n") ;
    printf("AVANT \nChaîne 3 : %s \nChaîne 4 : %s \n", chaine_3, chaine_4) ;
    printf("Copie de la chaîne 4 sur (longueur max de 3 char) sur la chaîne 3.\n") ;
    strncpy(chaine_3, chaine_4, 4) ;
    printf("APRES \nChaîne 3 : %s \n", chaine_3) ;
        printf("Commentaire : le char nul '\\0' a été copié donc les caractères 4, 5, 6 et 7 ('\\0') de la chaîne 3 ne font plus partie de la chaîne.\n") ;
}