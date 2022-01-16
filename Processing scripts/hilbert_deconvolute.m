close all; clear all;
load('/home/b02laire/Documents/ENSEA/Projet/Mesures/Escalier/escalier_clap.m');
##x=hilbert(y(:,1))./hilbert(y(:,2));
##dft=fft(x);
##t=1:132300;
fs=44100;
##t_fft=0:1/fs:1; 
##plot(t_fft,real(x),t,imag(x))
##%xlim([1 10]);
##legend('real','imaginary')
##title('hilbert Function')
##xlabel('Time (s)')
##%plot(t',dft);


##x=fft(y(:,1));
##t=1:132300;
##p = unwrap(angle(x));
##f = (0:length(x)-1)*100/length(x);
##subplot(2,1,1)
##plot(f,p*180/pi)
##title('Phase')
##subplot(2,1,2)
##plot(f,abs(x))
##title('Magnitude')


%%%%%%%%


tfestimate(y(:,2),y(:,1),2048,[],[],fs)
