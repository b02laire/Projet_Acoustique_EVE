clear all;close all;
load('C:/Users/alice/musique/Projet 3A/Projet_Acoustique_EVE/Mesures/Couloir/couloir_clap2.m','y');
in=y(:,2);
out=y(:,1);
load('C:/Users/alice/musique/Projet 3A/Projet_Acoustique_EVE/Mesures/petitsalle/petitsalle_clap2.m','y');
in2=y(:,2);
out2=y(:,1);
load('C:/Users/alice/musique/Projet 3A/Projet_Acoustique_EVE/Mesures/Couloir/couloir_balayage2.m','y');
in3=y(:,2);
out3=y(:,1);
load('C:/Users/alice/musique/Projet 3A/Projet_Acoustique_EVE/Mesures/petitsalle/petitesalle_balayage2.m','y');
in4=y(:,2);
out4=y(:,1);

D=deconvwnr(out3,out);