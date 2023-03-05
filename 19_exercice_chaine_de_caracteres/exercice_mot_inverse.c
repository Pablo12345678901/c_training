#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int main()
{
    // suppression des caractères 'e' d'un texte
    char mot[31],  mot_inverse[31] ;
    char * pointeur_mot, * pointeur_mot_inverse ;
    pointeur_mot = mot ;
    pointeur_mot_inverse = mot_inverse ;
    int i, longueur ;
    i = longueur = 0 ;

    printf("Veuillez donner un mot de maximum 30 caractères.\n") ;
    printf("Je vous en donnerai son inverse > ") ;

    // avec tableau
    /*
    for (i=0 ; i<31; i++) // boucle jusqu'au max
    
        {   mot[i] = getchar() ; // récupération du caractère
            
            if (mot[i] == '\n' || mot[i]==' ')
                {   mot[i]='\0';
                    break ;
                }
            if (i==30)
                {   mot[i]='\0' ;
                    break ;
                }
            longueur++ ;
        }
    */

    // avec pointeurs
    // /*
    for (i=0 ; i<31; i++) // boucle jusqu'au max
        {   * (mot+i) = getchar() ; // récupération du caractère
            
            if (* (mot+i) == '\n' || * (mot+i)==' ')
                {   * (mot+i)='\0';
                    break ;
                }
            if (i==30)
                {   * (mot+i)='\0' ;
                    break ;
                }
            longueur++ ;
        }
    // */
    printf("La longueur du mot est %d\n", longueur) ;
    printf("mot = %s\n", mot) ; // affichage de la chaîne obtenue

    // création de la chaîne inverse
    // avec tableau direct
    //for (i=0 ; i<longueur; i++) mot_inverse[i] = mot[longueur-1-i] ;
    // avec pointeurs
    for (i=0 ; i<longueur; i++) *(mot_inverse+i) = *(pointeur_mot+longueur-1-i) ;
    // avec tableau direct
    //mot_inverse[longueur] = '\0' ;
    // avec pointeurs
    *(mot_inverse + longueur) = '\0' ;
    printf("L'inverse de %s est %s.\n", mot, mot_inverse) ;

}