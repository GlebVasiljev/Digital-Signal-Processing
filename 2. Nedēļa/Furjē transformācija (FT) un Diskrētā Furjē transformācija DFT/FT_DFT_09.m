close all;
clear all;

N = 1000;
w1 = 2 * pi / N * 10;
w2 = 2 * pi / N * 35;

n = 0:N-1;
x = 3 * sin(w1*n) + 5 * sin(w2*n);
X = fft(x);

plot(n,x)
hold on;

new_X = ifft(X);
plot(n,new_X,'r--')

print "dpng" "FT_DFT_09.png";

