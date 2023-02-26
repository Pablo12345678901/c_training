#include <stdio.h>

int main()
{
int c, i;
/*
do
{
printf("Donner un nombre entier plus grand que 0 : ");
scanf("%d", &c);
printf("Vous avez fourni %d\n", c);
}
while (c <= 0);
*/
/*
c = 0, printf("%d\n", c);
while (c <= 0)
{
printf("Donner un nombre entier plus grand que 0 : ");
scanf("%d", &c);
printf("Vous avez fourni %d\n", c);
if (c <= 0)
{printf("Faux, %d n'est pas un nombre entier plus grand que 0. -> Réessayez !\n", c);}
else
//printf("Bravo : le nombre %d est un nombre entier plus grand que 0.\n", c);
break;
}
*/
for (i = 0; i < 3 ; i++)
{
    /*
    if (i == 1)
        continue;
    else
    */
    {
    printf("Essai n° %d : il vous reste %d essai(s).\n", i+1, 3-i);
    printf("Donner un nombre entier plus grand que 0 : ");
    scanf("%d", &c);
    printf("Vous avez fourni %d\n", c);
    }

    if (c <= 0)
    {
            printf("Faux, %d n'est pas un nombre entier plus grand que 0. -> Réessayez !\n", c);
            printf("Il vous reste %d vie\n", 3-i-1);
    }
    else
    {
        printf("Bravo : le nombre %d est un nombre entier plus grand que 0.\n", c);
        if (c != 2)
        goto antibreak;
        break;
    }
printf("Fin boucle %d\n", i+1);
antibreak : printf("antibreak\n");
}
}