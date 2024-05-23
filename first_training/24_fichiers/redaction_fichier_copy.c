#include <stdio.h>

int main()
    {   char nomfichier[21] ;
        int n ;
        FILE * sortie ; // pointeur de type file - type défini dans <stdio.h>

        printf("Nom du fichier à créer : ") ;
        scanf("%20s", nomfichier) ;
        sortie = fopen(nomfichier, "w") ; // création du fichier et ouverture en mode écriture - retourne une adresse
        // 2 paramètres : le nom du fichier et le mode : 
        do  {   printf("Donnez un entier : ") ;
                scanf("%d", &n) ;
                if (n) fwrite(&n, sizeof(int), 1, sortie) ;
            } while (n) ; // tant qu'on tape des nb entiers

        fclose(sortie) ; // fermeture du fichier
    }