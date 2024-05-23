#include <stdio.h>
#define N 10

void remise_a_zero_tableau(void *pointeur_tableau, int n)
{   int i ;
    char * pointeur_char = pointeur_tableau ;
    //for ( i=0 ; i<n ; i++, pointeur_char++) *pointeur_char = '\n' ; 
    for ( i=0 ; i<n ; i++, pointeur_char++) *pointeur_char = 0 ; 
}



int main()
{   int compte = 0 ;
    char * caractere, * remise_a_zero;
    char message[N] ;
    void remise_a_zero_tableau(void *pointeur_tableau, int n) ; // prototype fonction de remise à 0
    remise_a_zero = caractere = message ;
    

    // boucle infinie ici
    while (1)
        {   int i = 0, indice_de_fin = 0 ;

            // réception du message
            printf("Votre message : ") ;
            //while (scanf("%c", message+i), *caractere!)  
            while (scanf("%c", message+i), *caractere !='\n')       
                {   i++ ;
                    caractere++ ;
                    indice_de_fin++ ;
                    printf("Boucle %d\n", i) ;
                }
            printf("Indice de fin = %d\n", indice_de_fin) ;
            printf("Sa réponse : ") ;
            for (i = indice_de_fin; i>=0; i--) printf("%c", message[i]) ;
            printf("\n") ;
            printf("Fin échange de message\n") ;
            
            // remise du tableau à 0
            //DEBUG printf("Remise à 0 du tableau\n") ;
            // remise_a_zero_tableau(remise_a_zero, N*sizeof(char)) ;
            // printf("Check si remis à 0\n") ;
            // for (i=0; i<N; i++) printf("%d : %c\n", i, message[i]) ;
            //for (i=0; i<N; i++) message[i] = '\n';
        }
}