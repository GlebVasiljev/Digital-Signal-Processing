clear all;
close all;

u0 = 1;
tau = 1;
w = [-10 : 0.1 : 10];

U_w = u0 * tau * sqrt(2 * pi) * exp(- (w.^2 * tau^2) / 2);

plot(w, U_w);

print -dpng 'FT_DFT_03.png'

