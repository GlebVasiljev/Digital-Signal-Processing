pkg load signal;
clear all;
close all;



chirp_f = sin([0:63].^2*pi/128)
tiirs_rx = 5 * [zeros(1,250) chirp_f zeros(1,250)];

subplot(4,1,1)
plot(tiirs_rx)
troksnis = 0.3 * randn(size(tiirs_rx));

subplot(4,1,2);
rx = tiirs_rx + troksnis;
plot(rx);


subplot(4,1,3)
c = xcorr(rx,chirp_f);
starn_n = length(rx);
cc = c(starn_n:length(c));
plot(cc)

flipchirp = flipdim(chirp_f);
d = conv(rx,flipchirp, "same");
subplot(4,1,4)
plot(d)

print -dpng "KF_05.png"
