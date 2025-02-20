clear all;
close all;

N = 100;
# |Z| > 1
z = 1.2 + 0.3i;
zn = zeros(1, N+1);

for n = 0:N
  zn(n+1) = z^n;
endfor

subplot(3,1,1);
    plot(real(zn), imag(zn));
    hold on;
    axis equal;

# |Z| = 1
z = exp(1i * pi / 4)
zn = zeros(1, N+1);

for n = 0:N
  zn(n+1) = z^n;
endfor

subplot(3,1,2);
    plot(real(zn), imag(zn));
    hold on;
    axis equal;


# |Z| < 1
z = 0.5 + 0.2i;
zn = zeros(1, N+1);

for n = 0:N
  zn(n+1) = z^n;
endfor

subplot(3,1,3);
    plot(real(zn), imag(zn));
    hold on;
    axis equal;


print -dpng "KS_06.png"

