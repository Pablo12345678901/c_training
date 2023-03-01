#include <stdio.h>
#define CONSTANTE 10

void remise_a_zero_zone_ou_objet(void *pointeur_objet, int n)
{   int i ;
    char * pointeur_char = pointeur_objet ;
    for ( i=0 ; i<n ; i++, pointeur_char++) *pointeur_char = 0 ; 
}

int main()
{   int t[CONSTANTE], i = 0, b = 0, * p ;
    double nb_double = 125.678564 ;
    void remise_a_zero_zone_ou_objet(void *pointeur_objet, int n) ; // prototype fonction
    printf("Génération tableau : \n") ;
    b = 50 ;
    for (p=t, i=0 ; i<CONSTANTE ; i++, p++)
    {   *p = b ;
        printf("t[%d] = %d\n", i, t[i]) ;
        b+= 1 ;
    }
    printf("Mise à zéro du tableau : \n") ;
    remise_a_zero_zone_ou_objet(t, CONSTANTE*sizeof(int)); // mise à zéro
    for (i=0 ; i<CONSTANTE ; i++) printf("t[%d] = %d\n", i, t[i]) ; // affichage du tableau remis à 0
    printf("Nombre de type double = %f.\n", nb_double);
    remise_a_zero_zone_ou_objet(&nb_double, sizeof(double)) ; // mise à zéro
    printf("Nombre de type double = %f mise à 0.\n", nb_double) ;
}

