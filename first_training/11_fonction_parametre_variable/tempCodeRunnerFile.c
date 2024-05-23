#include <stdio.h>
#include <stdarg.h> // module nécessaire pour utiliser les fonctions va_start et va_arg

void fonction_nb_param_inconnu_a_l_avance(int par1, ...)
{   va_list nom_au_bol ;
    int parametre_actuel ;
    printf("1er paramètres %d\n", par1) ;
    va_start(nom_au_bol, par1) ; // Initialisation de la liste des arguments
    while ( (parametre_actuel = va_arg (nom_au_bol, int) ) !=-1) // récupération du paramètres suivant à chaque fois
        printf("Paramètre : %d\n", parametre_actuel) ;
}
// Exemple de code
int par1 = 10;
int main()
{void fonction_nb_param_inconnu_a_l_avance(int par1, ...);
fonction_nb_param_inconnu_a_l_avance(10, 11, 12, 13, 25, -1);
fonction_nb_param_inconnu_a_l_avance(10, -1);
}