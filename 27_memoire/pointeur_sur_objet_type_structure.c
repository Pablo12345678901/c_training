#include <stdlib.h>
#include <stdio.h>

int main()
    {   int i ;
        struct point    {   int x ;
                                int y ;
                            } point_3, point_4 ;
        struct point * pointeur_sur_objet ;
        pointeur_sur_objet = calloc(3, sizeof(point_3)) ; // allocation de mémoire
        printf("Création et stockage des 3 points en mémoire au pointeur situé %p.\n\n", pointeur_sur_objet) ;
        // accès aux attribut du premier point via "->" ou "."
        pointeur_sur_objet->x = 1 ;
        (*pointeur_sur_objet).y = 2 ;
        // structure de type point suivante
        (pointeur_sur_objet+1)->x = 3 ;
        (*(pointeur_sur_objet+1)).y = 4 ;
        // Autre possibilité d'assignation via l'objet lui-même
        point_3.x = 5 ;
        point_3.y = 6 ;
        *(pointeur_sur_objet+2) = point_3 ; // ne fonctionne pas avec "->"
        printf("Affichage des 3 points sur cette espace\n") ;
        // Affichage de la valeur des attributs via "->" ou "."
        for (i=0; i<3; i++) printf("%d. X : %d/ Y : %d\n", i+1, (pointeur_sur_objet+i)->x, (*(pointeur_sur_objet+i)).y) ;
        // Affichage d'un point crée sans usage de la mémoire
        point_4.x = 7 ;
        point_4.y = 8 ;
        printf("\n") ;
        printf("Affichage du 4ème point crée en dehors de cette espace\n") ;
        printf("4. X : %d/ Y : %d\n", point_4.x, point_4.y) ;
        printf("\n") ;
    }

