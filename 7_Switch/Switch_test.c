#include <stdio.h>

int main()
{
int boolean;
double nb1, nb2;
printf("Donnez 2 nombres : ");
scanf("%lf %lf", &nb1, &nb2);
printf("Test si %.2f est plus grand que %.2f\n", nb1, nb2);
boolean = nb1 < nb2;
//boolean = 23;

switch( boolean )
{
    case 0: printf("%.2f est plus grand que %.2f\n", nb1, nb2);
        break;
    case 1: printf("%.2f est plus grand que %.2f\n", nb2, nb1);
        break;
    default: printf("ERREUR : le test n'a pas fonctionné.\n");
        break;
}
printf("Fin du programme\n.");
}