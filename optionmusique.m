x=[0:3000]/4000;

%% test avec signal sinusoïdale

y=sin(2*pi*261.63*x);
%sound(y,4000);

y1=sin(2*pi*293.66*x);
%sound(y1,4000);

y2=sin(2*pi*329.63*x);
%sound(y2,4000);

y3=sin(2*pi*349.23*x);
%sound(y3,4000);

y4=sin(2*pi*392*x);
%sound(y4,4000);

y5=sin(2*pi*440*x);
%sound(y5,4000);

y6=sin(2*pi*493.88*x);
%sound(y6,4000);

y7=sin(2*pi*523.25*x);
%%sound(y7,4000);


sound(y,4000);
sound(y1,4000);
sound(y2,4000);
sound(y3,4000);
sound(y4,4000);
sound(y5,4000);
sound(y6,4000);
sound(y7,4000);