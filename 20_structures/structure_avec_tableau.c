#include <stdio.h>


int main()
    {   struct personne    {    char nom[20] ;
                                char prenom[20];
                                float heure[7];
                            } ;
        struct personne employe = {"ZAMORA", "Pablo", {1, 2, 3, 4, 5, 6, 7} }; // Création d'une variable de structure personne
        printf("Affichage du 1er caractère du nom : %c\n", employe.nom[0]) ; // adaptation du premier caractère du tableau du nom
        printf("Affichage du prénom : %s\n", employe.prenom) ; // employe.prenom représente le tableau prénom
        printf("Quels nombre d'heures pour le 3ème jour : ") ;
        scanf("%f", &employe.heure[2]) ;// représente l'adresse de l'emplacement 3 du tableau des heures
        printf("Nombre d'heures effectuées le 3ème jour : %f\n", employe.heure[2]) ;
    }