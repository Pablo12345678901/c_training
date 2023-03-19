#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void conversion_int_vers_binaire(char * * pointeur_sur_chaine_bin, int nb)
{   
    int binaire_int[8+8] ; // int codé sur 8 bits, signe sur 8 bit
    char binaire[8+8+1] ;// int codé sur 8 bits, signe sur 8 bit, 1 bit pour la char nul
    char carac[2] ; // tableau utile pour transformer une chaîne en tableau caractère par caractère
    int i, total, resultat, reste, pos_ou_neg, retenue ;
    * pointeur_sur_chaine_bin = binaire ;
    // Gestion de l'exception du nombre négatif maximum qui donnerait 0 sinon
    if (nb == -256)
    {
        strcpy(binaire, "1111111100000000") ;
        // conservation du tableau des numéro au cas où
        carac[1] = '\0' ; // Besoin nécessaire pour la gestion de la fin de chaîne avec atoi
        for (i=0; i<16; i++)
        {   carac[0] = binaire[i] ;
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
        for (i=0 ; i<16 ; i++) sprintf(binaire+i, "%d", binaire_int[i]) ;
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
            for (i=0 ; i<16 ; i++) sprintf(binaire+i, "%d", binaire_int[i]) ;
        }
    }
}

int main()
{   
    void conversion_int_vers_binaire(char * * pointeur_sur_chaine, int nb) ; // prototype
    char * pointeur_sur_chaine_1, * pointeur_sur_chaine_2 ;
    char * pointeur_sur_chaine_3, * pointeur_sur_chaine_4 ;
    char * pointeur_sur_chaine_5, * pointeur_sur_chaine_6 ;
    int a, b, et, ou_inclusif, ou_exclusif, inverse, taille_affichage ;
    a = 1 ; // adapter le nombre ici - le reste est calculé automatiquement
    b = -100 ; // adapter le nombre ici - le reste est calculé automatiquement
    // calculs des résultats
    et = a & b ;
    ou_inclusif = a | b ;
    ou_exclusif = a ^ b ;
    inverse = ~a ;
    taille_affichage = 30 ;
    // affichage des résultats
    conversion_int_vers_binaire(&pointeur_sur_chaine_1, a) ;
    printf("a :     %*s \n", taille_affichage, pointeur_sur_chaine_1) ;

    conversion_int_vers_binaire(&pointeur_sur_chaine_2, b) ;
    printf("b :     %*s \n", taille_affichage, pointeur_sur_chaine_2) ;
    
    printf("\n") ; // esthétique

    conversion_int_vers_binaire(&pointeur_sur_chaine_3, et) ;
    printf("a & b : %*s \n", taille_affichage, pointeur_sur_chaine_3) ;
    
    conversion_int_vers_binaire(&pointeur_sur_chaine_4, ou_inclusif) ;
    printf("a | b : %*s \n", taille_affichage, pointeur_sur_chaine_4) ;

    conversion_int_vers_binaire(&pointeur_sur_chaine_5, ou_exclusif) ;
    printf("a ^ b : %*s \n", taille_affichage, pointeur_sur_chaine_5) ;

    conversion_int_vers_binaire(&pointeur_sur_chaine_6, inverse) ;
    printf("~a :    %*s \n", taille_affichage, pointeur_sur_chaine_6) ;
}