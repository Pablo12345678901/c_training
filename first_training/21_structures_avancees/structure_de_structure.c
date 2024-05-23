#include <stdio.h>
//#include <stdlib.h>
#define TAILLE 20

int main()
    {   int i, compte ;
        struct date {   int jour ;
                        int mois ;
                        int annee ;
                    } ;
        struct personne {   char prenom[TAILLE] ;
                            struct date date_embauche ;
                        } personne_1 ;
        do  {   printf("Quelle est votre prénom ? ") ;
                compte = scanf("%19s", personne_1.prenom) ;
                // ATTENTION : ne fonctionne pas avec du texte contenant des espaces
            } while (compte!=1) ; // Contrôle du nombre du bon fonctionnement de scanf
        fflush(stdin); // vider le tampon restant
        printf("Votre prénom est : %s\n", personne_1.prenom) ;
        personne_1.date_embauche.jour = 8 ;
        personne_1.date_embauche.mois = 2 ;
        personne_1.date_embauche.annee = 2 ;
        printf("%s, vous avez débuté votre emploi le %02d/%02d/%04d.\n", personne_1.prenom, personne_1.date_embauche.jour, personne_1.date_embauche.mois, personne_1.date_embauche.annee) ;
    }