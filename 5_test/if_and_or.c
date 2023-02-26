#include <stdio.h>
#include <math.h>
#include <string.h> // bibliothèque pour gérer les string

int main()
{
int n = 543;
int p = 5;
float x = 34.5678;
printf("A : %d %f\n", n, x);
printf("B : %4d %10f\n", n, x);
printf("D : %10.3f %10.3e\n", x, x);
printf("E : %*d\n", p, n);
printf("F : %*.*f\n", 12, 5, x);
/*
int a, nombrevar; // test avec un nombre
char b; // test avec un caractère
nombrevar = scanf("%d %c", &a, &b);
nombrevar<2 ? printf("Erreur, a = %d, b = %c", a, b) : printf("a = %d, b = %c", a, b);
*/
}


/*
A : 543 34.567800 // 1 espace et 2 zéros
B : 543+2espaces 34.5678000 // 2 espaces et 3 zéros
C : 43 34.
D: 34.567+6espaces 3.456e1+6espaces// 6 espaces après le premier nombre 6 espaces après le 2ème
E: 543+2espaces 
F: 34.56780+4espaces

a) n = 12, p = 45
b) n = 1234, p = RIEN
c) n = 1234, p = 7
d) n = 1, p = 45
e) n = RIEN, p = RIEN
*/