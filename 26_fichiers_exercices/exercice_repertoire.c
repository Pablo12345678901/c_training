#include <stdio.h>
#include <stdlib.h>

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

        char filename[]="repertoire_tel.txt" ;
        char nom[surname_size], prenom[name_size], telephone[phone_size], input[input_size] ;
        int age ;
        
        printf("Début écriture du fichier \"%s\" \n", filename) ;
        sortie = fopen(filename, "w") ;
        printf("Fournissez les informations suivantes : nom, prénom, âge, téléphone séparée par un espace\n") ;
        while (fgets(input, input_size, stdin)!=NULL)
        {   if (input[0]!='\n')
                {   i++ ;
                    printf("Personne %d créée \n", i) ;
                    fflush(stdin);
                    sscanf(input, "%20s %15s %3d %10s", nom, prenom, &age, telephone) ;
                    fprintf(sortie, "%20s %15s âge : %3d Téléphone %10s\n", nom, prenom, age, telephone) ;
                }
            else
                {  printf("Fin de la création de personne. Nb personne %d\n", i) ;
                    break ;
                }
        }
        printf("Fin écriture du fichier \"%s\" \n", filename) ;
        fclose(sortie) ;
        
        printf("Début lecture du fichier \"%s\" \n", filename) ;
        entree = fopen(filename,"r") ;
        while (fscanf(entree, "%s %s âge : %d Téléphone %s\n", nom, prenom, &age, telephone)!=EOF)
        {   num_ligne++ ;
            printf("Personne %d\nNom : %s\nPrénom : %s\nâge : %d ans\nTéléphone %s\n", num_ligne, nom, prenom, age, telephone) ;
        }
        printf("Fin lecture \"%s\" \n", filename) ;
        fclose(entree) ;
    }