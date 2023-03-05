#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int main()
{
    // suppression des caractères 'e' d'un texte
    char texte[132] = "se couvrir contre le debordement d'indice en cas de debordement d'un tableau a plusieurs indice, le decalage", chaine[132], caractere = 'e' ;
    char * pointeur_sur_texte, * emplacement_dernier_caractere, * pointeur_sur_chaine ;
    pointeur_sur_texte = texte ;
    pointeur_sur_chaine = chaine ;
    int decalage, i ;
    decalage = i = 0 ;

    printf("Chaîne initiale : %s\n", texte) ; 

    do {    //DEBUG printf("Chaîne initiale : %s\n", texte) ; 
            emplacement_dernier_caractere = strrchr(texte, caractere) ;// DERNIERE OCCURENCE D'UN CARACTERE
            if (emplacement_dernier_caractere)
                {   decalage = emplacement_dernier_caractere - pointeur_sur_texte ;
                    //DEBUG printf("Decalage = %d\n", decalage) ;
                    //for (i=0; i<(132-decalage-1); i++) chaine[i] = texte[i+decalage+1] ;
                    //for (i=0; i<(132-decalage-1); i++) chaine[i] = *(pointeur_sur_texte+i+decalage+1) ;
                    for (i=0; i<(132-decalage-1); i++) *(pointeur_sur_chaine+i) = *(pointeur_sur_texte+i+decalage+1) ;
                    strcpy(texte+decalage, chaine) ;
                    //DEBUG printf("Nouvelle chaîne = %s\n", texte) ;
                }
        }   while (emplacement_dernier_caractere) ;
        printf("Chaîne finale = %s\n", texte) ;
}