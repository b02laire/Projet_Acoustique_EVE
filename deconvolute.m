close all; clear all;
load('salleane.mat');
f=fft(y(:,1))./fft(y(:,2));
i=ifft(f);
t=1:441000;
figure()
%plot(t',i);
tfestimate(y(:,1),y(:,2));

