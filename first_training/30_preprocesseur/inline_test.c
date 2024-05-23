#include <stdio.h>

// fonction inline
static inline int somme(int a, int b)
{
    return a+b ;
} ;    

// Programme
int main()
{   inline int somme(int a, int b) ; // prototype
    int resultat, a, b ;
    a = 10 ;
    b = 20 ;
    // inline function call
    resultat = somme(a, b);
    printf("Le résultat de la somme de %d + %d est %d\n", a, b, resultat) ;
    return 0;
}