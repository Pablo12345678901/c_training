#include <stdio.h>
#include <math.h>
#define NFOIS 5

int main()
{
    int i;
    float x;
    float racx;

    printf("Bonjour\n");
    printf("Je vais vous calculer %d racines carrées.", NFOIS);

    for (i = 0; i < NFOIS; i++)
        {printf("Donner un nombre : ");
        scanf ("%f", &x);
        if (x < 0.0)
            printf("Il n'existe pas de racine carrée pour le nombre %f.\n", x);
        else
            {
            racx = sqrt(x);
            printf("La racine carrée de %f est %f.\n", x, racx);
            }
        }
    printf("Fin du programme.");
}