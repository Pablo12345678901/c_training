#include <string.h>
#include <stdio.h>

int main()
{   int i ;
    char chaine1[30] = "zBonjour" ;
    char chaine2[30] = "---xBon-jour" ;
    char chaine3[30] = "1ffrs3Bonjou-r" ;
    char chaine4[30] = "asdwefscfo!oBnjur" ;
    char chaine5[30] = "Bonjour !" ;
    char chaine_x[30] = "" ;
    int taille_segment_initial_char_dif_1, taille_segment_initial_char_dif_2, taille_segment_initial_char_dif_3, taille_segment_initial_char_dif_4 ;

    taille_segment_initial_char_dif_1 = strspn(chaine1, chaine5) ;
    strncpy(chaine_x, chaine1, taille_segment_initial_char_dif_1) ;
    printf("Chaîne 1 : %s \nChaîne 5 : %s \nLongueur du segment initial de la chaîne 1 formé entièrement de caractères n'appartenant pas à la chaîne 2 : %d \nContenu du segment : %s\n", chaine1, chaine5, taille_segment_initial_char_dif_1, chaine_x) ;
    for (i=0; i<30; i++) chaine_x[i] = '\0' ; // remise à '\0' de la chaîne vide
    printf("\n") ;

    taille_segment_initial_char_dif_2 = strspn(chaine2, chaine5) ;
    strncpy(chaine_x, chaine2, taille_segment_initial_char_dif_2) ;
    printf("Chaîne 2 : %s \nChaîne 5 : %s \nLongueur du segment initial de la chaîne 2 formé entièrement de caractères n'appartenant pas à la chaîne 2 : %d \nContenu du segment : %s\n", chaine2, chaine5, taille_segment_initial_char_dif_2, chaine_x) ;
    for (i=0; i<30; i++) chaine_x[i] = '\0' ; // remise à '\0' de la chaîne vide
    printf("\n") ;

    taille_segment_initial_char_dif_3 = strspn(chaine3, chaine5) ;

    strncpy(chaine_x, chaine3, taille_segment_initial_char_dif_3) ;
    printf("Chaîne 3 : %s \nChaîne 5 : %s \nLongueur du segment initial de la chaîne 3 formé entièrement de caractères n'appartenant pas à la chaîne 2 : %d \nContenu du segment : %s\n", chaine3, chaine5, taille_segment_initial_char_dif_3, chaine_x) ;
    for (i=0; i<30; i++) chaine_x[i] = '\0' ; // remise à '\0' de la chaîne vide
    printf("\n") ;

    taille_segment_initial_char_dif_4 = strspn(chaine4, chaine5) ;
    strncpy(chaine_x, chaine4, taille_segment_initial_char_dif_4) ;
    printf("Chaîne 4 : %s \nChaîne 5 : %s \nLongueur du segment initial de la chaîne 4 formé entièrement de caractères n'appartenant pas à la chaîne 2 : %d \nContenu du segment : %s\n", chaine4, chaine5, taille_segment_initial_char_dif_4, chaine_x) ;
    for (i=0; i<30; i++) chaine_x[i] = '\0' ; // remise à '\0' de la chaîne vide
    printf("\n") ;
}
