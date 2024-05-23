#include <stdio.h>

int main()
{   char * chaine_char ; // création du pointeur
    chaine_char = "Bonjour" ; // assignation du pointeur à la valeur initiale du string
    while (*chaine_char) // tant que valeur non nulle
    {   printf("%c", *chaine_char) ; // affichage
        chaine_char++ ; // décalage de 1
    }
    printf("\n") ; // retour à la ligne pour esthétique
}