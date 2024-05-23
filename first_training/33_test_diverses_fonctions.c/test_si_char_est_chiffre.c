#include <stdio.h>
#include <ctype.h>

int main()
{   int i ;
    char carac_chiffre, carac_pas_chiffre, carac_pas_chiffre_2 ;
    carac_chiffre = '9' ;
    carac_pas_chiffre = 'a' ;
    carac_pas_chiffre_2 = '\r' ;
    char carac_3[3] = {carac_chiffre, carac_pas_chiffre, carac_pas_chiffre_2} ;
    for (i=0 ; i<3; i++)
    {
        if (isdigit(carac_3[i])) printf("%c est un chiffre.\n", carac_3[i]) ;
        else printf("%c n'est pas un chiffre.\n", carac_3[i]) ;
    }
    printf("Fin du programme\n") ;
}