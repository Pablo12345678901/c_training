#include <stdio.h>

int creation_var(int ** pointeur_sur_int)
{   (**pointeur_sur_int)++ ;
    static int b ;
    b = ** pointeur_sur_int ;
    return b ;
}

int main()
{   int a, i ;
    a = i = 0 ;
    int * pointeur_sur_int ;
    pointeur_sur_int = &a ;
    // créer 3 variable de valeur 1, 2, 3
    int creation_var(int ** pointeur_sur_int) ; // prototype
    int tableau[3] ;
    for (i=0; i<3; i++)
    {
        tableau[i] = creation_var(&pointeur_sur_int) ;
        printf("Var %d crée à valeur : %d \n", i, tableau[i]) ;
    }
    printf("Fin de la fonction\n") ;
    printf("Hors fonction : \n") ;
    for (i=0; i<3; i++) printf("%d : %d\n", i, tableau[i]) ;
    printf("Fin du programme\n") ;
}