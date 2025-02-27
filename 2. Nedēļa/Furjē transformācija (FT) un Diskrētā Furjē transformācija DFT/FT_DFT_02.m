clear all;
close all;

t = [-20: 0.25 : 20];
w = [-20: 0.25 : 20];

x_t = exp(-abs(t));
X_w = 2 ./ (1 + w.^2);

subplot(2,1,1);
plot(t, x_t);
subplot(2,1,2);
plot(w, X_w);
print "dpng" "FT_DFT_02.png";
