#include <math.h>
#include <stdio.h>

int main()
{   float val ;
    printf("Quel nombre souhaitez-vous arrondir ? ") ;
    scanf("%f", &val) ;
    printf("Valeur initiale %f\n", val) ;
    int nb_decimales ;
    printf("À combien de décimales souhaitez-vous arrondir ce nombre ? ") ;
    scanf("%d", &nb_decimales) ;
    int nb_pr_fonction = pow(10, nb_decimales) ;
    float nearest = roundf(val * nb_pr_fonction) / nb_pr_fonction; // avec roundf
    printf("Arrondi valeur la plus proche à %d décimales : %.*f\n", nb_decimales, nb_decimales, nearest) ;
    float rounded_down = floorf(val * nb_pr_fonction) / nb_pr_fonction; // avec floorf
    printf("Arrondi valeur inférieure la plus proche à %d décimales : %.*f\n", nb_decimales, nb_decimales, rounded_down) ;
    float rounded_up = ceilf(val * nb_pr_fonction) / nb_pr_fonction;  // avec ceilf
    printf("Arrondi valeur supérieure la plus proche à %d décimales : %.*f\n", nb_decimales, nb_decimales, rounded_up) ;
}