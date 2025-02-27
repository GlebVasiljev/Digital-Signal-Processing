close all;
clear all;

N = 1000;
w1 = 2 * pi / N * 100;
w2 = 2 * pi / N * 317;

n = 0:N-1;
x = 3 * cos(w1*n) + 4 * cos(w2*n);

X = fft(x);

# Aprēķināt un attēlot DFT (izmantojot semilogy)

subplot(4,1,1);
semilogy(abs(X)/ N)
# Blackman window
a0 = 0.42;
a1 = 0.5;
a2 = 0.08;
bw = a0 - a1 * cos( (2*pi*n) / N) + a2 * cos((4*pi*n)/N);
subplot(4,1,2);
plot(bw);

with_window = x.* bw;
subplot(4,1,3);
plot(n, with_window)

XF = fft(with_window);
subplot(4,1,4);
semilogy(abs(XF)/N)

print "dpng" "FT_DFT_07.png";
