#include <stdio.h>
#define TAILLE 5

int main()
{   int i ; 
    struct copie_tableau {int tableau_int[TAILLE] ; } ;
    struct copie_tableau tableau_1, tableau_2 ;
    for (i=0; i<TAILLE; i++)
    {   printf("Remplissez l'élément %d du tableau avec un nombre entier ", i+1) ;
        scanf("%d", &tableau_1.tableau_int[i]) ;
    }
    printf("Fin de la saisie du tableau 1.\n") ;
    printf("Copie du tableau 1 dans le tableau 2.\n") ;
    tableau_2 = tableau_1 ;
    printf("Affichage du tableau 2 : \n") ;
    for (i=0; i<TAILLE; i++) printf("Élément %d : %d\n", i, tableau_2.tableau_int[i]) ;
    printf("Fin tableau 2\n") ;
}