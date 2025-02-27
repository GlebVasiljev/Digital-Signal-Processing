clear all;
close all;

A1 = 1;
A2 = 0.7;
omega1 = 2 * pi / 5;
omega2 = 2 * pi / 7;


n = [0:76];

x_n = A1 * cos(omega1 * n) + A2 * cos(omega2 * n);


figure(1);
stem(n, x_n);

M = lcm(5, 7)

print "dpng" "FT_DFT_05.png";
