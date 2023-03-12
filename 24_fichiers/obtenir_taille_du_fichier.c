#include <stdio.h>

int main()
{   char nomfichier[21] ;
    long taille ;
    int n ;
    FILE * entree ;
    printf("Quel est le nom du fichier à mesurer ? > ") ;
    scanf("%20s", nomfichier) ;
    entree = fopen(nomfichier, "r") ; // ouverture en mode lecture
    fseek(entree, 0, SEEK_END) ; // positionnement du pointeur de fichier en fin de fichier
    taille = ftell(entree) ; // récupération du décalage équivalent à la taille du fichier
    printf("La taille du fichier %s est de %ld octets.\n", nomfichier, taille) ; 
    rewind(entree); // remise du pointeur au début du fichier
    /* TEST QUE BIEN REVENU AU DEBUT DU FICHIER
    fseek(entree, 0, SEEK_CUR) ;
    fread(&n, sizeof(int), 1, entree) ;
    printf("Valeur de début de fichier : %d\n", n) ;
    */
    fclose(entree) ;
}