#include <stdio.h>
#define VALEUR 5
#define macro(a, b, c) a*b-c

int main()
{   char nom[] = "joliejeunefille" ;
    printf("Mais quelle %d !\n", VALEUR) ;
    printf("Mais quelle %d !\n", macro(1, 2, 3)) ;
}