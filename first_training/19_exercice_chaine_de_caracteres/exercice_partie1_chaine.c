#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int main()
{
    // compter le nombre de lettre "e" minuscule d'une texte (max 132 char)
    char texte[132], mots[132], mot[132], liste_caractere[20], caractere, pluriel_char, pluriel_mot ;
    char * pointeur_sur_occurence_char, * pointeur_sur_occurence_mot ; // les pointeurs
    int nb_occurences_char, nb_occurences_mot, compte_char, compte_mot, i ;
    
    // initialisation valeurs des var / pointeurs
    pointeur_sur_occurence_mot = pointeur_sur_occurence_char = texte ;
    pluriel_char = pluriel_mot = '\0';
    nb_occurences_char = nb_occurences_mot = compte_char = compte_mot = 0 ;

    // obtention du texte
    printf("Tapez un texte quelconque (max 132 caractères) : ") ;
    gets(texte) ;
    // ajout limitation taille du texte


     // ajout sécurité format 1 char
    printf("Choisissez un caractère à rechercher : > ") ;
    gets(liste_caractere) ;
    do {    compte_char = sscanf(liste_caractere, "%c", &caractere) ;
            //DEBUG printf("compte_char : %d\n", compte_char) ;
        } while (compte_char!=1) ;
    //DEBUG printf("Je compte_char le nombre de %c...\n", caractere) ;

    // comptage des occurences char
    do
        {   //DEBUG printf("Boucle \n") ;
            pointeur_sur_occurence_char = strchr(pointeur_sur_occurence_char, caractere) ; // pointeur_sur_occurence initial = texte
            if (pointeur_sur_occurence_char)
                {   nb_occurences_char++ ;
                    //DEBUG printf("Nb occurence %d\n", nb_occurences_char) ;
                    pointeur_sur_occurence_char++ ;// nouveau pointeur du début du reste de la chaîne = pointeur actuel + 1
                }
            //DEBUG else printf("Pas d'occurence suuplémentaire\n") ;
        } while (pointeur_sur_occurence_char) ;
    if (nb_occurences_char>1) pluriel_char = 's' ;
    printf("Il y a %d occurence%c de \"%c\" dans la chaine \"%s\".\n", nb_occurences_char, pluriel_char, caractere, texte) ;
    //DEBUG printf("FIN CHAR\n\n") ;
    
    // ajout sécurité format 1 mot (string)
    // ci-dessous version avec contrôle de la longueur
    printf("Choisissez un mot : > ") ;
    for (i=0 ; i<20; i++)
        {   mot[i] = getchar() ;
            if (mot[i] == '\n' || mot[i]==' ')
                {   mot[i]='\0';
                    break ;
                }
        }
    //DEBUG printf("mot = %s\n", mot) ;

    /*
    // ci-dessous version sans contrôle de la longueur
    gets(mots) ;
    // ajout limitation taille du mot
    do {    compte_mot = sscanf(mots, "%s ", mot) ;
            //DEBUG printf("compte_mot : %d\n", compte_mot) ;
        } while (compte_mot!=1) ;
    //DEBUG printf("Je compte le nombre d'occurence du mot %s.\n", mot) ;
    */
    
    // comptage des occurences mot
    do
            {   //DEBUG printf("Boucle \n") ;
                pointeur_sur_occurence_mot = strstr(pointeur_sur_occurence_mot, mot) ; // pointeur_sur_occurence initial = texte
                if (pointeur_sur_occurence_mot)
                    {   nb_occurences_mot++ ;
                        //DEBUG printf("Nb occurence %d\n", nb_occurences_char) ;
                        pointeur_sur_occurence_mot++ ;// nouveau pointeur du début du reste de la chaîne = pointeur actuel + 1
                    }
                //DEBUG else printf("Pas d'occurence suuplémentaire\n") ;
            } while (pointeur_sur_occurence_mot) ;
        if (nb_occurences_mot>1) pluriel_mot = 's' ;
        printf("Il y a %d occurence%c de \"%s\" dans la chaine \"%s\".\n", nb_occurences_mot, pluriel_mot, mot, texte) ;
    //DEBUG printf("FIN MOT\n\n") ;
}