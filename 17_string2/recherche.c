#include <string.h>
#include <stdio.h>

int main()
{
    //char * chaine = "abcdefghijklmnopqrstuvwxyz" ;
    char * chaine = "abacdefghijdkfglhtrmnzoujprgeztqujzutrzrterukvwzikxliukyzugzfhzthjtrhgadqefwgetrjh" ;
    char souschaine[10] ;
    printf("Longueur de la chaîne = %lu\n", strlen(chaine)) ;
    char caractere ;
    char * emplacement_premier_caractere ;
    char * emplacement_dernier_caractere ;
    char * emplacement_chaine ;

    printf("Quel est le caractère à rechercher ? > ") ;
    scanf("%c", &caractere) ;

    emplacement_premier_caractere = strchr(chaine, caractere) ; // PREMIERE OCCURENCE D'UN CARACTERE
    if (emplacement_premier_caractere)
        printf("La 1ère occurence du caractère %c se trouve en %ld position de la chaîne %s.\n", caractere, emplacement_premier_caractere + 1  - chaine, chaine) ;
    else
        printf("La recherche n'a rien donné.\n") ;
    
    emplacement_dernier_caractere = strrchr(chaine, caractere) ;// DERNIERE OCCURENCE D'UN CARACTERE
    if (emplacement_dernier_caractere)
        printf("La dernière occurence du caractère %c se trouve en %ld position de la chaîne %s\n", caractere, emplacement_dernier_caractere + 1  - chaine, chaine) ;
    else
        printf("La recherche n'a rien donné.\n") ;
    /*
    printf("Quel est la chaîne à rechercher ? > ");
    gets(souschaine) ;

    emplacement_chaine = strstr(chaine, souschaine) ; // PREMIERE OCCURENCE D'UNE CHAINE DE CARACTERES
    if (emplacement_chaine)
        printf("La 1ère occurence de la chaîne de caractère %s se trouve en %ld position de la chaîne %s.\n", souschaine, emplacement_chaine + 1  - chaine, chaine) ;
    else
        printf("La recherche n'a rien donné.\n") ;
    */
}