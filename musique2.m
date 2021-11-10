close all;
%Create an audiorecorder object named recObj for recording audio input.
recObj = audiorecorder(44100,24,2);
%recObj2 = audiorecorder(44100,24,1);
%Record your voice for 5 seconds.
t = 0:1/1e3:75;
y = chirp(t,20,3000,20000);

disp('Start speaking.');

recordblocking(recObj, 10);
recordblocking(recObj2, 0.5);
sound(y);
disp('End of Recording.');

%play back the recording

play(recObj);

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
save('salleane.m','y');
##spectre=result.signals(1).values(:,1);
##rampe=result.signals(1).values(:,2);
##max=length(rampe);
##df=400e3/max;
##freq=50e3:df450e3-df);
##plot(freq,spectre);
##grid
##title('analyse spectrale');
##xlabel('fréquence (Hz)');
##ylabel('amplitude (V)');

##Plot the audio samples.
##figure(1);
##subplot(2,1,1);
##plot(y);
##subplot(2,1,2);
##plot(f);
