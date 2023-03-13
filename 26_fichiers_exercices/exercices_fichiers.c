#include <stdio.h>

int main()
    {   int i, j, num_ligne ;
        i = j = num_ligne = 0 ;
        int lgmax = 80 ;
        char cur_char ;
        char * pointeur_sur_tableau ;
        char ligne[lgmax], filename[]="fichier_texte.txt" ;
        pointeur_sur_tableau = ligne ;
        /*
        // Rédaction fichier
        FILE * sortie ;
        sortie = fopen(filename, "w") ;
        fprintf(sortie, "Article labellisé du jour\nL'Investiture de la reine Wilhelmine, par Nicolaas van der Waay (1898).\nL'investiture des rois des Pays-Bas (en néerlandais, inhuldiging van de koning van Nederland), aussi nommée intronisation des rois des Pays-Bas, est la cérémonie au cours de laquelle le nouveau souverain des Pays-Bas prête serment de fidélité à la Constitution, tel que l'exige l'article 32 de celle-ci.\nElle a lieu dans la Nieuwe Kerk d'Amsterdam au cours d'une séance publique des Chambres réunies des États généraux, durant laquelle le roi voit aussi les parlementaires lui prêter un serment de fidélité. Preuve d'une volonté de collaboration entre les deux pouvoirs, cet acte n'a cependant aucune conséquence sur le plan légal ou constitutionnel et ne possède qu'un caractère déclaratif. De même, et au contraire du modèle belge, elle n'a aucune incidence sur la succession car le souverain obtient son titre royal dès la mort ou l'abdication de son prédécesseur.\nCette cérémonie s'accompagne d'une exposition de l'ensemble des regalia néerlandais, disposées à la vue du souverain et des spectateurs comme symboles de la monarchie. Mis à part le manteau, aucun n'est porté ou remis au souverain.\n") ;
        fclose(sortie) ;
        */

        // Lecture fichier
        FILE * entree ;
        entree = fopen(filename,"r") ;
        printf("Début du contenu du fichier \"%s\" \n", filename) ;
        // boucle pour lire les lignes sans les '\n'
        while ((cur_char=fgetc(entree))!=EOF)

            {   if (i==lgmax-1)
                    {   ligne[lgmax-1]='\0';
                        num_ligne++ ;
                        printf("%d. \"%s\"\n", num_ligne, ligne) ;
                        for (j=0; j<lgmax; j++) ligne[j] = '\0' ; // remise à 0 du tableau
                        i = 0 ; // remise du compteur à 0
                        if (cur_char=='\n')
                            {   ligne[i] = ' ' ;
                                i++ ;
                            }
                        else 
                            {   ligne[i] = cur_char ;
                                i++ ;
                            }

                    }
                else if (cur_char=='\n')
                            {   ligne[i] = ' ' ;
                                i++ ;
                            }
                else 
                    {   ligne[i] = cur_char ;
                        i++ ;
                    }
            }
        printf("%d. \"%s\"\n", num_ligne, ligne) ;

        // boucle pour lire les lignes incluant les '\n'
        /*
        while(pointeur_sur_tableau = fgets(ligne, lgmax, entree), (pointeur_sur_tableau!=NULL))
        {   num_ligne++ ;
            printf("%d. \"%s\"\n", num_ligne, ligne) ;
        }
        */
        fclose(entree) ;
        printf("Fin du contenu du fichier \"%s\" \n", filename) ;
    }