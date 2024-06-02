#include <stdio.h>

/* This is a simple program to use to train reverse engineering with gdb. */

int main()
{
  int x = 5 ;
  printf("x = %d\n", x) ;
  x = x + 5 ;
  printf("x = %d\n", x) ;
  return 0 ;
}
