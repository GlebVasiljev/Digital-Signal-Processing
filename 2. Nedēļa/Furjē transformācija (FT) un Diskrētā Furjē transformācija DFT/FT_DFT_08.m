close all;
clear all;

N = 1000;
w1 = 2 * pi / N * 100;
w2 = 2 * pi / N * 317;

n = 0:N-1;
x = 3 * cos(w1*n) + 4 * cos(w2*n);
X = fft(x);

# Aprēķināt un attēlot DFT (izmantojot semilogy)
semilogy(abs(X)/ N);

W = zeros(N, N);
size(W)
for k = 1:N
  for l = 1:N
    W(k,l) = 1/N * exp( -( 2*i*pi/N) * (k-1) * (l-1));
  endfor
endfor

new_X = W * x';

figure(2)
semilogy(abs(new_X));
hold on;
semilogy(abs(X)/ N , 'g');

max(abs(new_X))
max(abs(X) / N)

print "dpng" "FT_DFT_08.png";
