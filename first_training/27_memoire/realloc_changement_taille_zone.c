#include <stdlib.h>
#include <stdio.h>
#define SIZE_1 2
#define SIZE_2 3

int main()
    {   int i , valeur ;
        valeur = 10 ;
        // faire ensuite avec calloc
        /*
        */
        printf("\n") ;
        printf("création d'une structure de type point\n") ;
        struct point    {   int x ;
                                int y ;
                            } point_0 ;
        struct point * pointeur_1, * pointeur_2 ;
        printf("création de 2 pointeurs vers des structure de type point\n") ;
        printf("allocation de 2 point sur un espace de la mémoire\n") ;
        pointeur_1 = calloc(SIZE_1, sizeof(point_0)) ;
        printf("création et stockage des 2 points sur l'espace de la mémoire premier pointeur situé %p.\n\n", pointeur_1) ;
        pointeur_1->x = 100 ;
        pointeur_1->y = 200 ;
        (pointeur_1+1)->x = 300 ;
        (pointeur_1+1)->y = 400 ;
        printf("affichage des 2 points sur cette espace\n") ;
        for (i=0; i<SIZE_1; i++) printf("%d. X : %d/ Y : %d\n", i+1, (pointeur_1+i)->x, (pointeur_1+i)->y) ;
        printf("\n") ;
        pointeur_2 = realloc(pointeur_1, SIZE_2*sizeof(point_0)) ;
        printf("réallocation de 3 points sur un nouvel espace de la mémoire situé %p.\n\n", pointeur_2) ;
        if (pointeur_1 == pointeur_2) printf("La réallocation s'est faite à la même adresse.\n\n") ;
        else printf("La réallocation ne s'est pas faite à la même adresse.\n\n") ;
        printf("ajout du 3ème points sur le nouvel espace de la mémoire\n\n") ;
        (pointeur_2+2)->x = 500 ;
        (pointeur_2+2)->y = 600 ;
        (pointeur_2+3)->x = 700 ;
        printf("affichage des 2 points du premier espace\n") ;
        for (i=0; i<SIZE_1; i++) printf("%d. X : %d/ Y : %d\n", i+1, (pointeur_1+i)->x, (pointeur_1+i)->y) ;
        printf("\n") ;
        printf("affichage des 3 points du deuxième espace\n") ;
        for (i=0; i<SIZE_2; i++) printf("%d. X : %d/ Y : %d\n", i+1, (pointeur_2+i)->x, (pointeur_2+i)->y) ;
        printf("\n") ;
    }

