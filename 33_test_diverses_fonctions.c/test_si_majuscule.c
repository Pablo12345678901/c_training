#include <stdio.h>
#include <ctype.h>

int main()
{   int i ;
    char carac_3[9] =
        {
            ' ', // l'espace
            '\t', // la tabulation horizontale
            '\n', // la fin de ligne 
            '\r', // le retour chariot 
            '\v', // la tabulation verticale 
            '\f', // le changement de page
            'a',
            'A',
            '1',
        } ;
    for (i=0 ; i<9; i++)
    {
        if (isspace(carac_3[i])) printf("%d. %c est un caractère séparateur.\n", i+1, carac_3[i]) ;
        else printf("%d. %c n'est pas un caractère séparateur.\n", i+1, carac_3[i]) ;
    }
    printf("Fin du programme\n") ;
}