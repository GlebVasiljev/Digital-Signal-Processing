clear all;
close all;

w = [-20 :0.3: 20]; # 0.3 lai butu 0 punkts
f = i ./ w .* (exp(-i.*w)-1);

plot(w,abs(f));
hold on;
plot(w, real(f), 'r');
plot(w, imag(f), 'b');

print "dpng" "FT_DFT_01.png";
