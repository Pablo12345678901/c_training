#include <stdio.h>

int main()
{   char prenom[20], nom[20], ville[20] ;
    printf("Dans quelle ville vivez-vous ?") ;
    gets(ville) ;
    printf("Quel sont votre prénom et nom ? > ") ;
    scanf("%s %s", prenom, nom) ;
    printf("Bonjour %s %s qui vivez dans la ville de %s", prenom, nom, ville) ;
}