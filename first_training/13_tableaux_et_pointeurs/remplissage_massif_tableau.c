#include <stdio.h>
#define CONSTANTE 10

int main()
{   int t[CONSTANTE], i = 0, b = 0, * p ;
    printf("Première manière : \n") ;
    for ( i=0 ; i<CONSTANTE ; i++)
    {   *(t+i) = b ;
        printf("t[%d] = %d\n", i, t[i]) ;
        b+= 1 ;
    }
    printf("Deuxième manière : \n") ;
    b = 50 ;
    for (p=t, i=0 ; i<CONSTANTE ; i++, p++)
    {   *p = b ;
        printf("t[%d] = %d\n", i, t[i]) ;
        b+= 1 ;
    }
}