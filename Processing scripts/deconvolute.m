close all; clear all;
load('C:/Users/alice/musique/Projet 3A/Projet_Acoustique_EVE/Mesures/Anechoic chamber/ane_balayage.m');
f=fft(y(:,1))./fft(y(:,2));
i=ifft(f);
t=1:441000;
figure();
plot(t',i);
##tfestimate(y(:,1),y(:,2));

