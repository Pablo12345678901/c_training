#include <stdio.h>

int main()
{   struct test {int n1 ; char tableau[20] ; float n2 ; } ;
    struct test structure_avec_valeur = { 10, "champs élisés", -3.10E23 } ;
    printf("Champ 1 : %d\nChamp 2 : %s\nChamp 3 : %f\n", structure_avec_valeur.n1, structure_avec_valeur.tableau, structure_avec_valeur.n2 ) ;
}