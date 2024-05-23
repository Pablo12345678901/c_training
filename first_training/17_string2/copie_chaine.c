#include <stdio.h>
#include <string.h>

int main()
{   char chaine1[20] = "1234567890" ;
    char * chaine2 = " Oussama" ;
    char * chaine3 = " Bim Labim" ;
    printf("AVANT modif : %s\n", chaine1) ;
    strcpy(chaine1, chaine2) ;
    printf("APRES 1ère modif %s\n", chaine1) ;
    strncpy(chaine1, chaine3, 5) ;
    printf("APRES 2ème modif %s\n", chaine1) ;
}