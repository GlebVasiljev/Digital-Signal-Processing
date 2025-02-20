clear all;
close all;
plt_count = 4;

n = [0:17];
h1 = exp(-0.3*n);
h = h1 / sum(h1);
d = [1 zeros([1,17])];
g = d - h;
k = conv(h, g);
delta = [zeros(1,50) 1 zeros(1,50)];
tests = [zeros(1,50) ones(1,50) zeros(1,50)];


# Filtrē testa signālus ar abām secībām:
y1_d = conv(g, conv(h, delta));
y1_s = conv(g, conv(h, tests));

y2_d = conv(h, conv(g, delta));
y2_s = conv(h, conv(g, tests));

subplot(plt_count, 1, 1);
plot(y1_d);
subplot(plt_count, 1, 2);
plot(y1_s);
subplot(plt_count, 1, 3);
plot(y2_d);
subplot(plt_count, 1, 4);
plot(y2_s);

print -dpng "CS_08.png"
