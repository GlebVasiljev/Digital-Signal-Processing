close all;
clear all;

L_vajag = 50; # vajadzigais garums
plot_count = 3;
n = [0 : 17];

h1 = exp(-0.3*n);
h = h1/sum(h1);

d = [ 1 zeros(1,length(h)-1)];

g = d - h;
zf_af = conv(h, g);

h_fft = fft(h);
g_fft = fft(g);

h_padded = [h zeros(1, L_vajag-length(h))];
d_padded = [d zeros(1, L_vajag-length(d))];
g_padded = [g zeros(1, L_vajag-length(g))];


figure(1)
subplot(plot_count, 1, 1);
plot(h);
subplot(plot_count, 1, 2);
plot(g);
subplot(plot_count, 1, 3);
plot(zf_af);

figure(2)
subplot(plot_count, 1, 1);
plot(h_fft);
subplot(plot_count, 1, 2);
plot(d_fft);
subplot(plot_count, 1, 3);
plot(g_fft);


