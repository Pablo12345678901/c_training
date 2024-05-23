#include "structure.c"
#include <stdio.h>

int main()
{   struct personne personne_pablo =    { "Pablo" , 
                                            {28, 2, 2022}
                                        } ;
    printf("Prénom : %s\nDate embauche : %02d/%02d/%04d", personne_pablo.prenom, personne_pablo.date_embauche.jour, personne_pablo.date_embauche.mois, personne_pablo.date_embauche.annee) ;
}