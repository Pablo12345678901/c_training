#include <stdio.h>

void fonction1(int var_int, char var_char)
{
    printf("\nFonction1 sur une ligne :\nINT = %d, CHAR = %c\n", var_int, var_char) ;
}

void fonction2(int var_int, char var_char)
{
    printf("\nFonction2 sur deux lignes :\nINT = %d\nCHAR = %c\n", var_int, var_char) ;
}

int main()
{   int erieur = 1, i ;
    char glass = 'c' ;
    void (*pointeur) (int, char) ; // déclaration du pointeur
void fonction1(int var_int, char var_char) ; // prototype fonction1
void fonction2(int var_int, char var_char) ; // prototype fonction2
for (i=0 ; i<5; i++)
    {   printf("Boucle n°%d\n", i+1) ;
        if (i%2) {pointeur = fonction2 ;}
        else {pointeur = fonction1 ;}
        (* pointeur) (erieur, glass);
        printf("\n") ;
    }
}