close all;
clear all;

t = [-2: 0.01 : 2];
x = 5 * exp(j* (2 * pi * t + pi/4));

#plot(real(),x);
hold on;
plot(t, real(x),'r--');
plot(t, imag(x),'b--');


print "dpng" "FR_04.png"
