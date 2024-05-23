#include <stdio.h>
#include <math.h>

int main()
{
int a, b, c, d, answer;

printf("Donnez 2 nombres espacés : ");
scanf("%i %i", &a, &b);
printf("Combien font %i * %i ? ", a, b);
scanf("%i", &answer);
c = a*b == answer;
d = 0;

printf("c = %i, d = %i \n", c, d);

if (c && d)
    printf("c && d = 1 \n");
else
    printf("c && d = 0 \n");

if (c || d)
    printf("c || d = 1 \n");
else
    printf("c || d = 0 \n");

printf("Le test c vaut %i \n", c);
if (c == 0)
    printf("Faux ! %i * %i valent %i \n", a, b, a*b);
else
    printf("Vrai ! %i * %i valent %i \n", a, b, answer);
}