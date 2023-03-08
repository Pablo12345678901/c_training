#include <stdio.h>
#include <stdlib.h>
#define longueur 20


int main()
    {   int i, compte ;
        struct cube   { int dimension1 ;
                        int dimension2 ;
                        int dimension3 ;
                        int volume ;
                        char couleur[longueur] ;
                        } cube_1, cube_2 ;
        char tableau[longueur] ;
        compte = 0 ;
        do {    printf("Quelle est la dimension 1 du cube ? ") ;
                gets(tableau) ;
                compte = sscanf(tableau, "%d ", &cube_1.dimension1) ; } while (compte!=1) ;

        //cube_1.dimension1 = 10 ;
        
        do {    printf("Quelle est la dimension 2 du cube ? ") ;
                gets(tableau) ;
                cube_1.dimension2 = atoi(tableau) ; } while (cube_1.dimension2==0) ;
        // cube_1.dimension2 = 20 ;

        cube_1.dimension3 = 30 ;

        cube_1.volume = cube_1.dimension1 * cube_1.dimension2 * cube_1.dimension3 ;
        printf("Quelle est la couleur du cube ? ") ;
        for (i=0 ; i<longueur; i++)
            {   cube_1.couleur[i] = getchar() ;
                if (cube_1.couleur[i] == '\n' || cube_1.couleur[i]==' ')
                    {   cube_1.couleur[i]='\0';
                        break ;
                    }
                if (i==longueur-1)
                    {   cube_1.couleur[i]='\0' ;
                        break ;
                    }
            }
        printf("Le cube 1 mesure %d * %d * %d cm soit un volume de %d cm^2 et est de couleur %s.\n", cube_1.dimension1, cube_1.dimension2, cube_1.dimension3, cube_1.volume, cube_1.couleur) ;
        cube_2 = cube_1 ;
        printf("Copie du cube 1 dans le cube 2.\n") ;
        printf("Légère modification du cube 2 (dimension 1 += 10).\n") ;
        cube_2.dimension1 += 10 ;
        printf("Adaptation du volume du cube 2.\n") ;
        cube_2.volume = cube_2.dimension1 * cube_2.dimension2 * cube_2.dimension3 ;
        printf("Le cube 2 mesure %d * %d * %d cm soit un volume de %d cm^2 et est de couleur %s.\n", cube_2.dimension1, cube_2.dimension2, cube_2.dimension3, cube_2.volume, cube_2.couleur) ;

    }