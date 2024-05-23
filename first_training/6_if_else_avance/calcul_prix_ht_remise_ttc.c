#include <stdio.h>

int main()
{
double ht, ttc, net, tauxr, remise;
printf("Quel est le prix HT ?\n");
scanf("%lf", &ht);
printf("Le prix HT est de %.2f CHF.\n", ht);
if (ht<1000)
    tauxr = 0.;
else if (ht<2000)
    tauxr = 1.;
else if (ht<5000)
    tauxr = 3.;
else
    tauxr = 5.;
    printf("Pour un prix HT de %.2f CHF, le taux de remise est de %.0f%%.\n", ht, tauxr);
remise = ht * tauxr / 100;
printf("Cette remise sera de %.2f CHF.\n", remise);
net = ht - remise;
printf("Par conséquent, le montant net sera de : %.2f CHF.\n", net);
ttc = net * 1.186;
printf("Et le montant TTC sera de %.2f CHF.\n", ttc);
printf("\nRésumé :\n");
printf("PRIX HT %10.2f CHF\n", ht);
printf("REMISE  %10.2f CHF\n", remise);
printf("NET     %10.2f CHF\n", net);
printf("TTC     %10.2f CHF\n", ttc);
}