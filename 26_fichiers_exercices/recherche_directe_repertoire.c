#include <stdio.h>

int main()
    {   int i ;
        long taille = 0 ;
        long decalage = 0 ;
        int name_size, surname_size, phone_size, num_ligne ;
        long input_size ;
        FILE * entree ;
        surname_size = 20 + 1 ;
        name_size = 15 + 1;
        phone_size = 10 + 1;
        int int_size = 3 ; // pas de +1 car c'est un int et pas une chaîne de char - âge max à 3 chiffres
        char filename[]="repertoire_tel.txt" ;
        char nom[surname_size], prenom[name_size], telephone[phone_size] ;
        int age ;
        
        int position ;
        printf("Donnez la position de la personne recherchée \n") ;
        scanf("%d", &position) ;
        printf("Position recherchée n°%d\n", position) ;
        entree = fopen(filename,"rt") ;
        fseek(entree, 0, SEEK_END) ;
        taille = ftell(entree) ; // mesure de la taille du fichier
        //DEBUG printf("La taille du fichier est %ld\n", taille) ;
        rewind(entree); // remise du pointeur au début du fichier
        decalage = (20*sizeof(char)+16*sizeof(char)+7*sizeof(char)+sizeof(int)+16*sizeof(char)+10*sizeof(char)+1*sizeof(char))*(position-1) ; // détail du décalage : nom=20char / prenom=15 char/ espace et âge = 7 char / 3 int / espace et téléphone = 11 char / téléphone = 10 char / 1 retour à la ligne
        printf("Le décalage correspond à %ld octets.\n", decalage) ;
        if (decalage > taille)  printf("La position n°%d dans \"%s\" n'existe pas.\n", position, filename) ;
        else    {   fseek(entree, decalage, SEEK_SET) ; // decalage
                    fscanf(entree, "%s %s âge : %d Téléphone %s\n", nom, prenom, &age, telephone);
                    printf("Personne %d\nNom : %s\nPrénom : %s\nâge : %d ans\nTéléphone %s\n", position, nom, prenom, age, telephone) ;
                }
        fclose(entree) ;
        printf("Fin du programme.\n") ;
    }