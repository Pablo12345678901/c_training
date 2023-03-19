#include <stdio.h>

int main()
{   int i, min, max ;
    struct etat
    {
        unsigned oui : 3 ; // intervalle de 3 bits en unsigned = 2^3 = [0;7]
        unsigned babe : 4 ;
        int bonjour : 6 ; // intervalle de 6 bits en signed = (2^6)/2-1 = [-32;31]
        int s : 1 ;
        int non : 3 ; 
    } mot ;

    mot.oui = 0 ;
    mot.bonjour = 0 ;
    // SUR 3 BITS NON SIGNES
    printf("\nDémonstration de l'intervalle sur 3 bits non-signés : \n") ;
    min = mot.oui ;
    max = mot.oui ;
    for (i=0; i<10; i++)
    {
        min =  min <= mot.oui ? min : mot.oui ;
        max =  max >= mot.oui ? max : mot.oui ;
        printf("i = %d. mot.oui = %d\n", i, mot.oui) ;
        mot.oui++ ; 
    }
    printf("L'intervalle va de %d à %d.\n", min, max) ;
    // SUR 6 BITS SIGNES
    printf("\nDémonstration de l'intervalle sur 6 bits signés: \n") ;
    min = mot.bonjour ;
    max = mot.bonjour ;
    for (i=0; i<70; i++)
    {
        min =  min <= mot.bonjour ? min : mot.bonjour ;
        max =  max >= mot.bonjour ? max : mot.bonjour ;
        printf("i = %d. mot.oui = %d\n", i, mot.bonjour) ;
        mot.bonjour++ ; 
    }
    printf("L'intervalle va de %d à %d.\n", min, max) ;
}