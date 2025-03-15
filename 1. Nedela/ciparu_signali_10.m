clear all;
close all;

r = 0.5;
n = [1:20];
result = zeros(0:20)

for m = 2:20
  result(m) = result(m-1) + r * r^(m-1)

plot(n,result)
