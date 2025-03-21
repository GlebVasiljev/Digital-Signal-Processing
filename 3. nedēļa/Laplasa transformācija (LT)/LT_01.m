close all;
clear all;

b = [0e-4 1]
a = [1e-4 1 0]

[r, p, k, e] = residue(b, a);

t = [0 : 0.00001 :0.0005 ];
u = zeros(size(t));

for m = 1:length(r)
  u = u + r(m) * exp(p(m)*t)
 endfor
plot(t,u)

print -dpng "LT_01.png"
