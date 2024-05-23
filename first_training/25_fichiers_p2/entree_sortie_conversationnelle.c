#include <stdio.h>

int main()
{   int carac, i, j, taille = 3 ;
    int resultat ;
    FILE * sortie ;
    FILE * entree ;
    float numero_loto_sortie[taille] ;
    float numero_loto_entree[taille+10] ;
    char filename[] = "test1.txt" ;

    // ECRITURE
    sortie = fopen(filename, "w") ;
    printf("Numéros piochés au loto : \n") ;
    for (i=0; i<taille; i++)
    {   scanf("%f", numero_loto_sortie+i) ;
        printf("%d. Vous avez pioché le numéro %f\n", i+1, numero_loto_sortie[i]) ;
    }
    fprintf(sortie, "%.2f \n%.1f \n%.3f \n", numero_loto_sortie[0], numero_loto_sortie[1], numero_loto_sortie[2]) ;
    // les écritures dans le fichier seront formatée avec 2, 1 et 3 chiffres après la virgule
    fclose(sortie) ;
    
    // LECTURE
    entree = fopen(filename, "r") ;
    j = 0 ;
    while(fscanf(entree, "%f \n", numero_loto_entree+j)!=EOF) // tant qu'on a pas atteint la fin du fichier avec EOF
        {   printf("%d. %f\n", j+1, numero_loto_entree[j]) ;
            j++ ;
        }
    fclose(entree) ;
}