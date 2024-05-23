#include <stdlib.h>
#include <stdio.h>
#define SIZE_1 10
#define SIZE_2 12

int main()
{   int * pointeur_sur_int_1, * pointeur_sur_int_2 ;
    int int_1 = 100 ;
    int int_2 = 1 ;
    int i ;
    //
    pointeur_sur_int_1 = malloc(SIZE_1*sizeof(int)) ;
    printf("Création pointeur 1 en %p.\n", pointeur_sur_int_1) ;
    printf("Remplissage zone pointeur 1.\n") ;
    for (i=0; i<SIZE_1 ; i++)
        {   *(pointeur_sur_int_1+i) = int_1;
            int_1++ ; // Changement de char à chaque boucle - esthétique
        }
    printf("Affichage zone remplie pointeur 1\n") ;
    for (i=0; i<SIZE_1 ; i++) printf("%2d. %d\n", i, *(pointeur_sur_int_1+i)) ; // affichage zone remplie
    printf("\n") ;
    //
    printf("Libération mémoire espace du 1er pointeur.\n") ;
    free(pointeur_sur_int_1) ;
    printf("Utilisation de calloc\n") ;
    pointeur_sur_int_2 = calloc(SIZE_2, sizeof(int)) ;
    printf("Création pointeur 2 en %p à la place du 1er.\n", pointeur_sur_int_2) ;
    printf("Remplissage zone pointeur 2.\n") ;
    for (i=0; i<SIZE_2 ; i++)
        {   *(pointeur_sur_int_2+i) = int_2 ;
            int_2++ ; // Changement de char à chaque boucle - esthétique
        }
    printf("Affichage zone remplie pointeur 2.\n") ;
    for (i=0; i<SIZE_2 ; i++) printf("%2d. %d\n", i, *(pointeur_sur_int_2+i)) ; // affichage zone remplie
    printf("\n") ;
}