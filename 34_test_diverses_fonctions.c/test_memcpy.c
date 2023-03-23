#include <string.h>
#include <stdio.h>

int main()
{   int nb_octets, nb_1, nb_2 ;
    nb_1 = 10 ;
    nb_2 = 20 ;
    int * pointeur_sur_int_1, * pointeur_sur_int_2;
    pointeur_sur_int_1 = &nb_1 ;
    pointeur_sur_int_2 = &nb_2 ;
    char chaine_1[30] = "Bonjour" ;
    char chaine_2[30] = "Blablabla" ;
    char * pointeur_sur_chaine_1, * pointeur_sur_chaine_2 ;
    pointeur_sur_chaine_1 = chaine_1 ;
    pointeur_sur_chaine_2 = chaine_2 ;
    nb_octets = 5 ;
    printf("AVANT\n") ;
    printf("Chaîne 1 : \"%s\" située à : %p\n", chaine_1, pointeur_sur_chaine_1) ;
    printf("Chaîne 2 : \"%s\" située à : %p\n", chaine_2, pointeur_sur_chaine_2) ;
    printf("\n") ;
    printf("Recopie de la mémoire sur %d octets de la chaîne 2 sur la chaîne 1.\n", nb_octets) ;
    memmove(chaine_1, chaine_2, nb_octets) ;
    printf("\n") ;
    printf("APRES\n") ;
    printf("Chaîne 1 : \"%s\" située à : %p\n", chaine_1, pointeur_sur_chaine_1) ;
    printf("Chaîne 2 : \"%s\" située à : %p\n", chaine_2, pointeur_sur_chaine_2) ;
    printf("\n") ;
    nb_octets += 5 ;
    printf("Recopie de la mémoire sur %d octets de la chaîne 2 sur la chaîne 1.\n", nb_octets) ;
    memmove(chaine_1, chaine_2, nb_octets) ;
    printf("\n") ;
    printf("FINAL\n") ;
    printf("Chaîne 1 : \"%s\" située à : %p\n", chaine_1, pointeur_sur_chaine_1) ;
    printf("Chaîne 2 : \"%s\" située à : %p\n", chaine_2, pointeur_sur_chaine_2) ;
    printf("\n") ;
    printf("EXEMPLE AVEC DES INT\n") ;
    nb_octets = 2 ;
    printf("AVANT\n") ;
    printf("NB 1 : %d situé à : %p\nNB 2 : %d situé à : %p\n", nb_1, pointeur_sur_int_1, nb_2, pointeur_sur_int_2) ;
    printf("\n") ;
    printf("Recopie de la mémoire sur %d octets du contenu nb 2 sur le contenu nb 1.\n", nb_octets) ;
    memmove(pointeur_sur_int_1, pointeur_sur_int_2, nb_octets) ;
    printf("\n") ;
    printf("APRES\n") ;
    printf("NB 1 : %d situé à : %p\n", nb_1, pointeur_sur_int_1) ;
    printf("\n") ;
}
