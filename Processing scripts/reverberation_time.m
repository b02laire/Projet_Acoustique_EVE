%%%%% Pol Bodet & Alice Bourgain-Wilbal %%%%
%%%%% Filtering %%%%%
close all; clear all;
load('/home/b02laire/Documents/ENSEA/Projet/Mesures/Escalier/escalier_clap.m');

subplot(3,1,1)
plot(y(:,1))
title("Reference signal")

envelope = 20*log(abs(hilbert(y(:,1))));
subplot(3,1,2)
plot(envelope)
axis([0 100000 -150 0])
title("Hilbert Envelope")

fc=10000;
fs=44100;
[b,a]=butter(20,fc/(fs/2));
filtered = filter(b,a,y(:,2));
player1 = audioplayer(y(:,2), fs);
play(player1);
wait(3);
player = audioplayer(filtered, fs);
play(player);

 
envelope_filtered = 20*log(abs(hilbert(filtered)));
subplot(3,1,3)
plot(filtered)
title("Reference signal")
##plot(envelope)
##axis([0 100000 -150 0])
##title("Hilbert Envelope of filtered signal")