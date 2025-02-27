clear all;
close all;

omega_0 = 10;
t = [-10: 0.1: 10];

x_t = (1 / (2 * pi)) * 2 * omega_0 * sinc(omega_0 * t / pi);

figure(1);
plot(t, x_t)

print -dpng 'FT_DFT_04.png'

