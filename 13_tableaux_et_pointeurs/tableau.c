#include <stdio.h>
#define CONSTANTE 10

int main()
{   int t[CONSTANTE] ;
    int somme_notes = 0, i ;
    float moyenne = 0, ecart_moyenne = 0 ;

    for ( i=0 ; i<CONSTANTE ; i++)
    {   printf("Quelle est la note %d ? > ", i+1) ;
        scanf("%d", &t[i]) ;
        somme_notes += t[i] ;
    }

    printf("La somme est notes est de %d.\n", somme_notes) ;
    moyenne = (float) somme_notes / CONSTANTE ;
    printf("La moyenne de la classe est %.2f.\n\n", moyenne) ;

    for (i=0 ; i<CONSTANTE ; i++)
    {   ecart_moyenne = t[i] - moyenne ;
        printf("L'écart de la %dème note équivalente à %d par rapport à la moyenne de %.2f est de %.2f.\n", i+1, t[i], moyenne, ecart_moyenne) ; 

        if (ecart_moyenne<0)
        {   printf("La note de %d est moins bonne que la moyenne de %.2f.\n\n", t[i], moyenne) ;}
        
        else if (ecart_moyenne>0)
        {   printf("La note de %d est meilleure que la moyenne de %.2f.\n\n", t[i], moyenne) ;}
        
        else
        {   printf("La note de %d est exactement dans la moyenne de %.2f.\n\n", t[i], moyenne) ;}
    }
}
