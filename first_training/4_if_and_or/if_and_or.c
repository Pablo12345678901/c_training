#include <stdio.h>
#include <math.h>
#include <string.h> // bibliothèque pour gérer les string

int main()
{
//int a, b; // test avec des nombres
int a; // test avec un nombre
char b; // test avec un caractère
//double c;
//char d;
//char e[15]; // définition de la taille maximal du string (=tableau de char)
//a = 10;
//printf("Donnez deux nombre de 3 et 5 chiffres. \n");
//scanf("%3d%5d", &a, &b); // test avec des nombres au format
printf("Donnez un nombre et un caractère : \n");
scanf("%d %c", &a, &b); // test avec un nombre et caractère au format
//printf("a = %d, b = %d \n", a, b);  // test avec des nombres au format
printf("a = %d, b = %c \n", a, b); // test avec un nombre et caractère au format
//b = 3;
//c = a>b ? (double) b/a: a*a; // transformation du type avec (cast)
//printf("Taper un caractère : ");
//d = getchar(); // Test de récupération d'un caractère
//printf("Quel est votre prénom ? ");
//scanf("%s", e); // demander un string simple (sans espace) avec scanf
//gets(e); // demander un string contenant des espaces avec gets
//printf("%d / %d = %f \n", a, b, (double) a/b); // test du cast
//printf("%d / %d = %f \n", a, b, (double) (a/b)); // test du cast
//printf("c = %f \n", c);
//printf("%15.2f blablabla \n", c); // test format d'affichage
//printf("%-15.2f bliblibli \n", c);
//printf("%-15.2f %f %f blobloblo \n", c); // test du format (partie entre guillements) différent de la liste d'expression (liste var fournies)
//printf("%c \n", d);
//putchar(d); // affichage d'un caractère
//printf("Vous vous appelez : %s", e); // affichage du string
}


/*
{
int a, b, c, d, answer;

printf("Donnez 2 nombres espacés : ");
scanf("%i %i", &a, &b);
printf("Combien font %i * %i ? ", a, b);
scanf("%i", &answer);
c = a*b == answer;
d = 0;

printf("c = %i, d = %i \n", c, d);

if (c && d)
    printf("c && d = 1 \n");
else
    printf("c && d = 0 \n");

if (c || d)
    printf("c || d = 1 \n");
else
    printf("c || d = 0 \n");

printf("Le test c vaut %i \n", c);
if (c == 0)
    printf("Faux ! %i * %i valent %i \n", a, b, a*b);
else
    printf("Vrai ! %i * %i valent %i \n", a, b, answer);
    
}
*/