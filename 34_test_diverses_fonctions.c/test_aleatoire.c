#include <stdio.h>          
#include <stdlib.h>
#include <time.h>

int main() {
    printf("Nombre pseudo-aléatoire répétés entre les occurences du programme : \n") ;
    printf( "%d\n", rand() );
    printf( "%d\n", rand() );
    printf( "%d\n", rand() );
    printf("\n") ; // esthétique
    srand( time( NULL ) ); // adaptation de la graine avec le temps pour générer du pseudo-aléatoire amélioré

    printf("Nombre pseudo-aléatoire JAMAIS répétés entre les occurences du programme : \n") ;
    printf( "%d\n", rand() );
    printf( "%d\n", rand() );
    printf( "%d\n", rand() );    
    printf("\n") ; // esthétique
    return EXIT_SUCCESS;
}

/*
 * Si vous lancez ce programme plusieurs fois (à quelques
 * secondes d'interval), les trois premières valeurs seront
 * toujours les mêmes.
 * 
 * Par contre les trois dernières devraient changer étant
 * donné que le générateur aura été réinitialisé avec une
 * mesure de temps différente.
 */