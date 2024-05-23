#include <stdio.h>

void f1(void)
{printf("Bonjour.\n");}

void f2(int nb_de_fois)
{   int i ;
    for (i=0 ; i<nb_de_fois; i++)
        printf("Bonjour.\n");
}

int f3(int nb_de_fois)
{   int i ;
    for (i=0 ; i<nb_de_fois; i++)
        printf("Bonjour.\n");
    return 5 ;
}

void f4(long nb_de_fois)
{   int i ;
    static long nb_appel = 0 ;
    static long nb_declencheur_message = 1 ;
    for (i=0 ; i<nb_de_fois ; i++)
        {   nb_appel += 1;
            if (nb_appel == nb_declencheur_message)
                {   nb_declencheur_message *= 10;
                    printf("*** appel %ld fois ***\n", nb_appel);
                }
        }
}

long fonction_Ackermann(int m, int n)
{   if (m>0 && n>0)
        return fonction_Ackermann(m-1, fonction_Ackermann(m, n-1));
    else if (m==0 && n>0)
        return n+1 ;
    else if (m>0 && n==0)
        return fonction_Ackermann(m-1, 1);
}

int main(void)
{   int a ;
    long valeur ;
    void f1(void);
    void f2(int nb_de_fois);
    int f3(int nb_de_fois);
    void f4(long nb_de_fois);
    long fonction_Ackermann(int m, int n);
    //a = f3(3) ;
    //printf("%d\n", a) ;
    //f1();
    //f2(5);
    //f4(2147483647);
    valeur = fonction_Ackermann(5, 0);
    printf("valeur fonction Ackermann : %ld\n", valeur);
}