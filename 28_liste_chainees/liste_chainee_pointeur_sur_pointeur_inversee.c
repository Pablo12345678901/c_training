#include <stdio.h>
#include <stdlib.h>

// création de la structure "element"
struct element {    int param1 ;
                    float param2 ;
                    float param3 ;
                    struct element * suivant ;
                } ;

void creation(struct element * * pointeur_precedent) ; // prototype
void liste (struct element * pointeur_de_debut) ; // prototype

int main()
    {   struct element * pointeur_de_debut ;
        creation(&pointeur_de_debut) ;
        // le pointeur de début pointe désormais vers le pointeur pointeur_courant
        liste(pointeur_de_debut) ;
    }

// Fonction de création d'une liste chaînée d'objets de structure "etoile"
void creation(struct element * * pointeur_precedent)
{   int param1 ;
    float param2, param3 ;
    struct element * pointeur_courant ;
    * pointeur_precedent = NULL ;
    while (printf("param1(int) param2(float) param3(float) : "), scanf("%d %f %f", &param1, &param2, &param3), param1)
    {   pointeur_courant = (struct element *) malloc(sizeof(struct element)) ; // transtypage en pointeur vers une structure de type element
        if (pointeur_courant!=NULL) // contrôle si pointeur_courant a correctement été créé à chaque boucle
            // adaptation de ses attributs
            {   pointeur_courant->param1 = param1 ;
                pointeur_courant->param2 = param2 ;
                pointeur_courant->param3 = param3 ;
                pointeur_courant->suivant = * pointeur_precedent ;
                * pointeur_precedent = pointeur_courant ;
            }
        else exit (-1) ; // arrêt du programme en cas de bug lors de la création d'un pointeur
    }
}

// Fonction de lecture de la liste chaînée
void liste(struct element * pointeur_courant)
{   printf("**** Liste de la structure ****\n") ;
    while (pointeur_courant) // tant que pointeur non nul
    {   printf("%d %f %f\n", (pointeur_courant)->param1, (pointeur_courant)->param2, (pointeur_courant)->param3) ;
        pointeur_courant = (pointeur_courant)->suivant ; // l'attribut "suivant" contient l'élément suivant de la chaîne
        // qui a été précédemment créé (car la chaîne se lit dans l'ordre inverse de création)
    }
}