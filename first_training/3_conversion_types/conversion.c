#include <stdio.h>
#include <math.h>
//#define NFOIS 5

int main()
{
    int a, b;
    char c;
    float d;
    int test;

    printf("Bonjour\n \a");
    printf("Je vais vous effectuer des opérations mathématiques.\n");

    printf("Préférez-vous une addition ou multiplication (écrire \"+\" ou \"*\" ? : ");
    scanf("%c", &c);
    printf("Quels seront les 2 nombres à utiliser (notez 2 nombres entiers séparés par un espace)?\n");
    scanf("%i %i", &a, &b);
    d = 5.1;
        if (c == '+')
            printf("%c + %c font %f.\n", a, b, d); // utilisation de la représentation en caractères des nombre int fournis
        else
            printf("%i * %i font %i.\n", a, b, a*b);
    test = a > b;
    printf("%i \n", test); // affichage du résultat du test (si false = 0, si true = 1)
    printf("Fin du programme.\n");
}