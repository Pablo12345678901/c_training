#include <stdio.h>
//#include <stdlib.h>
#include <string.h>

void modif_tableau_multidimensionnel(char (* * pointeur_sur_tableau_multi_dim)[3], int index, int dim_2)
{   
        int z ;
        static char carac = 'a' ;
        /* REMARQUES GENERALE
        Ici, on traite des doubles pointeurs car c'est l'adresse du tableau des tableaux de char qui a été fournie.
        Par conséquent, si je ne traite pas de double pointeur, par exemple, hors fonction, je dois adapter les formules :
        - En retirant un "*" ou en transformant l'index "[index]" en "+index".
        - Ou en incluant l'index entre parenthèse avec le pointeur ET en transformant le "[index]" en "+index" dans les parenthèses.
        - Finalement, pour obtenir l'adresse du pointeur, il faudra l'écrire avec &pointeur.
        */
        for (z=0 ; z<dim_2; z++)
        {
            (*pointeur_sur_tableau_multi_dim)[index][z] = carac ;
            // accès avec double pointeur car je me base sur l'adresse du pointeur sur tableau de tableau fourni en paramètres
            // pour voir l'accès normal (via pointeur et pas via adresse pointeur, voir d'autres manière de procéder plus bas)
            carac++ ;
        }

        // Accéder à un des tableau en index i (dim 1) ;
        if (index == 3) strcpy((*pointeur_sur_tableau_multi_dim)[index], "zyx") ;
        // accès avec double pointeur car je me base sur l'adresse du pointeur sur tableau de tableau fourni en paramètres
        // pour voir l'accès normal (via pointeur et pas via adresse pointeur, voir d'autres manière de procéder plus bas)
        
        // récupérer valeur stockée dans l'index [i] [j]
        if (index == 2) printf("Caractère stocké en [2][2] : %c\n", *(*pointeur_sur_tableau_multi_dim)[index]+2) ;
        // accès avec double pointeur car je me base sur l'adresse du pointeur sur tableau de tableau fourni en paramètres
        // pour voir l'accès normal (via pointeur et pas via adresse pointeur, voir d'autres manière de procéder plus bas)

        // Modifier la valeur stockée à l'index [i][j]
        if (index == 3)
        {
            // via son adresse si c'est une chaîne
            sprintf((*pointeur_sur_tableau_multi_dim)[index]+2, "%d", 1) ; // Attention, sprintf copie une chaîne DONC avec le char nul
            // accès avec double pointeur car je me base sur l'adresse du pointeur sur tableau de tableau fourni en paramètres
            // pour voir l'accès normal (via pointeur et pas via adresse pointeur, voir d'autres manière de procéder plus bas)
            // via sa valeur si ce n'en est pas une
            *((*pointeur_sur_tableau_multi_dim)[index]+0) = '0' ;
            // accès avec double pointeur car je me base sur l'adresse du pointeur sur tableau de tableau fourni en paramètres
            // pour voir l'accès normal (via pointeur et pas via adresse pointeur, voir d'autres manière de procéder plus bas)
        }

        // Accéder à l'adresse d'un sous-tableau
        if (index == 0) printf("Adresse du sous-tableau d'index %d : %p \n", index, pointeur_sur_tableau_multi_dim + index) ;
        // accès avec double pointeur car je me base sur l'adresse du pointeur sur tableau de tableau fourni en paramètres
        // pour voir l'accès normal (via pointeur et pas via adresse pointeur, voir d'autres manière de procéder plus bas)
        
        // Accéder à l'adresse d'un élément du sous-tableau
        if (index == 3) printf("Adresse de l'élément [3][1] %p \n", (*pointeur_sur_tableau_multi_dim)[index]+1) ;
        // accès avec double pointeur car je me base sur l'adresse du pointeur sur tableau de tableau fourni en paramètres
        // pour voir l'accès normal (via pointeur et pas via adresse pointeur, voir d'autres manière de procéder plus bas)

}   

int main()
{   
    void modif_tableau_multidimensionnel(char (* * pointeur_sur_tableau_multi_dim)[3], int index, int dim_2) ; // prototype
    int i, j, dim_1, dim_2 ;
    dim_1 = 4 ;
    dim_2 = 3 ;
    char tableau_multi_dim[4][3] ;
    // Définition d'un pointeur sur un tableau de plusieurs dimension (ici dim2 = 3 et pas besoin de préciser dim1)
    // s'il y avait 3 dimensions, il y aurait besoin de préciser la 2 et 3ème au format char (*pointeur)[dim2][dim3]
    char (* pointeur_sur_tableau_multi_dim)[3] ;
    // Ceci n'est pas pareiL que "char *pointeur[3]" qui correspondrait à un tableau de 3 pointeurs de type char
    pointeur_sur_tableau_multi_dim = tableau_multi_dim ;
    // Modification des valeurs du tableau
    for (i=0; i<dim_1 ; i++) modif_tableau_multidimensionnel(&pointeur_sur_tableau_multi_dim, i, dim_2) ;
    // Affichage des données
    // Ci-dessous, plusieurs manière d'accéder aux valeurs des éléments du tableau.
    for (i=0; i<dim_1 ; i++)
    {   
        for (j=0; j<dim_2 ; j++)
        {   // Il faut avoir qu'un seul printf à la fois
            //printf("[%d][%d] : %c \n", i, j, (*pointeur_sur_tableau_multi_dim)[i]+j) ;
            //printf("[%d][%d] : %c \n", i, j, (*pointeur_sur_tableau_multi_dim+i)[j]) ;
            printf("[%d][%d] : %c \n", i, j, *(*(pointeur_sur_tableau_multi_dim+i)+j)) ;
            //printf("[%d][%d] : %c \n", i, j, *(*(pointeur_sur_tableau_multi_dim+i)+j)) ;
            //printf("[%d][%d] : %c \n", i, j, *(*(tableau_multi_dim+i)+j)) ;
            //printf("[%d][%d] : %c \n", i, j, pointeur_sur_tableau_multi_dim[i][j]) ;
            //printf("[%d][%d] : %c \n", i, j, tableau_multi_dim[i][j]) ;
        }
    }
    printf("Fin du programme\n") ;
}
