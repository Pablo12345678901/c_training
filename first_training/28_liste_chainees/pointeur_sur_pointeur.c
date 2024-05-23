#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int nbmotdansphrase(char **pointeur) {
    int w = 0; // nb de mot initié à 0
    while (*pointeur) // tant que pointeur non nul
        {   w += 1; // incrémentation du nb de mot
            pointeur++; // décalage du pointeur de 1 mot
        }
    return w; // retourne le nb de mot dans une phrase
}

int nbmotsdansmonologue(char ***pointeur) {
    int w = 0;
    while (*pointeur) // tant que le pointeur vers une phrase n'est pas nul
    {   w += nbmotdansphrase(*pointeur); // le nombre de mots est incrémenté d'un nb de mot dans une phrase
        // ***pointeur ---> ** *pointeur ---> **phrase ---> *pointeur = phrase
        pointeur++; // décalage du pointeur de 1 phrase
    }
    return w; // retourne le nb de mot dans un monologue
}

int main(void) {
    char *mot;
    char **phrase;
    char ***monologue;

    mot = malloc(4 * sizeof *mot); // un mot est composé de 4 pointeurs vers 4 char
    strcpy(mot, "rap"); // copie du mot "rap" à l'adresse de "mot"

    phrase = malloc(4 * sizeof *phrase); // une phrase est composée de 4 pointeurs vers 4 mots
    phrase[0] = mot;
    phrase[1] = mot;
    phrase[2] = mot;
    phrase[3] = NULL ; // Les null ne comptent pas (voir les fonctions ci-dessus).
    // ils sont indispensable pour s'assure qu'au moins un des pointeurs est nul
    // sinon, ils pourraient s'enchaîner et le résultat final seraient bizarre.

    monologue = malloc(4 * sizeof *monologue); // un monologue est composée de 4 pointeurs vers 4 phrase
    monologue[0] = phrase;
    monologue[1] = phrase;
    monologue[2] = phrase;
    monologue[3] = NULL; // Les null ne comptent pas (voir les fonctions ci-dessus).

    // Le nb de mot est équivalent au nb d'élément de chaque type multiplié par les autres (hors NULL)
    printf("Nb de mots dans mon monologue : %d\n", nbmotsdansmonologue(monologue));
    // Libération de la mémoire
    free(monologue);
    free(phrase);
    free(mot);
}