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

fs=44100;
n=50;
 %filtrage
[b,a]=butter(n,0.5);

outf1=filter(b,a,out);

outf2=filter(b,a,out2);

outf3=filter(b,a,out3);

outf4=filter(b,a,out4);

%écouter les mesures
soundsc(out,44100); 
soundsc(outf1,44100);

soundsc(out2,44100);
soundsc(outf2,44100);

soundsc(out3,44100);
soundsc(outf3,44100);

soundsc(out4,44100);
soundsc(outf4,44100); 



% affichage tempo
t=0:(1/fs):((length(in)/fs)-(1/fs));
figure();
subplot(2,1,1);
plot(t,in);
title ("Signal temporel du Clap d'entrée dans le couloir");
subplot(2,1,2);
plot(t,outf1);hold on; plot(t,out);
title ("Signal temporel de la réponse au Clap (réponse impulsionnelle)dans le couloir");

t2=0:(1/fs):((length(in2)/fs)-(1/fs));
figure();
subplot(2,1,1);
plot(t2,in2);
title ("Signal temporel du Clap d'entrée dans la petite salle");
subplot(2,1,2);
plot(t2,outf2);
title ("Signal temporel de la réponse au Clap (réponse impulsionnelle) dans la petite salle");

t3=0:(1/fs):((length(in3)/fs)-(1/fs));
figure();
subplot(2,1,1);
plot(t3,in3);
title ("Signal temporel du chirp d'entrée dans le couloir");
subplot(2,1,2);
plot(t3,outf3);
title ("Signal temporel de la réponse au chirp dans le couloir");

t4=0:(1/fs):((length(in4)/fs)-(1/fs));
figure();
subplot(2,1,1);
plot(t4,in4);
title ("Signal temporel du chirp d'entrée dans la petite salle");
subplot(2,1,2);
plot(t4,outf4);
title ("Signal temporel de la réponse au chirp dans la petite salle");