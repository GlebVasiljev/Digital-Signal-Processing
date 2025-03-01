close all;
clear all;

R = 8;
L = 118E-6;
C = 1E-6;

b = [1];
a = [L*C R*C 1 0];
[r, p, k, e] = residue(b, a);

t = [0 : 0.0000001 :0.0006 ];
u = zeros(size(t));

for m = 1:length(r)
  u = u + r(m) * exp(p(m)*t);
 endfor
subplot(2,1,1)
plot(t,u)


b = [L*C 0];
a = [L*C R*C 1];

[r, p, k, e] = residue(b, a);

u = zeros(size(t));
for m = 1:length(r)
  u = u + r(m) * exp(p(m)*t);
 endfor
subplot(2,1,2)
plot(t,u)
print -dpng "LT_03.png"
