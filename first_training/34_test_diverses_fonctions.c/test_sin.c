#include <math.h>
#include <stdio.h>

int main()
{   double angle ; // exprimé en radian
    double resultat ;
    printf("Rappel : 90° = 1.5708 radian.\n") ;
    printf("De quel angle (en radian) souhaiteriez-vous le sinus ? ") ;
    scanf("%lf", &angle) ;
    resultat = sin(angle) ;
    printf("Le sin(%f) = %f", angle, resultat) ;
}
