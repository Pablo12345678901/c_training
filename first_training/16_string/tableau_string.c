#include <stdio.h>

int main()
{   char chaine_char[20] = "Bonjour2" ; // initialisation du tableau à la valeur de la chaîne
    int i = 0 ;
    while (chaine_char[i]) // tant que valeur non nulle
    {   printf("%c", chaine_char[i]) ; // affichage
        i++ ; // décalage de 1
    }
    printf("\n") ; // retour à la ligne pour esthétique
}