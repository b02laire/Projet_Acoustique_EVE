close all;clear all;
load("C:/Users/alice/musique/Projet 3A/Projet_Acoustique_EVE/Mesures/Anechoic chamber/ane_balayage.m");
ay=y;
load("C:/Users/alice/musique/Projet 3A/Projet_Acoustique_EVE/Mesures/Couloir/couloir_balayage.m");
by=y;
load("C:/Users/alice/musique/Projet 3A/Projet_Acoustique_EVE/Mesures/Escalier/escalier_balayage.m");
cy=y;
##soundsc(y(:,1),44100);

[b, a]=butter(50,0.3, 'low');

af=fft(ay(:,1))./fft(ay(:,2));
ai=ifft(1/af);
aifil=filter(b,a,ai);

bf=fft(by(:,1))./fft(by(:,2));
bi=ifft(1/bf);
bifil=filter(b,a,bi);

cf=fft(cy(:,1))./fft(cy(:,2));
ci=ifft(1/cf);
cifil=filter(b,a,ci);

figure();
t=1:22000;
subplot(3,1,1);
plot (t',aifil(1:22000),'r');
title ("Déconvolution du balayage en fréquence dans une salle anéchoïque");
subplot(3,1,2);
plot(t',bifil(1:22000),'g');
title ("Déconvolution du balayage en fréquence dans un couloir");
subplot(3,1,3);
plot(t',cifil(1:22000),'b');
title ("Déconvolution du balayage en fréquence dans une cage d'escalier");

##load('couloirDbas_balayage_courbe.ofig');