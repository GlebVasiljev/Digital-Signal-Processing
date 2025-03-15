clear all;

h1 = exp(-[0:17]*0.3);
h = h1/sum(h1)

delta = [zeros(1,20) 1 zeros(1,20)];
tests = [zeros(1,20) ones(1,20) zeros(1,20)];

yd = conv(delta,h)
ys = conv(tests,h)

subplot(2,1,1)
stem(yd)
subplot(2,1,2)
stem(ys)

print -dpng "ciparu_signali_05.png"
