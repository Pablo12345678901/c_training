#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define TAILLE 3

int main()
    {   int i, y ;
        float distance_x, distance_y, distance_tot ;
        struct point    {   float dim1 ;
                            float dim2 ;
                        } ;
        struct point liste_de_point[TAILLE] = { {1.2, 2.3}, {10.0, 9.9}, {-4.2, -5.6}} ;

        // Affichage des coordonnées pour chaque point
        for (i=0; i<TAILLE; i++) printf("Point %d \nCoordonnée x : %.3f \nCoordonnée y : %.3f \n\n", i+1, liste_de_point[i].dim1, liste_de_point[i].dim2) ;
        
        // calcul des distances entre chaque point
        int nb_decimales ;
        char pluriel = '\0' ;
        printf("À combien de décimales souhaitez-vous la précision ? ") ;
        scanf("%d", &nb_decimales) ;
        if (nb_decimales>1) pluriel='s' ; // accord des décimales au pluriel si plus de 1 décimales
        int facteur = pow(10, nb_decimales) ;
        for (i=0; i<TAILLE; i++)
        {   for (y=i+1; y<TAILLE; y++)
            {  distance_x = fabs(liste_de_point[i].dim1-liste_de_point[y].dim1) ;
                            float distance_arrondi_x = roundf(distance_x * facteur) / facteur; // avec roundf
                            distance_y = fabs(liste_de_point[i].dim2-liste_de_point[y].dim2) ;
                            float distance_arrondi_y = roundf(distance_y * facteur) / facteur; // avec roundf
                            // distance_tot = racine de (distance_x au carré + distance_y au carré)
                            distance_tot = sqrt(pow(distance_x, 2) + pow(distance_y, 2)) ;
                            float distance_arrondi_tot = roundf(distance_tot * facteur) / facteur; // avec roundf
                            printf("La distance précise à %d décimale%c entre les points %d et %d est : \ndistance_x : %.*f\ndistance_y : %.*f\ndistance_tot = %.*f\n\n", nb_decimales, pluriel, i+1, y+1, nb_decimales, distance_arrondi_x, nb_decimales, distance_arrondi_y, nb_decimales, distance_arrondi_tot) ;
            }
        }
    }