#include <stdio.h>
#define NPOINTS 3
struct point    {   int num ;
                    float x ;
                    float y ;
                } ;

//void lit(struct point courbe[])
void lit(struct point * courbe)
    {   int i ;
        for(i=0 ; i<NPOINTS; i++)
            {   printf("num : ") ;
                scanf("%d", &courbe[i].num) ;
                printf("x : ") ;
                scanf("%f", &courbe[i].x) ;
                printf("y : ") ;
                scanf("%f", &courbe[i].y) ;
            }
    }

//void affiche(struct point courbe[])
void affiche(struct point * courbe)
{   int i ;
    printf("Structure fournie \n") ;
    for(i=0 ; i<NPOINTS; i++) printf("%d %f %f\n", courbe[i].num, courbe[i].x, courbe[i].y) ;
}

// void lit(struct point []) ; // prototype
void lit(struct point * courbe) ;
// void lit(struct point []) ; // prototype
void affiche(struct point * courbe) ; // prototype

int main()
    {   struct point courbe[NPOINTS] ;
        lit(courbe) ;
        affiche(courbe) ;
    }



