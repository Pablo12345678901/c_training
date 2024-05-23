#include <math.h>
#include <stdio.h>

int main()
{   double nb ;
    double resultat ;
    printf("De quel nb (format double) souhaiteriez-vous connaître l'entier suivant ? ") ;
    scanf("%lf", &nb) ;
    resultat = ceil(nb) ;
    printf("L'entier qui suit %f est %f", nb, resultat) ;
}
