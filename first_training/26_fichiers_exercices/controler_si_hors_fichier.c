#include <stdio.h>

int main()
    {   long taille = 0 ;
        long decalage = 0 ;
        FILE * pointeur_sur_fichier ;
        char filename[]="NOMFICHIER.EXTENSION" ;
        pointeur_sur_fichier = fopen(filename,"r") ;
        fseek(pointeur_sur_fichier, 0, SEEK_END) ; // Déplacement à la fin du fichier
        taille = ftell(pointeur_sur_fichier) ; // mesure de la taille du fichier
        printf("La taille du fichier est de %ld octets.\n", taille) ;
        rewind(pointeur_sur_fichier); // remise du pointeur au début du fichier
        decalage = 10*sizeof(int) ; // décalage en octet avec le nb*sizeof(type)
        printf("Le décalage correspond à %ld octets.\n", decalage) ;
        if (decalage > taille)  printf("Décalage impossible car hors fichier.\n") ;
        else    {   fseek(pointeur_sur_fichier, decalage, SEEK_SET) ; // decalage
                    printf("Après décalage, je suis toujours dans le fichier.\n") ;
                }
        fclose(pointeur_sur_fichier) ;
    }