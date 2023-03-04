#include <stdio.h>

static int sum(int a, int c, int b)
{   int addition, local_not_static ;
    static int local_static ;
    printf("local_not_static = %d\n", local_not_static);
    addition = c + b ;
    printf("L'addition de %d + %d = %d.\n", c, b, addition) ;
    a++ ;
    printf("A1 = %d\n", a) ;
    a++ ;
    printf("A2 = %d\n", a) ;
    local_static += addition ;
    printf("Local static = %d\n", local_static);
    local_not_static += addition ;
    printf("local_not_static = %d\n", local_not_static);
    return addition ;
}

void show_static_value(int a)
{   printf("A3 = %d", a); }