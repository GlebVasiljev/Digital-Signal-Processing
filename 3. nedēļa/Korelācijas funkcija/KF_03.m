pkg load signal;
clear all;
close all;


zobs = [-100 : 100];

zagis = [zobs zobs zobs zobs zobs zobs zobs zobs zobs zobs zobs zobs zobs zobs];
subplot(3,1,1)
plot(zagis)

troksnis = randn(size(zagis))
subplot(3,1,2)
plot(troksnis)

signal = zagis + 1*troksnis;
subplot(3,1,3)
plot(signal)

korelfun = xcorr(signal, signal)
figure(2)
plot(korelfun)


rms_zagis = rms(zagis)
rms_troksnis = rms(troksnis)
r2 = 20* log10(rms_zagis / rms_troksnis)
print -dpng "KF_03.png"

