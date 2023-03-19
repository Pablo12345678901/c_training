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
    printf("%10d = ", nb);
    // lecture en sens inverse car les premiers index sont les derniers bits (voir fonction)
    for(i=nb_bits_souhaites-1; i>=0;i--) printf("%2d", bits[i]);
    printf("\n"); // esthétique
}

int main()
{
    void obtenir_bits(int nb, int nb_bits_souhaites) ; // prototype - 32 bits  
    int nb, c, signe, premiers_4_bits, comparateur ;
    printf("Saisissez un nombre entier : ");
    scanf("%d", &nb) ;
    comparateur = -2147483648 ; // > nombre à adapter selon l'environnement = selon le nombre de bits codés
    //il doit toujours être égal au plus petit nombre de l'intervalle
    // ici, l'intervalle est 2^32 codé de : [-2147483648 ; 2147483647]
    // 32 bits pour la valeur avec 8 bits additionnels pour le signe (mis sous la forme "-" à l'affichage)
    printf("Test du signe du nombre...\n") ;
    obtenir_bits(nb, 32) ;
    obtenir_bits(comparateur, 32) ;
    signe = nb & comparateur ; // si = 0 = positif / si = -1 ou 1 = negatif
    obtenir_bits(signe, 32) ;
    if (signe) printf("\nLe nombre %d est négatif.\n\n", nb) ;
    else printf("\nLe nombre %d est positif.\n\n", nb) ;
    printf("Adaptation sur les 4 premiers bits du nombre (le reste est mis à 0)...\n") ;
    obtenir_bits(nb, 32) ;
    obtenir_bits(0xF, 32) ;
    premiers_4_bits = nb & 0xF ;
    obtenir_bits(premiers_4_bits, 32) ;
    // 0xF = 15 > int signé codé sur 32 bits : 32 bits pour la valeur avec 8 bits additionnels pour le signe (mis sous la forme "-")
    // 15 = 1 1 1 1 > si souhait de tester davantage de bits, il faut chercher le int équivalent à n * bit de 1 (1111...)
    printf("%d & 0xF : %d \n", nb, premiers_4_bits) ;
}