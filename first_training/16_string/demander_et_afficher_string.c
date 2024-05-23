#include <stdio.h>

void remise_a_zero_tableau(void *pointeur_tableau, int n)
{   int i ;
    char * pointeur_char = pointeur_tableau ;
    for ( i=0 ; i<n ; i++, pointeur_char++) *pointeur_char = 0 ; 
}

int main()
{   char message[20] ;   
    char * pointeur_vers_tableau ;
    pointeur_vers_tableau = message ;
    void remise_a_zero_tableau(void *pointeur_tableau, int n) ; // prototype
    while(1)
        {   printf("Votre message : ") ;
            gets(message) ;
            printf("Réponse : ") ;
            // fonction ici
            puts(message) ;
            remise_a_zero_tableau(pointeur_vers_tableau, 20*sizeof(char)) ;
        }
}