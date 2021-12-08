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

n=50;
 %filtrage
[b,a]=butter(n,0.5); 

outf1=filter(b,a,out);

outf2=filter(b,a,out2);

outf3=filter(b,a,out3);

outf4=filter(b,a,out4);

D=deconvwnr(outf3,outf1);

D1=deconvwnr(outf4,outf2);

Df=filter(b,a,D);
Df1=filter(b,a,D1);

soundsc(Df,44100);
soundsc(Df1,44100);