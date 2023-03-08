#include "structure.c"
#include <stdio.h>

struct personne creation_personne(void)
{   struct personne personne_1 =    {   "Pablo" , 
                                        {28, 2, 2022} 
                                    } ;
    printf("DANS FONCTION :\nPrénom : %s\nDate embauche : %02d/%02d/%04d\n", personne_1.prenom, personne_1.date_embauche.jour, personne_1.date_embauche.mois, personne_1.date_embauche.annee) ;
    return personne_1 ; // retour de la structure hors fonction
}

int main()
{   struct personne creation_personne(void) ; // prototype
    struct personne personne_pablo = creation_personne() ;
    printf("HORS FONCTION :\nPrénom : %s\nDate embauche : %02d/%02d/%04d\n", personne_pablo.prenom, personne_pablo.date_embauche.jour, personne_pablo.date_embauche.mois, personne_pablo.date_embauche.annee) ;
}