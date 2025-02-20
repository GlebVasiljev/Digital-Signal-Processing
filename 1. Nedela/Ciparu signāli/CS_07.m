clear all;
close all;

plt_count = 5;


n = [0:17];
h1 = exp(-0.3*n);
h = h1 / sum(h1);

subplot(plt_count, 1, 1);
plot(h)

d = [1 zeros([1,17])];
g = d - h;
subplot(plt_count, 1, 2);
plot(g)

# Izveido kaskādes filtru, konvolvējot h [ n ] un g [ n ] :
k = conv(h, g);
subplot(plt_count, 1, 3);
plot(k);

# Izveido divus testa signālus ar palielinātu garumu:
delta = [zeros(1,40) 1 zeros(1,40)];
tests = [zeros(1,40) ones(1,40) zeros(1,40)];

# Pārbaudi kaskādes filtru ar testa signāliem:
y_d = conv(k, delta);
y_s = conv(k, tests);

# Attēlo visus signālus grafikā, izmantojot subplot:
subplot(plt_count, 1, 4);
plot(y_d);
subplot(plt_count, 1, 5);
plot(y_s);

print -dpng "CS_07.png"
