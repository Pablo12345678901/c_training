#include <stdio.h>

int main()
{
    int nb ;
    printf("Donner un entier : \n") ;
    scanf("%d", &nb) ;
    if (nb & 1) printf("%d est impair.\n", nb) ;
    // 1        =       0 0 0 0 0 0 0 1
    else printf("%d est pair.\n", nb) ;

}