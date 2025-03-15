#f(x)=x^3−4x+1

p = [1 0 -4 1];
x = [-5:0.1:5];
y = polyval(p, x); #Aprēķina polinoma vērtības

subplot(3,1,1);
plot(x, y);
title('Polinoms f(x)');

p1 = polyder(p); #Aprēķina pirmo atvasinājumu
y1 = polyval(p1, x);

subplot(3,1,2);
plot(x, y1);
title("Pirmais atvasinājums f'(x)");

p2 = polyder(p1);
y2 = polyval(p2, x);

subplot(3,1,3);
plot(x, y2);
title("Otrais atvasinājums f''(x)");

print -dpng 'polinoms.png'
