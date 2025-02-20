clear all;
close all;


T_s = 0.01;           % Nolases periods
t = 0:T_s:1;         % Laika intervāls
A = 2;               % Amplitūda
w = 10;              % Leņķiskā frekvence

x = A * cos(w * t);  % Diskretizētais signāls
subplot(2,1,1);
plot(t, x);

n = [2:length(x)];

x1 = zeros(length(x))
x1(1) = 0;

for n = 2:length(x)
  x1(n) = (x(n) - x(n-1))/ T_s;
endfor
subplot(2,1,2);
plot(t, x1);

print -dpng "CS_03.png"
