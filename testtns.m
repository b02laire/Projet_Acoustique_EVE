load("couloirDbas_clap.m");

soundsc(y(:,1),44100);

[b, a]=butter(50,0.3, 'low');

f=fft(y(:,1))./fft(y(:,2));
i=ifft(1/f);
ifil=filter(b,a,i);

figure();
t=1:22000;
plot (t',ifil(1:22000));
load('couloirDbas_balayage_courbe.ofig');