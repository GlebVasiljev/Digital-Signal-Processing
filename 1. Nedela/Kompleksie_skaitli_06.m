clear all;
n = [0:100];


subplot(3,1,1)
a = 0.1;
b = sqrt(1-a^2);
z = a + j*b;
Z = z.^n;
plot(real(Z),imag(Z))
axis equal


subplot(3,1,2)
a = 1;
b = sqrt(1-a^2);
z = a + j*b;
Z = z.^n;
plot(real(Z),imag(Z))
axis equal

#-----{ |Z| < 1 }-----
subplot(3,1,3)
a = -0.2;
b = sqrt(1-a^2);
z = a + j*b;
Z = z.^n;
plot(real(Z),imag(Z))
axis equal
