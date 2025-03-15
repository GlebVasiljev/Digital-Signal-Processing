clear all;

h1 = exp(-[0:17]*0.3);
h = h1/sum(h1)

d = [1 zeros([1,17])]

#g = zeros(size(h));
#for n = 1:length(h)
#  g(n) = d(n) - h(n);
#endfor

g = d - h;
subplot(3,1,1)
stem(g)

delta = [zeros(1,20) 1 zeros(1,20)];
tests = [zeros(1,20) ones(1,20) zeros(1,20)];

r1 = conv(g,delta);
r2 = conv(g,tests);

subplot(3,1,2);
stem(r1);
subplot(3,1,3);
stem(r2);

print -dpng "ciparu_signali_06.png"
