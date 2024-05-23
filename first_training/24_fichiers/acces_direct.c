#include <stdio.h>

int main()
    {   char nomfichier[21] ;
        int n ;
        long num ;
        FILE * entree ;

        printf("Nom du fichier à consulter : ") ;
        scanf("%20s", nomfichier) ;
        entree = fopen(nomfichier, "r") ;
        fseek(entree, 0L, SEEK_END);    // seek to the EOF
        int size = ftell(entree);       // get the current position
        printf("La taille du fichier est %d\n", size) ; 
        rewind(entree);   
        while ( printf("Emplacement de l'entier recherché : "), // début à 1 (et pas 0)
                scanf("%ld", &num), num)
           {   
           //fseek(entree, 1, SEEK_END) ;
            fseek(entree, sizeof(int)*(num-1), SEEK_END) ;
            //fseek(entree, sizeof(int)*(num-1), SEEK_SET) ;
            fread(&n, sizeof(int), 1, entree) ;
            printf("  valeur : %d \n", n) ;
            }  
        fclose(entree) ;
    }