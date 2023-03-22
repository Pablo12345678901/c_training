#include <stdio.h>
//#include <stdlib.h>

int main()
{
    
    //int i = -1 ;
    char carac_x ;
    FILE * sortie ;
    FILE * entree ;
    sortie = fopen("scanf_test.txt", "w") ;
    fprintf(sortie, "abEd") ;
    fclose(sortie) ;
    entree = fopen("abcd.txt", "r") ;
    ungetc('c', entree) ;
    while(fscanf(entree, "%c", &carac_x)!=EOF)
    {
        printf("%c\n", carac_x) ;
    }
    fclose(entree) ;
    printf("Fin du fichier.\n") ;

    char * pointeur_sur_char ;
    int * pointeur_sur_int_1, * pointeur_sur_int_2 ;
    char chaine[110] = "Jesuis 1 roi." ;
    char sous_chaine[10], sous_chaine_2[10] ;
    char nvle_chaine[10] ;
    char carac, carac_2, carac_3, carac_4, carac_5, carac_6 ;
    char carac_7, carac_8 ;
    //pointeur_sur_char = calloc(10, sizeof(char)) ;
    carac_3 = '\0' ;
    carac_8 = 'a' ;
    int nb_recupere, nb_recupere_2, nb_recupere_3, nb_recupere_4, nb_recupere_5 ;
    long nb_recupere_6 ;
    int nb_recupere_7, nb_recupere_8, nb_choisi_9, nb_choisi_10 ;
    nb_choisi_9 = 9 ;
    pointeur_sur_int_1 = &nb_choisi_9 ;
    nb_choisi_10 = 10 ;
    pointeur_sur_int_2 = &nb_choisi_10 ;
    int nb_carac_lu_1, nb_carac_lu_2 ;
    nb_recupere_2 = 0 ;
    int nb_valeur_correctement_lues ;
    /*
    // BON FORMAT
    nb_valeur_correctement_lues = sscanf(chaine, "%s %d", sous_chaine, &nb_recupere) ;
    // MAUVAIS FORMAT (ci-dessous)
    //nb_valeur_correctement_lues = sscanf(chaine, "%f %s %d", sous_chaine, &nb_recupere) ;
    if (nb_valeur_correctement_lues)
    printf("Données récupérées : \nChaine : %s \nInt : %d\n", sous_chaine, nb_recupere) ;
    else printf("Sscanf n'a pu lire aucune valeur.\n") ;
    */

    /*
    printf("Saisissez un nombre et un char\n") ;
    scanf("%d\f\n\r\v\t%c", &nb_recupere_2, &carac) ;
    printf("Données récupérées : \nNb : %d \nChar : %c\n", nb_recupere_2, carac) ;
    */

    /*
    printf("Saisissez un nombre et un char : \n") ;
    scanf("%d%c", &nb_recupere_3, &carac_2) ;
    printf("Données récupérées : \nNb : %d \nChar : %c\n", nb_recupere_3, carac_2) ;
    */

    /*
    printf("Écrivez un texte de max 10 caractères : \n") ;
    scanf("%9s", nvle_chaine) ;
    printf("Chaîne récupérée : \n%s\n", nvle_chaine) ;
    fflush(stdin) ;
    scanf("%c", &carac_3) ;
    printf("Caractère récupéré : \n%c\n", carac_3) ;
    */

    /*
    printf("Écrivez un nombre en octal : \n") ;
    scanf("%o", &nb_recupere_4) ;
    printf("Nombre récupéré en octal : %o\nÉquivalent en int : %d\n", nb_recupere_4, nb_recupere_4) ;
    */

    /*
    printf("Écrivez un nombre : \n") ;
    scanf("%*d %d", &nb_recupere_5) ;
    printf("Nombre récupéré en int : %d\n", nb_recupere_5) ;
    */

    /*
    printf("Écrivez un nombre long int : \n") ;
    scanf("%ld", &nb_recupere_6) ;
    printf("Nombre récupéré en long int : %ld\n", nb_recupere_6) ;
    */

    /*
    printf("Écrivez une liste de carac de taille max 9 : \n") ;
    scanf("%9c", pointeur_sur_char) ;
    fflush(stdin) ;
    *(pointeur_sur_char + 9) =  '\0' ;
    // lecture chaine
    printf("Chaîne récupéré via char + '\\0' : %s\n", pointeur_sur_char) ;
    */

    /*
    printf("Saissez deux nombres int séparés par un espace : \n") ;
    scanf("%d%n %d%n", &nb_recupere_7, &nb_carac_lu_1, &nb_recupere_8, &nb_carac_lu_2) ;
    fflush(stdin) ;
    printf("Nb 1 lu : %d\nNb caractètre lus jusqu'à présent : %d\nNb 2 lu : %d\nNb total de caractères lus : %d\n", nb_recupere_7, nb_carac_lu_1, nb_recupere_8, nb_carac_lu_2) ;
    */

    /*
    printf("AVANT :\nPointeur 1 : %p\nValeur p1 : %d\nPointeur 2 : %p\nValeur p2 : %d\n", pointeur_sur_int_1, *pointeur_sur_int_1, pointeur_sur_int_2, *pointeur_sur_int_2) ;
    printf("Quelle adresse souhaiteriez-vous donner au pointeur 1 ? \n") ;
    scanf("%p", &pointeur_sur_int_1) ;
    printf("APRES : \nPointeur 1 : %p\nValeur p1 : %d\nPointeur 2 : %p\nValeur p2 : %d\n", pointeur_sur_int_1, *pointeur_sur_int_1, pointeur_sur_int_2, *pointeur_sur_int_2) ;
    */

    /*
    printf("Saisissez un char avec fgetc : \n") ;
    carac_5 = fgetc(stdin) ;
    fflush(stdin) ;
    printf("Saisissez un char avec getc : \n") ;
    carac_6 = getc(stdin) ;
    fflush(stdin) ;
    printf("Saisissez un char avec getchar : \n") ;
    carac_7 = getchar() ;
    fflush(stdin) ;
    printf("Vous avez saisi les char : \nAvec fgetc : %c\nAvec getc : %c \nAvec getchar : %c \n", carac_5, carac_6, carac_7) ;
    */

    /*
    putchar(carac_8) ;
    */



    printf("Fin du programme.") ;
}