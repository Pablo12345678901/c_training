#include "structure.c"
#include <stdio.h>
#include <string.h>

void transformation_elements(struct personne x)
{   char nouveau_prenom[] = "Anonyme" ;
    int i ;
    for (i=0 ; i<strlen(nouveau_prenom) ; i++) x.prenom[i] = nouveau_prenom[i] ;
    x.date_embauche.annee = 9999 ;
    printf("Dans focntion :\nPrénom : %s\nDate embauche : %02d/%02d/%04d\n", x.prenom, x.date_embauche.jour, x.date_embauche.mois, x.date_embauche.annee) ;
}

int main()
{   void transformation_elements(struct personne x) ; // prototype
    struct personne personne_pablo =    { "Pablo" , 
                                            {28, 2, 2022} 
                                        } ;
    printf("AVANT TRANSFORMATION :\nPrénom : %s\nDate embauche : %02d/%02d/%04d\n", personne_pablo.prenom, personne_pablo.date_embauche.jour, personne_pablo.date_embauche.mois, personne_pablo.date_embauche.annee) ;
    transformation_elements(personne_pablo) ;
    printf("APRES TRANSFORMATION :\nPrénom : %s\nDate embauche : %02d/%02d/%04d\n", personne_pablo.prenom, personne_pablo.date_embauche.jour, personne_pablo.date_embauche.mois, personne_pablo.date_embauche.annee) ;
}