#include <stdio.h>

int main()
{   char * jour[7] = { "lundi",
                "mardi",
                "mercredi",
                "jeudi",
                "vendredi",
                "samedi",
                "dimanche",
                } ;
    int num_jour ;
    printf("Donnez un nombre entre 1 et 7 (compris x2) > ");
    scanf("%d", &num_jour) ;
    printf("Le jour n°%d de la semaine est le %s.\n", num_jour, jour[num_jour-1]);
}