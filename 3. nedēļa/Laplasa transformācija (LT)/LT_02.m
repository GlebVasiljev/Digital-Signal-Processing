close all;
clear all;

R = 2;
L = 118E-6;
C = 1E-6;

b = [R*C 0];
a = [L*C R*C 1 0];
[r, p, k, e] = residue(b, a);

t = [0 : 0.000001 :0.0006 ];
u = zeros(size(t));

for m = 1:length(r)
  u = u + r(m) * exp(p(m)*t);
 endfor

plot(t,u)
print -dpng "LT_02.png"
