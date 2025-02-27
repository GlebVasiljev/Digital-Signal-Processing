clear all;
close all;

A1 = 1;
A2 = 0.7;
omega1 = 2 * pi / 5;
omega2 = 2 * pi / 7;

n = [0:100];

x_n = A1 * cos(omega1 * n) + A2 * cos(omega2 * n);

subplot(3,1,1);
stem(n, x_n);

M = lcm(5, 7);

N1 = 3 * M;
N2 = 0.3 * M;

X_N1 = fft(x_n, N1);
X_N2 = fft(x_n, N2);

subplot(3,1,2);
semilogy(abs(X_N1));

subplot(3,1,3);
semilogy(abs(X_N2));

print "dpng" "FT_DFT_06.png";

