#include <stdio.h>
#include "redaction_fichier.c"

extern int compteur ;

int main()
    {   char nomfichier[21] ;
        int n, compteur_verif, resultat ;
        FILE * entree ;

        void redaction_fichier(void) ;
        redaction_fichier() ;
        compteur_verif = 0 ;
        printf("compteur : %d\n", compteur) ;

        printf("Nom du fichier à lister : ") ;
        scanf("%20s", nomfichier) ;
        entree = fopen(nomfichier, "r") ;

        while ( resultat = fread(&n, sizeof(int), 1, entree),
                compteur_verif += resultat,
                !feof(entree) )             printf("\n%d", n);
        fclose(entree) ;
        if (compteur_verif != compteur) printf("\nErreur de lecture\n") ;
        else (printf("\nBonne lecture\n")) ;
    }