#include <stdio.h>
#include <ctype.h>

int main()
{   int i ;
    char carac_carac, carac_int, carac_ni_carac_ni_int ;
    carac_carac = 'a' ;
    carac_int = '1' ;
    carac_ni_carac_ni_int = '\n' ;
    char carac_3[3] = {carac_carac, carac_int, carac_ni_carac_ni_int} ;
    for (i=0 ; i<3; i++)
    {
        if (isalnum(carac_3[i])) printf("%c est une lettre ou un chiffre.\n", carac_3[i]) ;
        else printf("%c n'est ni une lettre ni un chiffre.\n", carac_3[i]) ;
    }
    printf("Fin du programme\n") ;
}