close all; clear all;
%Create an audiorecorder object named recObj for recording audio input.
recObj = audiorecorder(44100,24,2);
%recObj2 = audiorecorder(44100,24,1);
%Record your voice for 5 seconds.
%t = 0:1/1e3:75;

disp('Start speaking.');

record(recObj);
%recordblocking(recObj2, 0.5);
pause(3);
stop (recObj);
disp('End of Recording.');

%play back the recording

%play(recObj);

%Store data in double-precision array, y.

y = getaudiodata(recObj);
plot(y);
max (y);
hold on;

##sound(y);
%Fourier Transform
##y2 = getaudiodata(recObj2);
##plot(y2);
##max (y2)
legend;
##tt=0.2:10000/441000:10000;
##
##f = fft(tt',y);
save('C:/Users/alice/musique/Projet 3A/Projet_Acoustique_EVE/Mesures/petitsalle/petitsalle_clap2.m','y');



##load('salleane.m');
[b, a]=butter(50,0.3, 'low');

f=fft(y(:,1))./fft(y(:,2));
i=ifft(1/f);
ifil=filter(b,a,i);

figure();
t=1:22000;
plot (t',ifil(1:22000));
load('couloirDbas_clap_courbe.ofig');