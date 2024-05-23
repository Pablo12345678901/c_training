#include <stdlib.h>
#include <stdio.h>

int main()
{   int rand_value, min, max ;
    min =  2 ;
    max = 9 ;
    do  {rand_value = rand();
        } while (rand_value > max || rand_value < min) ;
    printf("Valeur random = %d\n", rand_value) ;
}