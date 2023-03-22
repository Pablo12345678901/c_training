#include <stdio.h>
#include <ctype.h>

int main()
{   int i ;
    char carac_lettre_min, carac_pas_lettre_min_1, carac_pas_lettre_min_2 ;
    carac_lettre_min = 'z' ;
    carac_pas_lettre_min_1 = 'Z' ;
    carac_pas_lettre_min_2 = '3' ;
    char carac_3[3] = {carac_lettre_min, carac_pas_lettre_min_1, carac_pas_lettre_min_2} ;
    for (i=0 ; i<3; i++)
    {
        if (islower(carac_3[i])) printf("%c est une lettre minuscule.\n", carac_3[i]) ;
        else printf("%c n'est pas une lettre minuscule.\n", carac_3[i]) ;
    }
    printf("Fin du programme\n") ;
}