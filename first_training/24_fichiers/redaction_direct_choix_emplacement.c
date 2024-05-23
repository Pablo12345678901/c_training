#include <stdio.h>

int main()
    {   char nomfichier[21] ;
        int entier ;
        long emplacement ;
        FILE * sortie ;
        FILE * entree ;

        printf("Nom du fichier à rédiger : ") ;
        scanf("%20s", nomfichier) ;
        sortie = fopen(nomfichier, "w") ;

        while ( printf("Entier à y inscrire : "), scanf("%d", &entier), entier )  
            {   printf("Emplacement dans le fichier : (>0) ") ;
                scanf("%ld", &emplacement) ;
                fseek(sortie, sizeof(int)*(emplacement-1), SEEK_SET) ;
                printf("Vous avez choisi d'écrire le nombre %d à l'emplacement %ld du fichier\n", entier, emplacement) ;
                fwrite(&entier, sizeof(int), 1, sortie) ;
            }
        fclose(sortie) ;
        printf("Fin de la rédaction du fichier\n") ;
        printf("Lecture du fichier \n") ;
        entree = fopen(nomfichier, "r") ;
        while ( fread(&entier, sizeof(int), 1, entree), !feof(entree) ) printf("%d\n", entier);
        fclose(entree) ;
        printf("Fin de la lecture\n") ;
    }