#include <stdlib.h>
#include <stdio.h>
#define SIZE_1 10
#define SIZE_2 3
#define SIZE_3 2

int main()
{   char * pointeur_sur_char_1, * pointeur_sur_char_2 ;
    int * pointeur_sur_int_3 ;
    char carac_1 = 'A' ;
    char carac_2 = '1' ;
    int int_3 = 1 ;
    int i ;
    //
    pointeur_sur_char_1 = malloc(SIZE_1*sizeof(char)) ;
    printf("Création pointeur 1 en %p.\n", pointeur_sur_char_1) ;
    printf("Remplissage zone pointeur 1.\n") ;
    for (i=0; i<SIZE_1 ; i++)
        {   *(pointeur_sur_char_1+i) = carac_1;
            carac_1++ ; // Changement de char à chaque boucle - esthétique
        }
    printf("Affichage zone remplie pointeur 1\n") ;
    for (i=0; i<SIZE_1 ; i++) printf("%2d. %c\n", i, *(pointeur_sur_char_1+i)) ; // affichage zone remplie
    printf("\n") ;
    //
    pointeur_sur_char_2 = malloc(SIZE_2*sizeof(char)) ;
    printf("Création pointeur 2 en %p.\n", pointeur_sur_char_2) ;
    printf("Remplissage zone pointeur 1.\n") ;
    for (i=0; i<SIZE_2 ; i++)
        {   *(pointeur_sur_char_2+i) = carac_2;
            carac_2++ ; // Changement de char à chaque boucle - esthétique
        }
    printf("Affichage zone remplie pointeur 2\n") ;
    for (i=0; i<SIZE_2 ; i++) printf("%2d. %c\n", i, *(pointeur_sur_char_2+i)) ; // affichage zone remplie
    printf("\n") ;
    //
    printf("Libération mémoire espace du 1er pointeur.\n") ;
    free(pointeur_sur_char_1) ;
    pointeur_sur_int_3 = malloc(SIZE_2*sizeof(int)) ;
    printf("Création pointeur 3 en %p à la place du 1er.\n", pointeur_sur_int_3) ;
    printf("Remplissage zone pointeur 3.\n") ;
    for (i=0; i<SIZE_2 ; i++)
        {   *(pointeur_sur_int_3+i) = int_3 ;
            int_3++ ; // Changement de char à chaque boucle - esthétique
        }
    printf("Affichage zone remplie pointeur 3.\n") ;
    for (i=0; i<SIZE_2 ; i++) printf("%2d. %d\n", i, *(pointeur_sur_int_3+i)) ; // affichage zone remplie
    printf("\n") ;
}