#include <stdio.h>
#include <string.h>

int main()
    {   int lgmax = 100 ;
        char blabla[lgmax] ;
        //printf("Longueur : %lu\n",strlen(blabla)),
        while(printf("\nTapez du texte et arrêtez en tapant enter :\n"), fgets(blabla, lgmax, stdin), (strlen(blabla)!=1 && blabla[0]!='\n'))
            {   printf("Vous avez tapé %s\n", blabla) ;
            }
        printf("Vous avez choisi d'arrêter la saisie") ;
    }