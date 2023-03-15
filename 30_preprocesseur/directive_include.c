#include "fichier_d_entete.h"
#include <stdio.h>

int main()
{   int a, b, c ;
    a = 10 ;
    b = 20 ;
    c = somme_a_et_b(a, b) ;
    printf("La somme de %d + %d = %d\n", a, b, c) ;
}