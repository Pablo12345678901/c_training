#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int main()
{
    // confugaison verbe premier groupe
    // char verbe[31] = "eranterawer" ;
    char verbe[31] ;
    char base_du_verbe[29] ;
    char terminaison[2] = "er" ;
    char * pointeur_verbe ;
    char * pointeur_sur_er;
    char * pointeur_base_du_verbe ;

    // évolution avec stockage de valeurs conjuguées pour réutilisation ultérieure
    // char conjugaison[6][20] ;
    // char * pointeur_verbe_conjugue ;
    // pointeur_verbe_conjugue = conjugaison[0] ;

    pointeur_verbe = verbe ;
    pointeur_sur_er = verbe ;
    pointeur_base_du_verbe = base_du_verbe ;

    int i, longueur, decalage ;
    i = longueur = decalage = 0 ;

    printf("Veuillez donner un mot de verbe du premier groupe se terminant par \"er\". > ") ;

    for (i=0 ; i<31; i++) // boucle jusqu'au max
        {   * (verbe+i) = getchar() ; // récupération du caractère
            
            if (* (verbe+i) == '\n' || * (verbe+i)==' ')
                {   * (verbe+i)='\0';
                    break ;
                }
            if (i==30)
                {   * (verbe+i)='\0' ;
                    break ;
                }
            longueur++ ;
        }

   //longueur = 11 ; // à supprimer si réactivation de la boucle ci-dessus

    printf("Vous avez choisi de conjuguer le verbe %s\n", verbe) ;

    // check que se termine en er
    // contrôle que position er = 2 derniers indice

    // besoin d'obtenir la position du dernier "er"

    do  {   //DEBUG printf("Boucle \n") ;
            pointeur_sur_er = strstr(pointeur_sur_er, terminaison) ; // pointeur_sur_occurence initial = texte
            if (pointeur_sur_er)
                {   decalage = pointeur_sur_er - pointeur_verbe ;
                    //DEBUG printf("Decalage = %d\n", decalage) ;
                    pointeur_sur_er++ ;// nouveau pointeur du début du reste de la chaîne = pointeur actuel + 1
                }
            // DEBUG else printf("Pas d'occurence suplémentaire\n") ;
        } while (pointeur_sur_er) ;
    if (longueur-2 == decalage) printf("OK\n") ;
    else
        {   printf("Pas OK\n") ;
            printf("Check = %d\n", longueur-2) ;
        }
    
    for (i=0; i<longueur-strlen(terminaison); i++) *(pointeur_base_du_verbe+i) = *(pointeur_verbe+i) ;
    *(pointeur_base_du_verbe+i) = '\0' ;
    //DEBUG printf("Base du verbe : %s\n", base_du_verbe) ;

    // confugaison
    // amélioration possible via stockage des terminaisons dans un tableau
    // amélioration possible via stockage des données (je + verbe + terminaison) dans un tableau pour réutilisation ultérieure
    // JE + E
    printf("Je ");
    for (i=0; i<longueur-strlen(terminaison); i++) printf("%c", *(pointeur_base_du_verbe+i));
    printf("e\n") ;
    // TU + ES
    printf("Tu ");
    for (i=0; i<longueur-strlen(terminaison); i++) printf("%c", *(pointeur_base_du_verbe+i));
    printf("es\n") ;
    // IL / ELLE + E
    printf("Il / elle ");
    for (i=0; i<longueur-strlen(terminaison); i++) printf("%c", *(pointeur_base_du_verbe+i));
    printf("e\n") ;
    // NOUS + ONS
    printf("Nous ");
    for (i=0; i<longueur-strlen(terminaison); i++) printf("%c", *(pointeur_base_du_verbe+i));
    printf("ons\n") ;
    // VOUS + EZ
    printf("Vous ");
    for (i=0; i<longueur-strlen(terminaison); i++) printf("%c", *(pointeur_base_du_verbe+i));
    printf("ez\n") ;
    // ILS / ELLES + ENT
    printf("Ils / elles ");
    for (i=0; i<longueur-strlen(terminaison); i++) printf("%c", *(pointeur_base_du_verbe+i));
    printf("ent\n") ;
    printf("Fin de la conjugaison du verbe %s.\n", verbe) ;
}