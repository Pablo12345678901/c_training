#include <stdio.h>

int main()
// Programme original avec boucle "for"
/*
{
    int i, n, som ;
    som = 0 ;
    for (i = 0 ; i<4 ; i++)
        {   printf("Donnez un entier : ") ;
            scanf("%d", &n) ;
            som += n ;
        }
    printf("Somme : %d\n", som) ;
}
*/



// Programme avec boucle "while"
/*
{
    int i, n, som ;
    som = 0 ;
    i = 0;
    while (i<4)
        {   printf("Donnez un entier : ") ;
            scanf("%d", &n) ;
            som += n ;
            i += 1;
        }
    printf("Somme : %d\n", som) ;
}
*/



// Programme avec boucle "do while"
/*
{
    int i, n, som ;
    som = 0 ;
    i = 0;
    do
        {   printf("Donnez un entier : ") ;
            scanf("%d", &n) ;
            som += n ;
            i += 1;
        }
    while (i<4);
    printf("Somme : %d\n", som) ;
}
*/



/*
// Calcul de la moyenne de notes
//illimités saisir une note négative pour arrêter le récoltage de notes
{
int nb_notes ;
float note, sum_notes, moy ;
sum_notes = nb_notes = note = 0;
while (note >= 0)
    {   printf("note %d : ", nb_notes+1) ;
        scanf("%f", &note) ;
        if (note >= 0)
            {   sum_notes += note ;
                nb_notes += 1 ;
                printf("Sum_notes = %f\n", sum_notes);
                printf("Note = %f\n", note);
            }
    }
moy = sum_notes / nb_notes ;
printf("moyenne de ces %d notes : %.2f", nb_notes, moy) ;
}
*/



/*
// Création d'un triangle de ligne sur mesure.
{
char c = '*' ;
int i, y, actuel, max ;
max = -1;
while (max<=0)
    {   printf("Saisissez un nombre entier > 0 : ");
        scanf("%d", &max);
        if (max<=0)
            {   printf("Erreur : vous avez saisi %d qui n'est pas un nombre entier plus grand que 0.\n", max);
                printf("Réessayez !\n");
            }
    }
printf("Vous avez choisi d'afficher un triangle rempli d'étoiles de %d lignes.\n", max);
actuel = 1;
//max = 5;
for (i=0 ; i<max ; i++)
{   for (y=0 ; y<actuel; y++)
        { printf("*");
        }
    actuel += 1;
    printf("\n");
}
}
*/



/*
// Test si un nombre est entier
{   int nb_test, i ;
    nb_test = -1;
    while (nb_test<=0)
        {   printf("Saisissez un nombre entier > 0 : ");
            scanf("%d", &nb_test);
            if (nb_test<=0)
                {   printf("Erreur : vous avez saisi %d qui n'est pas un nombre entier plus grand que 0.\n", nb_test);
                    printf("Réessayez !\n");
                }
        }
    for (i=2 ; i<nb_test ; i++)
        {   printf("Premier test.\n");
            if (nb_test%i == 0)
                {   printf("Le nombre %d n'est pas un nombre premier car il est divisible par %d.\n", nb_test, i);
                    break;
                }
            printf("Second test.\n");
            if (i == nb_test-1)
                {printf("Le nombre %d est un nombre premier.", nb_test);}
        }
}
*/



/*
// Suite de Fibonacci
// jusqu'au un ième nombre, sachant que l'utilisateur saisira n
{   int u1, u2, nb, un, i ;
    printf("Veuillez donner un entier et je produirai la suite de Fibonacci jusqu'à un, n = celui-ci : ");
    scanf("%d", &nb);
    u2 = u1 = 1;
    printf("u1 = %d\nu2 = %d\n", u1, u2);
    for (i=3 ; i<= nb ; i++)
        {   un = u2 + u1;
            printf("u%d = %d\n", i, un);
            u1 = u2;
            u2 = un;
        }
}
*/



/*
// Table de multiplication de 1 à 10
{   int taille_table, i, y, z, actuel_x, actuel_y ;
    actuel_x = 0 ;
    taille_table = 10 ;
    // Construction 1ère ligne horizontale
    printf("    |") ;
    for (i=1 ; i<=taille_table ; i++)
    {   if (i == taille_table)
            {printf("%4d\n", actuel_x+1) ;}
        else
            {   printf("%4d", actuel_x+1) ;
                actuel_x += 1 ;
            }
    }
    // Construction du séparateur
    printf("----");
    for (z=0 ; z<=(4*taille_table) ; z++)
            {   if (z == 4*taille_table)
                    {printf("-\n") ;}
                else
                    {printf("-") ;}
        }
    // Construction des lignes suivantes
    for (i=1 ; i<=taille_table ; i++)
    {   printf("%2d  |", i);
        for (y=1; y<=taille_table; y++)
        {   if (y == taille_table)
                {   printf("%4d\n", i*y);
                    printf("----");
                    for (z=0 ; z<=(4*taille_table) ; z++)
                            {   if (z == 4*taille_table)
                                    {printf("-\n") ;}
                                else
                                    {printf("-") ;}
                        }
                }
            else
                {printf("%4d", i*y);}
        }

    }

}
*/