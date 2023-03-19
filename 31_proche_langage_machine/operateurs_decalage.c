#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//CODE FONCTIONNEL 
// SAUF LA FONCTION DE CONVERSION CAR FONCTIONNE UNIQUEMENT AVEC LES SIGNED INT
// ET PAS AVEC LES UNSIGNED INT

void conversion_int_vers_binaire(char * * pointeur_sur_tableau_chaine_bin, int nb)
{   
    int binaire_int[8+8] ; // int codé sur 8 bits, signe sur 8 bit
    // char binaire[8+8+1] ;// int codé sur 8 bits, signe sur 8 bit, 1 bit pour la char nul
    char carac[2] ; // tableau utile pour transformer une chaîne en tableau caractère par caractère
    int i, total, resultat, reste, pos_ou_neg, retenue ;
    //pointeur_sur_tableau_chaine_bin = calloc(16,sizeof(char))
    //* pointeur_sur_tableau_chaine_bin = binaire ;
    // Gestion de l'exception du nombre négatif maximum qui donnerait 0 sinon
    if (nb == -256)
    {
        strcpy(*pointeur_sur_tableau_chaine_bin, "1111111100000000") ;
        // conservation du tableau des numéro au cas où
        carac[1] = '\0' ; // Besoin nécessaire pour la gestion de la fin de chaîne avec atoi
        for (i=0; i<16; i++)
        {   carac[0] = **(pointeur_sur_tableau_chaine_bin+i) ;
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
        for (i=0 ; i<16 ; i++) sprintf((*pointeur_sur_tableau_chaine_bin)+i, "%d", binaire_int[i]) ;
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
            for (i=0 ; i<16 ; i++) sprintf((*pointeur_sur_tableau_chaine_bin)+i, "%d", binaire_int[i]) ;
        }
    }
}

int main()
{   
    void conversion_int_vers_binaire(char * * pointeur_sur_tableau_chaine_bin, int nb) ; // prototype
    int var1_signed, var2_signed, res1, res2, res3, res4 ;

    char tableau_1[17], tableau_2[17] ;
    char tableau_5[17], tableau_6[17] ;
    char tableau_7[17], tableau_8[17] ;

    char * pointeur_sur_tableau_chaine_bin_1, * pointeur_sur_tableau_chaine_bin_2 ;
    char * pointeur_sur_tableau_chaine_bin_5, * pointeur_sur_tableau_chaine_bin_6 ;
    char * pointeur_sur_tableau_chaine_bin_7, * pointeur_sur_tableau_chaine_bin_8 ;

    pointeur_sur_tableau_chaine_bin_1 = tableau_1 ;
    pointeur_sur_tableau_chaine_bin_2 = tableau_2 ;
    pointeur_sur_tableau_chaine_bin_5 = tableau_5 ;
    pointeur_sur_tableau_chaine_bin_6 = tableau_6 ;
    pointeur_sur_tableau_chaine_bin_7 = tableau_7 ;
    pointeur_sur_tableau_chaine_bin_8 = tableau_8 ;

    var1_signed = 139 ;
    var2_signed = -210 ;
    res1 = var1_signed << 2 ;
    res2 = var2_signed << 2 ;
    res3 = var1_signed >> 3 ;
    res4 = var2_signed >> 3 ;
    
    conversion_int_vers_binaire(&pointeur_sur_tableau_chaine_bin_1, var1_signed) ;
    conversion_int_vers_binaire(&pointeur_sur_tableau_chaine_bin_2, var2_signed) ;
    conversion_int_vers_binaire(&pointeur_sur_tableau_chaine_bin_5, res1) ;
    conversion_int_vers_binaire(&pointeur_sur_tableau_chaine_bin_6, res2) ;
    conversion_int_vers_binaire(&pointeur_sur_tableau_chaine_bin_7, res3) ;
    conversion_int_vers_binaire(&pointeur_sur_tableau_chaine_bin_8, res4) ;

    printf("VAR 1 = %d :      %s \nVAR1 << 2 = %d :  %s \n\n", var1_signed, pointeur_sur_tableau_chaine_bin_1, res1, pointeur_sur_tableau_chaine_bin_5) ;
    printf("VAR 2 = %d :     %s \nVAR2 << 2 = %d : %s \n\n", var2_signed, pointeur_sur_tableau_chaine_bin_2, res2, pointeur_sur_tableau_chaine_bin_6) ;
    printf("VAR 1 = %d :      %s \nVAR1 >> 3 = %d :   %s \n\n", var1_signed, pointeur_sur_tableau_chaine_bin_1, res3, pointeur_sur_tableau_chaine_bin_7) ;
    printf("VAR 2 = %d :     %s \nVAR2 << 3 = %d :  %s \n\n", var2_signed, pointeur_sur_tableau_chaine_bin_2, res4, pointeur_sur_tableau_chaine_bin_8) ;
}
