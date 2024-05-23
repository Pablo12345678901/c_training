#include <stdio.h>
#include <ctype.h>

int main()
{   int i ;
    char carac_lettre, carac_pas_lettre, carac_pas_lettre_2 ;
    carac_lettre = 'z' ;
    carac_pas_lettre = '1' ;
    carac_pas_lettre_2 = '\n' ;
    char carac_3[3] = {carac_lettre, carac_pas_lettre, carac_pas_lettre_2} ;
    for (i=0 ; i<3; i++)
    {
        if (isalpha(carac_3[i])) printf("%c est une lettre.\n", carac_3[i]) ;
        else printf("%c n'est pas une lettre.\n", carac_3[i]) ;
    }
    printf("Fin du programme\n") ;
}