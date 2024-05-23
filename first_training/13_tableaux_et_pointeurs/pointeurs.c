#include <stdio.h>

void echange_var(int * pointeur_1, int * pointeur_2)
{   int intermediaire = * pointeur_1 ;
    * pointeur_1 = * pointeur_2 ;
    * pointeur_2 = intermediaire ;
}

int main()
{   int var_1 = 10, var_2 = 50, i ;
    void echange_var(int * pointeur_1, int * pointeur_2) ; // prototype de la fonction
    for (i=0 ; i<5; i++)
    {   printf("Boucle n°%d\n", i+1) ;
        printf("AVANT : var_1 = %d, var_2 = %d.\n\n", var_1, var_2) ;
        echange_var(&var_2, &var_1) ;
        /*
        if (!(i%2)) // si nombre pair
        {   var_1 += 10 ;
            var_2 += 20 ;
            echange_var(&var_1, &var_2) ; }
        else // nombre impair
        {   var_1 -= 10 ;
            var_2 -= 20 ;
            echange_var(&var_2, &var_1) ; }
        */
        printf("APRES : var_1 = %d, var_2 = %d.\n\n", var_1, var_2) ;
    }
}