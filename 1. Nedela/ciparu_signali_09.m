clear all;


x = [zeros(1,20) ones(1,20) zeros(1,20)];
y = zeros(size(x));

b = exp(-0.3);
a = 1-b;
for n = 2:length(y)
  y(n) = a * x(n) + b * y(n-1);
endfor
hold on;
stem(x)
stem(y)
hold off;

print -dpng "ciparu_signali_09.png"

