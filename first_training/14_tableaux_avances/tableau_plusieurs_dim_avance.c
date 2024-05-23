#include <stdio.h>
//#define dim 15

int main()
{ // fonction qui place 1 dans la diagonale et 0 dans le reste
int * p, i, j ;
const int dim = 15 ;
int t[dim][dim] = { 0 }; // tableau rempli de 0
for (p=t[0], i=0 ; i<dim ; i++)
    {   *p = 1 ;
        p+= dim+1 ;
    }

for (i=0 ; i<dim; i++) // affichage du tableau
        {   for (j=0; j<dim; j++) printf("%2d", t[i][j]) ;
            printf("\n") ;
        }

}