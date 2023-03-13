#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
    {   int i ;
        int name_size, surname_size, phone_size, num_ligne ;
        long input_size ;
        FILE * entree ;
        FILE * sortie ;
        i = num_ligne = 0 ;
        surname_size = 20 + 1 ;
        name_size = 15 + 1;
        phone_size = 10 + 1;
        int int_size = 3 ; // pas de +1 car c'est un int et pas une chaîne de char - âge max à 3 chiffres
        input_size = surname_size + name_size + int_size + phone_size + 3  ; // input_size = toute les sizes + au max 3 espaces entre les éléments
        int lengh ;
        char filename[]="repertoire_tel.txt" ;
        char nom[surname_size], prenom[name_size], telephone[phone_size], input[input_size] ;
        int age ;
        
        // donner le nom
        char nom_recherche[name_size] ;
        printf("Donnez le nom de la personne recherchée \n") ;
        fgets(nom_recherche, name_size, stdin) ;
        lengh = strlen(nom_recherche) ;
        nom_recherche[lengh-1] = '\0' ;
        printf("Nom recherché : %s\n", nom_recherche) ;
        entree = fopen(filename,"r") ;
        while (fscanf(entree, "%s %s âge : %d Téléphone %s\n", nom, prenom, &age, telephone)!=EOF)
        {   num_ligne++ ;
            if (!strcasecmp(nom, nom_recherche))
            {   printf("Personne %d\nNom : %s\nPrénom : %s\nâge : %d ans\nTéléphone %s\n", num_ligne, nom, prenom, age, telephone) ;
                fclose(entree) ;
                return 0 ;
            }
        }
        printf("La recherche de \"%s\" dans \"%s\" n'a rien donné.\n", nom_recherche, filename) ;
        fclose(entree) ;
    }