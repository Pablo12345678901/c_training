#include <stdio.h>

int main()
{
    /*
    int i = -1 ;
    char carac ;
    FILE * sortie ;
    FILE * entree ;
    sortie = fopen("scanf_test.txt", "w") ;
    fprintf(sortie, "abEd") ;
    fclose(sortie) ;
    entree = fopen("abcd.txt", "r") ;
    while(fscanf(entree, "%c", &carac)!=EOF)
    {
        printf("%c\n", carac) ;
    }
    fclose(entree) ;
    printf("Fin du fichier.\n") ;
    */
    char chaine[110] = "Jesuis 1 roi." ;
    char sous_chaine[10] ;
    int nb_recupere ;
    int nb_valeur_correctement_lues ;
    // BON FORMAT
    nb_valeur_correctement_lues = sscanf(chaine, "%s %d", sous_chaine, &nb_recupere) ;
    // MAUVAIS FORMAT (ci-dessous)
    //nb_valeur_correctement_lues = sscanf(chaine, "%f %s %d", sous_chaine, &nb_recupere) ;
    if (nb_valeur_correctement_lues)
    printf("Données récupérées : \nChaine : %s \nInt : %d\n", sous_chaine, nb_recupere) ;
    else printf("Sscanf n'a pu lire aucune valeur.\n") ;
    printf("Fin du programme.") ;
}