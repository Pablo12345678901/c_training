#include <stdio.h>
#include <stdlib.h>

void obtenir_bits(int nb, int nb_bits_souhaites)
{
    int *bits = malloc(sizeof(int) * nb_bits_souhaites); // créer un espace pour accueillir le nombre de bits souhaités
    int k, i;

    for(k=0; k<nb_bits_souhaites; k++)
        {
            int masque =  1 << k; // décallage à gauche à chaque boucle du nombre 1
            // le masque est ainsi égal à :
            // 1er tour : 0 0 1
            // 2ème tour : 0 1 0
            // ...
            int bit_filtre = nb & masque; // on récupère la donnée, sous format de nombre
            int thebit = bit_filtre >> k; // et on réexécute le décalage vers la droite
            bits[k] = thebit; // pour récupérer la valeur (soit 0 ou 1) et la stocker dans l'index
        }
    // return bits; // retourne le pointeur
    // les nombres négatif s'affichent avec un - devant (il n'y a pas les 8 bits signes)
    printf("%d = ", nb);
    // lecture en sens inverse car les premiers index sont les derniers bits (voir fonction)
    for(i=nb_bits_souhaites-1; i>=0;i--) printf("%d ", bits[i]);
    printf("\n"); // esthétique
}

int main()
{
    void obtenir_bits(int nb, int nb_bits_souhaites) ; // prototype
    int nb = 100; // intervalle sur 32 bits : [-2147483648 ; 2147483647]
    int  nb_bits_souhaites = 32;
    obtenir_bits(nb, nb_bits_souhaites);
}