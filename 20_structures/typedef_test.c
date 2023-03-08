#include <stdio.h>

int main()
{   typedef int babe ;
    babe n, p ;
    n = 20, p = 30 ;
    printf("n = %d / p = %d\n", n, p) ;
    printf("Fin du test 1 \n\n") ;

    typedef int * pointeur_sur_int ;
    pointeur_sur_int pointeur1, pointeur2, pointeur3 ;
    int a = 5, b = 10, c ;
    pointeur1 = &a ;
    pointeur2 = &b ;
    pointeur3 = &c ;
    printf("AVANT : a = %d / b = %d\n", *pointeur1, *pointeur2) ;
    * pointeur3 = a ;
    * pointeur1 = b ;
    * pointeur2 = * pointeur3 ;
    printf("APRES : a = %d / b = %d\n", *pointeur1, *pointeur2) ;
    printf("Fin du test 2 \n\n") ;

    int i = 0 ;
    typedef int vecteur [5] ;
    int tableau_1[5] = {1, 2, 3, 4, 5} ;
    vecteur tableau_2 = {1, 2, 3, 4} ;
    for (i=0; i<5; i++)
    {   if (tableau_1[i] != tableau_2[i])
            {   printf("Test %d : Faux\n", i+1) ;
                break ;
            }
        printf("Test %d : OK\n", i+1) ;
    }
    printf("Fin du test 3 \n\n") ;

    // struct structure { int nombre ; char caractere ; float nombre_2 ;} ;
    // typedef struct structure structure1 ;
    typedef struct { int nombre ; char caractere ; float nombre_2 ;} structure1 ;
    structure1 structure_test1, structure_test2 ;
    structure_test1.nombre = 10 ;
    structure_test1.caractere = 'C' ;
    structure_test1.nombre_2 = 123.456 ;
    printf("Test1 :\nNombre = %d\nCaractère = %c\nNombre2 = %f\n", structure_test1.nombre, structure_test1.caractere, structure_test1.nombre_2) ;
    printf("Fin du test 4 \n\n") ;
}