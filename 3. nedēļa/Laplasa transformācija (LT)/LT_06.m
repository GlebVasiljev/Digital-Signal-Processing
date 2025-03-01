close all;
clear all;

subplot(2,2,1)
R = 1000;
C = 1e-6;
k = 1.5;

b = [k*R*C 0];
a = [R*R*C*C  (3-k)*R*C 1];
t = [0 : 0.0001 :0.06 ];
u = zeros(size(t));
[r, p, k, e] = residue(b, a);

for m = 1:length(r)
  u = u + r(m) * exp(p(m)*t);
 endfor
plot(t,u)

subplot(2,2,2)
R = 1000;
C = 1e-6;
k = 2.7;

b = [k*R*C 0];
a = [R*R*C*C  (3-k)*R*C 1];
t = [0 : 0.0001 :0.06 ];
u = zeros(size(t));
[r, p, k, e] = residue(b, a);

for m = 1:length(r)
  u = u + r(m) * exp(p(m)*t);
 endfor
plot(t,u)


subplot(2,2,3)
R = 1000;
C = 1e-6;
k = 3.2;

b = [k*R*C 0];
a = [R*R*C*C  (3-k)*R*C 1];
t = [0 : 0.0001 :0.06 ];
u = zeros(size(t));
[r, p, k, e] = residue(b, a);

for m = 1:length(r)
  u = u + r(m) * exp(p(m)*t);
 endfor
plot(t,u)

subplot(2,2,4)
R = 1000;
C = 1e-6;
k = 4.2;

b = [k*R*C 0];
a = [R*R*C*C  (3-k)*R*C 1];
t = [0 : 0.0001 :0.06 ];
u = zeros(size(t));
[r, p, k, e] = residue(b, a);

for m = 1:length(r)
  u = u + r(m) * exp(p(m)*t);
 endfor
plot(t,u)



print -dpng "LT_06.png"
