#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define LGNOM 20
#define LGPRENOM 15
#define LGTEL 11
#define LGFICH 21

int main()
{   char nomfich[LGFICH] ;
    FILE * sortie ;
    struct {    char nom[LGNOM+1] ;
                char prenom[LGPRENOM+1] ;
                int age ;
                char tel[LGTEL+1] ;
            } bloc ;
    printf("Donnez le nom du fichier à créer : ") ;
    fgets(nomfich, LGFICH, stdin) ;
    fflush(stdin) ;
    sortie = fopen(nomfich, "w") ;
    printf(" --- pour finir la saisie, donnez un nom 'vide' ---\n") ;
    while(  printf("nom : "), fgets(bloc.nom, LGNOM, stdin), fflush(stdin), (strlen(bloc.nom)!=1 && bloc.nom[0]!='\n') )
    {   printf("prénom : ") ;
        fgets(bloc.prenom, LGPRENOM, stdin) ;
        fflush(stdin);
        printf("âge : ") ;
        fscanf(stdin, "%d", &bloc.age) ; getchar() ; // getchar() attrape le '\n' de fscanf
        fflush(stdin);
        printf("téléphone : ") ;
        fgets(bloc.tel, LGTEL, stdin) ;
        fflush(stdin);
        fwrite(&bloc, sizeof(bloc), 1, sortie) ;
    }            
    fclose(sortie) ;
}