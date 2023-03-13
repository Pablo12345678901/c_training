#include <stdio.h>
// redaction de tous les caractères ascii (en tout cas ceux qu'on peut lire)
int main()
{   int i, j ;
    char car_put, car_get ;
    int nombre_char = 94 ;

    FILE * sortie ;
    FILE * entree ;
    char filename[] = "test2.txt" ;
    car_put = '!' ;

    // ECRITURE CHAR
    sortie = fopen(filename, "w") ;
    for (i=0; i<nombre_char; i++)
    {   fputc(car_put, sortie) ;
        car_put++ ;
    }
    fclose(sortie) ;
    
    // LECTURE CHAR
    entree = fopen(filename, "r") ;
    j = 1 ;
    while(car_get = fgetc(entree), car_get!=EOF) {printf("%d. %c\n", j, car_get); j++ ;}
    fclose(entree) ;
}