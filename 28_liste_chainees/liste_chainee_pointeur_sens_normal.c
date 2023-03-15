#include <stdio.h>
#include <stdlib.h>
//#include <string.h>

// création de la structure "etoile"
    struct etoile { char nom[20] ;
                    int distance ;
                    struct etoile * etoile_suivante ;
                } ;

// Fonction de création d'une liste chaînée d'objets de structure "etoile"
struct etoile * creation(void)
    {   char nom[20] ;
        int valeur, nb_etoiles, i ;
        nb_etoiles = i = 0 ;
        struct etoile * pointeur_courant ;
        struct etoile * pointeur_suivant ;
        struct etoile * pointeur_precedent ;
        // réserve de la mémoire pour la création d'un élément de structure étoile
        pointeur_courant = malloc(sizeof(struct etoile)) ;
        // conservation de l'adresse du premier pointeur
        struct etoile * premier_pointeur ;
        premier_pointeur = pointeur_courant ;
        nb_etoiles++ ;
        printf("Taper enter pour stopper la saisie.\n") ;
        printf("Quel est le nom de l'étoile n°%d ? \n", nb_etoiles) ;
        fgets(nom, 20, stdin) ;
        fflush(stdin) ;
        if (nom[0]=='\n')
            {   printf("Quel dommage, vous n'avez souhaité saisir aucune étoile...\n\n") ;
                exit(-1) ;
            }
        for (i=0 ; i<20; i++)
            {   if (nom[i]!='\n') pointeur_courant->nom[i] = nom[i] ;
                else pointeur_courant->nom[i] = '\0' ;
            }
        printf("Quelle est sa distance de la terre ? \n") ;
        fscanf(stdin,"%d",&valeur) ;
        fflush(stdin) ;
        // POINTEUR 1
        pointeur_courant->distance = valeur ;
        pointeur_courant->etoile_suivante = NULL ;
        // BOUCLE
        printf("Taper enter pour stopper la saisie.\n") ;
        while (nb_etoiles++, printf("Quel est le nom de l'étoile n°%d ? \n", nb_etoiles), fgets(nom, 20, stdin), (nom[0]!='\n'))
            {   fflush(stdin) ;
                printf("Quelle est sa distance de la terre ? \n") ;
                fscanf(stdin,"%d",&valeur) ;
                fflush(stdin) ;
                pointeur_precedent = malloc(sizeof(struct etoile)) ;
                pointeur_precedent = pointeur_courant ;
                pointeur_suivant = malloc(sizeof(struct etoile)) ;
                pointeur_courant = pointeur_suivant ;
                for (i=0 ; i<20; i++)
                    {   if (nom[i]!='\n') pointeur_courant->nom[i] = nom[i] ;
                        else pointeur_courant->nom[i] = '\0' ;
                    }
                pointeur_courant->distance = valeur ;
                pointeur_courant->etoile_suivante = NULL ;
                // modification de l'attribut etoile_suivante du précédent objet vers le nouveau
                pointeur_precedent->etoile_suivante = pointeur_suivant ;
            }
        // retourne l'adresse du premier pointeur
        return premier_pointeur ;
    }

void lecture(struct etoile * premier_pointeur)
{   int i = 0 ;
    while (i++, printf("L'étoile n°%d nommée \"%s\" se trouve à une distance de %d km de la terre.\n", i, premier_pointeur->nom, premier_pointeur->distance), premier_pointeur->etoile_suivante!=NULL)
    // modification du pointeur courant par le pointeur suivant situé dans l'attribut etoile suivante
        {premier_pointeur = premier_pointeur->etoile_suivante ; }
}

int main()
    {   struct etoile * creation(void) ; // prototype
        void lecture(struct etoile * premier_pointeur) ; // prototype
        // création du premier pointeur qui pointe vers un élément de structure etoile
        struct etoile * premier_pointeur ;
        // transmission de ce pointeur a la fonction de creation
        premier_pointeur = creation() ;
        // lecture de la liste chaînée à partir du premier pointeur
        lecture(premier_pointeur) ;
    }