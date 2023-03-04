#include <stdio.h>

// fonction de remise à 0
void remise_a_zero(void *pointeur_objet, int nb) 
{   int i;
    char * pointeur_char = pointeur_objet ;
    for (i=0; i<nb; i++, pointeur_char++) *pointeur_char = 0 ;
    printf("EN COURS...\n") ;
}

void separateur(void)
{   int i ; 
    printf("\n") ;
    for (i=0; i<35; i++) printf("=") ;
    printf("\n") ;
}

//remplissage d'un tableau à 2 indice
// ET
// affichage du tableau
// ET
// remise à 0 du tableau
int main()
{   int i, j, dim_1 = 1, dim_2 = 20, t1[dim_1][dim_2], a = 0, b = 0, *p1;
    void remise_a_zero(void *pointeur_objet, int nb) ; // prototype fonction de remise à 0
    void separateur(void) ; // prototype séparateur
    
    separateur(); // séparateur
    
    // remplissage via indice
    printf("Début remplissage tableau via indice.\n\n") ;
    for (i=0 ; i<dim_1 ; i++)
    {   for (j=0 ; j<dim_2 ; j++, a++)
        {   t1[i][j]= a ;
            printf("t1[%2d][%2d] = %3d\n", i, j, a) ;
        }
    }
    printf("\nFin remplissage.") ;
    
    separateur(); // séparateur
    
    printf("Remise à zéro du tableau.\n") ;
    remise_a_zero(t1, dim_1*dim_2*sizeof(int));
    printf("Fin remise à 0.") ;
    
    separateur(); // séparateur

    printf("Check si tableau à 0.\n") ;
    for (i=0 ; i<dim_1 ; i++)
    {   for (j=0 ; j<dim_2 ; j++)
        {   if (t1[i][j] == 0)
                printf("t1[%2d][%2d] = %3d\n", i, j, t1[i][j]) ;
            else
                printf("Faux\n");
        }
    }
    printf("\nFin du check.");
    
    separateur(); // séparateur

    printf("Début remplissage tableau via pointeurs.\n\n") ; 
    // remplissage via pointeurs
    for (p1=t1[0], i=0 ; i<dim_1*dim_2 ; i++, p1++, b++) *p1 = b;
    for (i=0 ; i<dim_1 ; i++)
    {for (j=0 ; j<dim_2 ; j++) printf("t1[%2d][%2d] = %3d\n", i, j, t1[i][j]) ;}
    printf("\nFin remplissage.") ;

    separateur(); // séparateur

}


