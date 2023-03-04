#include <string.h>
#include <stdio.h>
#include <stdlib.h>


int main()
{   /*
    char chaine[10] = "Bonjour";
    printf("AVANT : %s\n", chaine) ;
    * (chaine+2) = 'x' ;
    printf("APRES : %s\n", chaine) ;
    */

    // /*
    char * chaine = "Bonjour";
    printf("AVANT : %s\n", chaine) ;
    *(chaine+2) = 'x' ;
    printf("APRES : %s\n", chaine) ;
    // */
}