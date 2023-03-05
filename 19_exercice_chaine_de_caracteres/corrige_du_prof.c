#include <string.h>
#include <stdio.h>
#define CAR 'e'
#define LGMAX 132

int main()
{
    // suppression des caractères 'e' d'un texte
    char texte[LGMAX+1] ;
    char * pointeur_sur_texte ;
    printf("Donnez un texte : ") ;
    gets(texte) ;
    pointeur_sur_texte = texte ;
    printf("Chaîne initiale : %s\n", texte) ; 
    while ((pointeur_sur_texte = strchr(pointeur_sur_texte, CAR))) strcpy(pointeur_sur_texte, pointeur_sur_texte+1);
    //printf("Chaîne finale = %s\n", texte) ;
    puts(texte) ;
}