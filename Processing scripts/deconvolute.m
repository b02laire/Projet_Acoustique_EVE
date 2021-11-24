close all; clear all;
load('C:/Users/alice/musique/Projet 3A/Projet_Acoustique_EVE/Mesures/Couloir/couloir__clap.m');
[b, a]=butter(50,0.3, 'low');
fil1=filter(b,a,y(:,1));
fil2=filter(b,a,y(:,2));
f=fft(fil2)./fft(fil1);
i=ifft(f);
t=1:length(fil1);
figure();
plot(t',i);
##tfestimate(y(:,1),y(:,2));

iconve=conv(i,y(:,2));
soundsc(iconve,441000);