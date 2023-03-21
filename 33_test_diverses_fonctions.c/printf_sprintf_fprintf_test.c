#include <stdio.h>

int main()
{
    FILE * sortie ;
    FILE * entree ;
    char chaine[110] ;
    int nb_carac_rediges, nb_carac_affiches, nvo_nb_carac_chaine, nb_carac_lu_en_cours, nb_carac_lu_final ;
    float nb_carac_rediges_float ;
    int * pointeur_1, * pointeur_2 ;
    //pointeur_1 = &nb_carac_lu_en_cours ;
    //pointeur_2 = &nb_carac_lu_final ;
    sortie = fopen("abcd.txt", "w") ;
    nb_carac_rediges = fprintf(sortie, "abEd") ;
    printf("%d caractères rédigés dans le fichier.\n", nb_carac_rediges) ;
    fclose(sortie) ;

    entree = fopen("abcd.txt", "r") ;
    fscanf(entree, "%s", chaine) ;
    nb_carac_affiches = printf("%s\n", chaine) ;
    printf("%d caractères affichés avec le printf ci-dessus.\n", nb_carac_affiches) ;
    fprintf(stdout, "Fonction fprintf : %d caractères affichés avec le printf ci-dessus.\n", nb_carac_affiches) ;
    nvo_nb_carac_chaine = sprintf(chaine, "Ceci est une nouvelle chaîne de remplacement :\n%10d caractères affichés avec le printf ci-dessus.\n", nb_carac_affiches) ;
    printf("%d caractères rédigé (sans compte le caractère nul '\\0') avec le sprintf ci-dessus.\n", nvo_nb_carac_chaine) ;
    printf("Nouvelle chaîne : %s\n", chaine) ;
    fclose(entree) ;

    printf("\n\n\n") ;
    nb_carac_rediges -= 100 ;
    printf("%+d caractères rédigés\n", nb_carac_rediges) ;
    nb_carac_rediges_float = (float) nb_carac_rediges ;
    printf("Normal : %f \nAlternée : %#f \ncaractères float rédigés\n", nb_carac_rediges_float, nb_carac_rediges_float) ;
    
    printf("\n\n\n") ;

    // jouer avec le format d'affichage des données
    printf("%0*d caractères rédigés\n", 10, nb_carac_rediges) ;
    printf("%0*f caractères float rédigés\n", 10, nb_carac_rediges_float) ;
    printf("%*.8f caractères float rédigés\n", 20, nb_carac_rediges_float) ;
    printf("%.*d caractères rédigés\n", 10, nb_carac_rediges) ;
    printf("%.0f caractères float rédigés\n", nb_carac_rediges_float) ;
    printf("%f caractères float rédigés\n", nb_carac_rediges_float) ;
    //printf("%o caractères rédigés en unsigned int octal.\n", 10, nb_carac_rediges) ;
    //printf("%X caractères rédigés en unsigned int octal.\n", 10, nb_carac_rediges) ;
    printf("%e caractères float rédigés\n", nb_carac_rediges_float) ;
    printf("%E caractères float rédigés\n", nb_carac_rediges_float) ;
    printf("%g caractères float rédigés\n", nb_carac_rediges_float) ;
    printf("%%g caractères float rédigés\n") ;
    printf("%%g caractères %nfloat rédigés\n%n", &nb_carac_lu_en_cours, &nb_carac_lu_final) ;
    printf("%d caractères lu en cours \n%d caractères lu au final \n", nb_carac_lu_en_cours, nb_carac_lu_final) ;
}