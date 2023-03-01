#include <stdio.h>

/*
void print_min_and_max_from_table(int dim, int t[dim])
{   int min, max, i, *p ;
    // initialisation du min et max avec le premier élément du tableau
    max = *t ;
    min = *t ;
    // comparaison de chaque élément avec le min et max actuel 
    for (p=t, i=0 ; i<dim ; i++, p++)
        {   if (*p > max) max = *p ; // et remplacement si nécessaire
            if (*p < min) min = *p ; // et remplacement si nécessaire
        }
    // affichage du min et max
    printf("Le nombre minimum parmi les %d nombres est %d\n", dim, min);
    printf("Le nombre maximum parmi les %d nombres est %d\n", dim, max);
}
*/

/*
// tri du tableau par ordre croissant
int * tri_tableau(int dim, int t[dim])
{   int min, max, pos_min, i, j, y, z, *p1, *p2;
    static int t2[13] ;
    //static int t2[5] ;
    int t3[dim] ;
    for (i=0; i<dim; i++) t3[i] = t[i]; // initialisation du t3
    max = t3[0] ; // initialisation du max
    for (i=0; i<dim; i++) {if (t[i] > max) max= t[i];} // adaptation du max

    for (p1=t3, z=0; z<dim; z++)
        {   min = *p1;
            for (j=0; j<dim ; j++)
            {   if (*(p1+j) < min)
                {   min = *(p1+j);
                    pos_min = j;
                }
            }
            if (min != *p1)
                {*(p1+pos_min) = max ;}
            else
                *p1 = max;
            t2[z] = min ;
        }
    printf("TABLEAU DEPART\n") ;
    for (i=0 ; i<dim ; i++) printf("t[%d] = %d\n", i, t[i]) ;
    return t2 ;
}
*/

// addition de 2 matrices
// et affichage du résultat
/*
void calcul_somme_2_matrice(int dim1, int dim2, double matrice1[dim1][dim2], double matrice2[dim1][dim2])
{   int i, j, z ;
    double matrice3[dim1][dim2] ;
    for (i=0 ; i<dim1; i++)
        {   for (j=0 ; j<dim2 ; j++)
                matrice3[i][j] = matrice1[i][j] + matrice2[i][j] ;
        }
    // affichage des matrices
    // matrice 1 + matrice 2 = matrice 3
    for (i=0 ; i<dim1; i++)
        {   {   for (z=0; z<dim2; z++) printf("%.2f ", matrice1[i][z]);
                if (dim1%2)
                    {   if (i==((int) (dim2/2)))
                            printf(" + ") ;
                        else
                            printf("   ") ;
                    }
                else 
                    {   if (i==((dim2/2)))
                            printf(" + ") ;
                        else
                            printf("   ") ;
                    }
                for (z=0; z<dim2; z++) printf("%.2f ", matrice2[i][z]);
                if (dim1%2)
                    {   if (i==((int) (dim2/2)))
                            printf(" = ") ;
                        else
                            printf("   ") ;
                    }
                else 
                    {   if (i==((dim2/2)))
                            printf(" = ") ;
                        else
                            printf("   ") ;
                    }
                for (z=0; z<dim2; z++) printf("%5.2f", matrice3[i][z]);
            }
            printf("\n") ;
        }
}
*/

/* ===========================================================
===========================================================
===========================================================
*/

int main()
{   //int taille = 10, t[taille], *p, i = 0, min, max, a ;

// Formalisme tableau
/* 
for (i=0 ; i<taille ; i++)
    {   printf("%d. Saisissez un nombre entier : ", i+1) ;
        scanf("%d", t+i) ;
    }


// initialisation du min et max avec le premier élément du tableau
max = t[0] ;
min = t[0] ;

// comparaison de chaque élément avec le min et max actuel 
for (i=0; i<taille; i++) // pourrait être i=1 car on a déjà la valeur de t[0]
    {   if (t[i] > max) max = t[i] ; // et remplacement si nécessaire
        if (t[i]<min) min = t[i] ; // et remplacement si nécessaire
    }
// */

// Formalisme pointeur
/*
for (p=t, i=0 ; i<taille ; i++, p++)
    {   printf("%d. Saisissez un nombre entier : ", i+1) ;
        scanf("%d", p) ;
    }


// initialisation du min et max avec le premier élément du tableau
max = *t ;
min = *t ;

// comparaison de chaque élément avec le min et max actuel 
for (p=t, i=0 ; i<taille ; i++, p++)
    {   if (*p > max) max = *p ; // et remplacement si nécessaire
        if (*p < min) min = *p ; // et remplacement si nécessaire
    }

printf("Le nombre minimum parmi les %d nombres est %d\n", taille, min);
printf("Le nombre maximum parmi les %d nombres est %d\n", taille, max);
*/

/*
// Affichage min et max d'un tableau à un indice
const int dim = 12 ;
void print_min_and_max_from_table(int dim, int t[dim]) ; // prototype
int t[dim] = {0, 10, 2, 3, 4, 5, 50, -50, -102, 339, 392, 10} ;
print_min_and_max_from_table(dim, t) ;
*/

/*
// Trier par ordre croissant les valeurs d'un tableau
int i, *a ;
// 2 jeux de données
const int dim = 13 ;
int t1[dim] = {0, 10, -150, 45, 32, 5, 50, -50, 100, -102, 1339, 392, 10} ; // jeu de données
//const int dim = 5 ;
//int t1[dim] = {-1, 13, -2, 4, 1} ;
int * tri_tableau(int dim, int t[dim]) ; // prototype

a = tri_tableau(dim, t1) ; // récupération du tableau trié
printf("Affichage tableau trié\n") ;
for (i=0 ; i<dim ; i++) printf("t2[%d] = %d\n", i, *(a+i)) ; // récupération des données via un pointeur
*/

// addition de 2 matrices
// et affichage du résultat
/*
//2 jeux de données
// /*
const int dim1 = 3, dim2 = 2 ;
double matrice1[dim1][dim2] = {
                                {1.0, 2.0},
                                {3.0, 4.0},
                                {5.0, 6.0}, 
                                },
    matrice2[dim1][dim2] = {    
                                {0.0, 1.0},
                                {1.0, 0.0},
                                {0.0, 2.0},
                            } ;
// */
/*
const int dim1 = 4, dim2 = 2 ;
double matrice1[dim1][dim2] = {
                                {1.0, 2.0},
                                {3.0, 4.0},
                                {5.0, 6.0}, 
                                {5.0, 6.0}},
    matrice2[dim1][dim2] = {    
                                {0.0, 1.0},
                                {1.0, 0.0},
                                {0.0, 2.0},
                                {0.0, 2.0},
                            } ;
*/
/*
void calcul_somme_2_matrice(int dim1, int dim2, double matrice1[dim1][dim2], double matrice2[dim1][dim2]) ;// prototype

calcul_somme_2_matrice(dim1, dim2, matrice1, matrice2) ;
*/
}