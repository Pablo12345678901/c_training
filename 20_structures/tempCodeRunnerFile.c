do {    printf("Quelle est la dimension 1 du cube ? ") ;
                gets(tableau) ;
                compte = sscanf(tableau, "%d ", &cube_1.dimension1) ; } while (compte!=1) ;