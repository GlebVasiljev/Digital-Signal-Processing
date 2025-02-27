close all;
clear all;

N = 100;
n = 0:N-1;
h = exp(-0.3 * n);
g = [1, -h(1:end-1)];

b = conv(h, g);


H = fft(h, N);
G = fft(g, N);
B = fft(b, N);


f = (0:N-1)/N;

figure;
subplot(4,1,1);
plot(f, abs(H));

subplot(4,1,2);
plot(f, abs(G));

subplot(4,1,3);
plot(f, abs(B));

HG = H .* G;

subplot(4,1,4);
plot(f, abs(HG), 'r', f, abs(B), 'b--');

print "dpng" "FT_DFT_10.png";



