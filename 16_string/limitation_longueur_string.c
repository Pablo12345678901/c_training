#include <stdio.h>

int main()
{   char prenom_et_chiffre[20] ;
    char caractere ;
    int chiffre, compte = 0 ;
    do 
        {   printf("Donnez un caractère et un chiffre > ") ;
            gets(prenom_et_chiffre) ;
            compte = sscanf(prenom_et_chiffre, "%c %d", &caractere, &chiffre) ;
        } while (compte < 2) ;
    printf("Votre prénom est %c et vous avez choisi le chiffre %d\n", caractere, chiffre) ;
}