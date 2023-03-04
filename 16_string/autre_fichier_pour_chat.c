#include <stdio.h>

char reponse[20] ;
extern char message[20] ;

int babe()
{
    while(1)
    {if (*message)
        printf("%s\n", message);}
}
/*
{   
    char * pointeur_vers_tableau ;
    pointeur_vers_tableau = message ;
    void remise_a_zero_tableau(void *pointeur_tableau, int n) ; // prototype
    while(1)
        {   printf("Votre message : ") ;
            gets(message) ;
            printf("Réponse : ") ;
            puts(message) ;
            remise_a_zero_tableau(pointeur_vers_tableau, 20*sizeof(char)) ;
        }
}
*/