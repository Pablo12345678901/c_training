#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// création de la structure "etoile"
    struct etoile { char nom[20] ;
                    int distance ;
                    struct etoile * etoile_suivante ;
                } ;

// Fonction de création d'une liste chaînée d'objets de structure "etoile"
struct etoile * creation( struct etoile * pointeur_actuel)
    {   int i ;
        // pointeur initial défini à pointeur NULL
        struct etoile * pointeur_precedent = NULL ;
        char nom[20] ;
        printf("\nTaper enter pour arrêter\n") ;
        while(printf("Donnez le nom d'une étoile\n"), fgets(nom, 20, stdin), fflush(stdin), (strlen(nom)!=1 && nom[0]!='\n'))
            {   // création de l'objet suivant = espace en mémoire
                pointeur_actuel = calloc(1, sizeof(struct etoile)) ;
                // allocation de cet espace
                pointeur_actuel->etoile_suivante = pointeur_precedent ;
                // remplissage du tableau "nom" dans l'objet de structure étoile
                for (i=0; i<20; i++)
                {   if (nom[i]!='\n') pointeur_actuel->nom[i] = nom[i] ;
                    else nom[i] = '\0' ;
                }
                printf("À quelle distance de la terre se situe-t-elle ? \n") ;
                fscanf(stdin, "%d", &pointeur_actuel->distance) ;
                fflush(stdin) ;
                // modification du pointeur vers l'objet suivant dans le "pointeur_précédent"
                pointeur_precedent = pointeur_actuel ;
            }
        printf("Fin de la création de la liste chaînée.\n\n") ;
        return pointeur_precedent ; // pointeur qui sera appelé lors de la lecture
    }

void lecture(struct etoile * premier_pointeur)
{   int i = 0 ;
    while (i++, printf("Étoile n°%d: %s située à %d km de la terre\n", i, premier_pointeur->nom, premier_pointeur->distance), premier_pointeur->etoile_suivante !=NULL)
    {   premier_pointeur = premier_pointeur->etoile_suivante ;}
    printf("Fin de la liste d'étoiles.\n\n") ;
}

int main()
    {   struct etoile * creation( struct etoile * pointeur_actuel) ; // prototype
        void lecture(struct etoile * premier_pointeur) ; // prototype
        // Création du pointeur vers la liste chaînée
        struct etoile * debut ;
        struct etoile * fin ;
        // Création de la liste chaînée
        fin = creation(debut) ;
        // lecture de la liste chaîne du début à la fin (donc de la fin = premier élément lu vers le début = dernier élément lu)
        lecture(fin) ;
    }