clear all;

delta = [zeros(1,10) 1 zeros(1,10)];
n = [-10:10];

subplot(2,1,1)
stem(n,delta)

subplot(2,1,2)
s = zeros(size(delta));

for m = 2:length(s)
  s(m) = s(m-1) + delta(m)
endfor
stem(n,s)

print -dpng "ciparu_signali.png"
