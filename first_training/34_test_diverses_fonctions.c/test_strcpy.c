#include <stdio.h>
#include <string.h>

int main()
{   char chaine_1[50] = "Je suis un bogoss intergallactique" ;
    char chaine_2[50] = " et je m'appelle Pablo" ;
    char * pointeur_1, * pointeur_2 ;
    pointeur_1 = chaine_1 ;
    pointeur_2 = chaine_2 ;
    printf("AVANT \nChaîne 1 : %s \nChaîne 2 : %s \n", chaine_1, chaine_2) ;
    //strcpy(chaine_1, chaine_2) ; // avec chaines
    strcpy(pointeur_1, pointeur_2) ; // avec pointeurs
    printf("APRES \nChaîne 1 : %s \nChaîne 2 : %s \n", chaine_1, chaine_2) ;
}