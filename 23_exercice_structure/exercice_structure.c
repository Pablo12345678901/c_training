#include <stdio.h>
#include <stdlib.h>
#define SIZE 3

struct point    {   int num ;
                    float x ;
                    float y ;
                } ;

/*
// FONCTION AVEC LE POINTEUR SUR STRUCTURE EN ARGUMENT
void lecture(struct point * point_x)
    {  
        printf("Donnez un entier pour NUM : ") ;
        scanf("%d", &point_x->num) ;
        fflush(stdin); 
        printf("Donnez un float pour X : ") ;
        scanf("%f", &point_x->x) ; 
        fflush(stdin);
        printf("Donnez un float pour Y : ") ;
        scanf("%f", &point_x->y) ; 
        fflush(stdin);
        printf("\n\n") ;
    }
*/

/*
// FONCTION AVEC LE POINTEUR SUR STRUCTURE EN ARGUMENT
void affichage(struct point * point_x)
    {   // tester après version avec tableau de structure
        printf("NUM : %d\nX : %f\nY : %f\n\n", point_x->num, point_x->x, point_x->y) ;
    }
*/

// /*
// FONCTION AVEC LE POINTEUR SUR TABLEAU DE STRUCTURE EN ARGUMENT
void lecture(int size, struct point point_x[size])
    {   int i ;
        for (i=0 ; i<size ; i++)
            {   printf("Point %d :\n", i+1) ;
                printf("Donnez un entier pour NUM : ") ;
                scanf("%d", &point_x[i].num) ;
                fflush(stdin); 
                printf("Donnez un float pour X : ") ;
                scanf("%f", &point_x[i].x) ; 
                fflush(stdin);
                printf("Donnez un float pour Y : ") ;
                scanf("%f", &point_x[i].y) ; 
                fflush(stdin);
                printf("\n\n") ;
            }
        printf("Fin de la lecture\n") ;
    }
// */

// /*
// FONCTION AVEC LE POINTEUR SUR TABLEAU DE STRUCTURE EN ARGUMENT
void affichage(int size, struct point point_x[size])
    {   int i ;
        for (i=0 ; i<size ; i++)
            {   printf("NUM : %d\nX : %f\nY : %f\n\n", point_x[i].num, point_x[i].x, point_x[i].y) ;
            }
        printf("Fin de l'affichage\n") ;
    }
// */

int main()
    {   int i ; 
        struct point struct_array[SIZE] ;
        /*
        // VERSION EN PASSANT EN ARGUMENT LE POINTEUR
        void lecture(struct point * point_x) ; // prototype
        void affichage(struct point * point_x) ; // prototype
        for (i=0; i<SIZE; i++)
            {   printf("Point %d :\n", i+1) ;
                lecture(&struct_array[i]) ;
            }
        for (i=0; i<SIZE; i++) affichage(&struct_array[i]) ;
        */
        // /*
        // VERSION EN PASSANT EN ARGUMENT LE TABLEAU DE POINTEUR
        void lecture(int size, struct point point_x[size]) ;// prototype
        void affichage(int size, struct point point_x[size]) ;// prototype
        lecture(SIZE, &struct_array[SIZE]) ;
        affichage(SIZE, &struct_array[SIZE]) ;
        printf("Fin du programme") ;     
       // */
       return 0 ;
    }