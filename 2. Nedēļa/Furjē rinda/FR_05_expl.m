close all;
clear all;

# piemērs ar sinusiem un kosinusiem
x_tmp = [-5 -2.5 -2.5 0 2.5 2.5 5];
y_tmp = [0 7.5 0 0 7.5 0 0]

T = 5;
omega = 2 * pi / T;

t = [ -5: 0.01: 5];
a0 = 15/4;
f = ones(size(t)) * a0/2;
plot(x_tmp,y_tmp)
hold on;

for n = 1:50
  a_n = 15  / (2 * pi ^ 2 * n ^ 2) * ( (-1)^n - 1);
  b_n = 15 / (2 * pi * n) * ( (-1) ^ (n+1));
  f = f +  a_n * cos(n * omega * t) + b_n * sin(n*omega*t);
endfor

plot(t,f)


# piemērs ar kompleksiem skaitliem
figure(2)
c0 = 15 / 8;
f = ones(size(t)) * c0;
N = 5;
for n = -N:N
  if n == 0
    continue
  endif

  a_n = 15  / (2 * pi ^ 2 * n ^ 2) * ( (-1)^n - 1);
  b_n = 15 / (2 * pi * n) * ( (-1) ^ (n+1));
  c_n = 1/2 * (a_n - i * b_n);
  f = f + c_n * exp(j*n*omega*t) ;
endfor

plot(t, real(f));
hold on;
plot(x_tmp,y_tmp);

