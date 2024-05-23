#include <stdio.h>
#include <math.h>
//#define NFOIS 5

int main()
{
    int a, b;
    char c;

    printf("Bonjour\n \a");
    printf("Je vais vous effectuer des opérations mathématiques.\n");

    printf("Préférez-vous une addition ou multiplication (écrire \"+\" ou \"*\" ? : ");
    scanf("%c", &c);
    printf("Quels seront les 2 nombres à utiliser (notez 2 nombres entiers séparés par un espace)?\n");
    scanf("%i %i", &a, &b);
        if (c == '+')
            printf("%i + %i font %i.\n", a, b, a+b);
        else
            printf("%i * %i font %i.\n", a, b, a*b);
    printf("Fin du programme.\n");
}