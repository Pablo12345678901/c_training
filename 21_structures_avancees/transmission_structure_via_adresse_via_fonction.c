// on suppose que la structure "personne" a été définie dans le fichier "structure.c"
#include "structure.c"
#include <stdio.h>

struct personne * renvoi_adresse_struct(struct personne x) // retourne un pointeur
{   struct personne * adresse ;
    adresse = &x ;
    adresse->date_embauche.annee = 1999 ;
    return adresse ; // retour de l'adresse de la structure hors fonction
}

int main()
{   struct personne * adresse ;
    struct personne personne_pablo = { "Pablo", {28, 2, 2022}} ;
    struct personne * renvoi_adresse_struct(struct personne x) ; // prototype
    printf("AVANT FONCTION :\nPrénom : %s\nDate embauche : %02d/%02d/%04d\n", personne_pablo.prenom, personne_pablo.date_embauche.jour, personne_pablo.date_embauche.mois, personne_pablo.date_embauche.annee) ;
    adresse = renvoi_adresse_struct(personne_pablo) ;
    printf("APRES FONCTION :\nPrénom : %s\nDate embauche : %02d/%02d/%04d\n", adresse->prenom, adresse->date_embauche.jour, adresse->date_embauche.mois, adresse->date_embauche.annee) ;
}