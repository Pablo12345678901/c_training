#include <stdio.h>
#include <string.h>

void message_resultat(char * chaine1, char * chaine2, int resultat_comparaison)
{   static int nb_comparaison ;
    printf("Comparaison n°%d des chaîne \"%s\" et \"%s\".\n", nb_comparaison+1, chaine1, chaine2) ;
    if (resultat_comparaison != 0) printf("Les 2 chaînes ne sont pas identiques.\n") ;
    else printf("Les 2 chaînes sont identiques.\n") ;
    nb_comparaison++ ;
}

int main()
{   char * chaine1 = "Bonjour" ;
    char * chaine2 = "Bon, je vais bien" ;
    char * chaine3 = "bonjour" ;
    int resultat_comparaison1, resultat_comparaison2, resultat_comparaison3, resultat_comparaison4 ;
    void message_resultat(char * chaine1, char * chaine2, int resultat) ; // prototype
    printf("\n");
    resultat_comparaison1 = strcmp(chaine1, chaine2) ;
    message_resultat(chaine1, chaine2, resultat_comparaison1) ;
    printf("Devrait donner : faux\n\n") ;
    resultat_comparaison2 = strncmp(chaine1, chaine2, 3) ;
    message_resultat(chaine1, chaine2, resultat_comparaison2) ;
    printf("Devrait donner : vrai\n\n") ;
    resultat_comparaison3 = strcasecmp(chaine2, chaine3) ;
    message_resultat(chaine1, chaine2, resultat_comparaison3) ;
    printf("Devrait donner : faux\n\n") ;
    resultat_comparaison4 = strncasecmp(chaine2, chaine3, 3) ;
    message_resultat(chaine1, chaine2, resultat_comparaison4) ;
    printf("Devrait donner : vrai\n\n") ;
}