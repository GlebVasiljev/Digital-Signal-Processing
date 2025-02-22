clear all;
close all;

a = 12;
b = 5;
w = 1;
t = [-5 :0.1 : 5];
x = a * cos(w*t) + b *sin(w*t);
A = sqrt(a^2 + b ^ 2);
phi = atan2(b,a);
y = A * cos(w*t - phi);
plot(y)
hold on;
plot(x,'--');
hold off;
