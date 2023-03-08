#include <stdio.h>

int main()
{   enum couleurs {jaune = 10, blanc = -4, noir = 10} c1, c2 ;
    c1 = noir ;
    c2 = blanc ;
    printf("c1 = %d / c2 = %d\n", c1, c2) ;
}