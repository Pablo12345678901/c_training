#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//CODE FONCTIONNEL 
// SAUF LA FONCTION DE CONVERSION CAR FONCTIONNE UNIQUEMENT AVEC LES SIGNED INT
// ET PAS AVEC LES UNSIGNED INT


    void conversion_int_vers_binaire(char (* * pointeur_sur_tableau_de_tableau_de_chaine_bin)[17], int nb, int index, int dimension)
{   
    int binaire_int[8+8] ; // int codé sur 8 bits, signe sur 8 bit
    char carac[2] ; // tableau utile pour transformer une chaîne en tableau caractère par caractère
    int i, total, resultat, reste, pos_ou_neg, retenue ;
    // Gestion de l'exception du nombre négatif maximum qui donnerait 0 sinon
    if (nb == -256)
    {
        strcpy((*pointeur_sur_tableau_de_tableau_de_chaine_bin)[index], "1111111100000000") ;
        // conservation du tableau des numéro au cas où
        carac[1] = '\0' ; // Besoin nécessaire pour la gestion de la fin de chaîne avec atoi
        for (i=0; i<16; i++)
        {   
            carac[0] = *((*pointeur_sur_tableau_de_tableau_de_chaine_bin)[index]+i) ;
            binaire_int[i] = atoi(carac) ;
        }
    }
    else
    {
        total = abs(nb) ;
        for (i=0; i<8; i++) binaire_int[i] = 0 ;
        for (i=15; i>7; i--)
        {   
            resultat = total/2 ;
            reste = total - (resultat*2) ;
            binaire_int[i] = reste ;
            total = resultat ;
        }
        for (i=0 ; i<16 ; i++) sprintf((*pointeur_sur_tableau_de_tableau_de_chaine_bin)[index]+i, "%d", binaire_int[i]) ;
        // Technique du complémnent à 2 si nb négatif
        if (nb<0)
        {   
            // inversion de chaque nombre
            for (i=0 ; i<16 ; i++) binaire_int[i] = binaire_int[i]== 1 ? 0 : 1 ;
            // ajout d'une unité au final
            if (binaire_int[15]==0) binaire_int[15] = 1 ;
            else
            {   binaire_int[15] = 0 ;
                retenue = 1 ;
                for (i=15-1 ; i>=0 ; i--)
                {   if (retenue == 0) break ;
                    else if (binaire_int[i] == 0)
                    {
                        binaire_int[i] = 1 ;
                        retenue = 0 ;
                    }
                    else binaire_int[i]=0 ;
                }
            }
            for (i=0 ; i<16 ; i++) sprintf((*pointeur_sur_tableau_de_tableau_de_chaine_bin)[index]+i, "%d", binaire_int[i]) ;
        }
    }
}


int main()
{   
    // THEORIE A COPIE DANS MES NOTES
    // On dereferencing *(arr + i) + j we will get the value of jth element of i th 1-D array.
    // accéder aux élément du tableau avec : *( *(arr + i) + j)
    // printf("Address of %d th array %u \n",i , p + i);
    // Similarly, If a 2-D array has 3 rows and 4 cols i.e int arr[3][4], then you will need a pointer to an array of 4 integers.
    // int (*p)[3];
    
    void conversion_int_vers_binaire(char (* * pointeur_sur_tableau_de_tableau_de_chaine_bin)[17], int nb, int index, int dimension) ; // prototype
    int var1_signed, var2_signed, res1, res2, res3, res4 ;
    int varx_signed, index, dimension, i ;

    varx_signed = 1 ;
    index = 0 ;
    dimension = 17 ;
    int tableau_var[6] ;
    tableau_var[0] = 139 ;
    tableau_var[1] = -210 ;
    tableau_var[2] = tableau_var[0] << 2 ;
    tableau_var[3] = tableau_var[1] << 2 ;
    tableau_var[4] = tableau_var[0] >> 3 ;
    tableau_var[5] = tableau_var[1] >> 3 ;

    char tableau_x[6][17] ;

    char (* pointeur_sur_tableau_chaine_bin_x)[17] ;
    pointeur_sur_tableau_chaine_bin_x = tableau_x ;
    for (i=0; i<6 ; i++)
    {   
        index = i ;
        conversion_int_vers_binaire(&pointeur_sur_tableau_chaine_bin_x, tableau_var[i], index, dimension) ;
        var1_signed += 10 ;
    }
    printf("Fin de la fonction\n") ;
    //DEBUG for (i=0; i<6 ; i++) printf("TABLEAU INDEX %d : %s\n", i, tableau_x[i]) ;

    printf("VAR 1 = %d :      %s \nVAR1 << 2 = %d :  %s \n\n", tableau_var[0], tableau_x[0], tableau_var[2], tableau_x[2]) ;
    printf("VAR 2 = %d :     %s \nVAR2 << 2 = %d : %s \n\n", tableau_var[1], tableau_x[1], tableau_var[3], tableau_x[3]) ;
    printf("VAR 1 = %d :      %s \nVAR1 >> 3 = %d :   %s \n\n", tableau_var[0], tableau_x[0], tableau_var[4], tableau_x[4]) ;
    printf("VAR 2 = %d :     %s \nVAR2 >> 3 = %d :  %s \n\n", tableau_var[1], tableau_x[1], tableau_var[5], tableau_x[5]) ;
}
