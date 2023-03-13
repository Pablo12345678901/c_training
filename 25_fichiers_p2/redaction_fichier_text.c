#include <stdio.h>

int taille = 20 ;

int main()
{   
    FILE * sortie ;
    FILE * entree ;
    char filename[] = "test3.txt" ;
    char chaine_1[] = "Ce texte est plus grand que celui qui sera affiché" ;
    char chaine_2[taille] ;
    
    sortie = fopen(filename, "w") ;
    // Récupération texte depuis le clavier

    // ECRITURE
    printf("Texte initial : \"%s\" \n", chaine_1) ;
    fputs(chaine_1, sortie) ;
    fclose(sortie) ;
    
    // LECTURE
    entree = fopen(filename, "r") ;
    printf("Texte final : \"%s\" \n", fgets(chaine_2, taille, entree)) ; // longueur max de taille "taille"
    fclose(entree) ;
}