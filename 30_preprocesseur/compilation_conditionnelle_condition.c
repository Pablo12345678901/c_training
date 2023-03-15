//#define VALEUR 5
//#define NB 3
#include <stdio.h>

int main()
{   
    #if (defined(VALEUR) && defined(NB))
        printf("Les 2 symboles sont définis :\nValeur : %10d\nNombre : %10d\n", VALEUR, NB) ;
    #elif (defined(VALEUR) || defined(NB))
        printf("Un seul des deux symboles est défini.\n") ;
        // sous-test pour afficher lequel des 2 symbôle est défini ainsi que sa valeur.
        #if defined(VALEUR)
            printf("La valeur est définie à %10d\n", VALEUR) ;
            printf("Le nombre n'est pas défini.\n") ;
        #else
            printf("Le nombre est défini à %10d\n", NB) ;
            printf("La valeur n'est pas définie.\n") ;
        #endif
    #else
        printf("Aucun des 2 symboles n'est défini.\n") ;
    #endif
        printf("\nFin du programme\n") ;
}