clear all;
x = [zeros(1,10) ones(1,11)];
dx = zeros(size(x));
m = [-9:11];

for n = 2:length(x)
  dx(n-1) = x(n) - x(n-1);
endfor

subplot(2,1,1)
stem(m,x);
subplot(2,1,2)
stem(m,dx);


print -dpng "ciparu_signali_02.png"
