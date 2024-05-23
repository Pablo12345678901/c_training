#include <string.h>
#include <stdio.h>
int main()
{   char chaine1[30] = "Bonjour" ; // besoin de réserver un emplacement plus grand
    // donc je ne peux pas passer par un pointeur pour la chaîne 1
    char * chaine2 = " Pétasse !" ;
    char chaine3[] = " Comment vas-tu ?" ;
    printf("Avant concaténation : %s\n", chaine1) ;
    strcat(chaine1, chaine2) ;
    printf("Après concaténation : %s\n", chaine1) ;
    printf("Avant concaténation : %s\n", chaine1) ;
    strncat(chaine1, chaine3, 5) ;
    printf("Après concaténation : %s\n", chaine1) ;
}
