#pkg install signal;
clear all;
close all;

a = rand(1,1000);
b = randn(1,1000);

figure(1)
plot(a , "o")

print -dpng "KF_01_01.png"

figure(2)
plot(b, "o")
print -dpng "KF_01_02.png"
