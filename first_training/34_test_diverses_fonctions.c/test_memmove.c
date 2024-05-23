#include <string.h>
#include <stdio.h>

int main()
{   int nb_octets ;
    char chaine_1[30] = "Bonjour Charlemagne !" ;
    char chaine_2[30] ;
    char * pointeur_sur_chaine_1, * pointeur_sur_chaine_2 ;
    pointeur_sur_chaine_1 = chaine_1 ;
    pointeur_sur_chaine_2 = pointeur_sur_chaine_1+3 ;
    nb_octets = 5 ;
    printf("EXEMPLE AVEC DES CHAINES DE CHAR\n") ;
    printf("AVANT\n") ;
    printf("Chaîne 1 : \"%s\" située à : %p\n", chaine_1, pointeur_sur_chaine_1) ;
    strcpy(chaine_2, pointeur_sur_chaine_2) ;
    printf("Chaîne 2 : \"%s\" située à : %p\n", chaine_2, pointeur_sur_chaine_2) ;
    printf("\n") ;
    printf("Recopie de la mémoire sur %d octets de la chaîne 2 sur la chaîne 1.\n", nb_octets) ;
    memmove(chaine_1, pointeur_sur_chaine_2, nb_octets) ;
    printf("\n") ;
    printf("APRES\n") ;
    printf("Chaîne 1 : \"%s\" située à : %p\n", chaine_1, pointeur_sur_chaine_1) ;
    strcpy(chaine_2, pointeur_sur_chaine_2) ;
    printf("Chaîne 2 : \"%s\" située à : %p\n", chaine_2, pointeur_sur_chaine_2) ;
    printf("\n") ;
}
