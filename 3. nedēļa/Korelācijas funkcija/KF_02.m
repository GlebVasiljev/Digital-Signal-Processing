pkg load signal;
clear all;
close all;

a = rand(1,1000);
b = randn(1,1000);

a_rms = rms(a)
b_rms = rms(b)

figure(1)
subplot(2,1,1)
hist(a)
subplot(2,1,2)
hist(b)

print -dpng "KF_02.png"
