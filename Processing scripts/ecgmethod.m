close all; clear all; 
# On charge les données
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

##figure ();
##subplot(2,1,1);
##plot(ecgfoetus(:,1));
##subplot(2,1,2);
##plot(ecgfoetus(:,2));

p=50;

rxy=xcorr(out,in,p-1);
rxx=xcorr(in,in,p-1);
rxy=rxy(p:end);
rxx=rxx(p:end);

Mxx=toeplitz(rxx);

W=inv(Mxx)*rxy;

filtre=filter(W,1,in);

babyresolve=out-filtre;

figure ();
subplot(3,1,1);
plot(in);
subplot(3,1,2);
plot(out);
subplot(3,1,3);
plot(babyresolve);

cin=conv(in3,babyresolve);

soundsc(cin,44100);
soundsc(in3,44100);