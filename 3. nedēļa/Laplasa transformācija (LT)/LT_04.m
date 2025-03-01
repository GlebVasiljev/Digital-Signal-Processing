close all;
clear all;

R = 15;
L = 118E-6;
C = 1E-6;

alpha = R/2/L;
omega = 1/sqrt(L*C);

tetha = [0 : 0.001 : 2 * pi];
x= cos(tetha);
y= sin(tetha);


sakne = sqrt(alpha ^ 2 - omega ^ 2);
s = [ (-alpha + sakne) (-alpha-sakne)];

subplot(2,2,1)
plot(x,y)
axis equal;
grid on;
hold on;
Q = 1/R * sqrt(L/C)
plot(real(s)/omega, imag(s)/omega, "x", "LineWidth",7.0, "MarkerSize", 15)


# Q = 1
R = sqrt(L/C)*2;
L = 118E-6;
C = 1E-6;
alpha = R/2/L;
omega = 1/sqrt(L*C);
sakne = sqrt(alpha ^ 2 - omega ^ 2);
s = [ (-alpha + sakne) (-alpha-sakne)];
subplot(2,2,2)
plot(x,y)
axis equal;
grid on;
hold on;
Q = 1/R * sqrt(L/C)
plot(real(s)/omega, imag(s)/omega, "x", "LineWidth",7.0, "MarkerSize", 15)

# Q > 1
R = 25;
L = 118E-6;
C = 1E-6;
alpha = R/2/L;
omega = 1/sqrt(L*C);
sakne = sqrt(alpha ^ 2 - omega ^ 2);
s = [ (-alpha + sakne) (-alpha-sakne)];
subplot(2,2,3)
plot(x,y)
axis equal;
grid on;
hold on;
Q = 1/R * sqrt(L/C)
plot(real(s)/omega, imag(s)/omega, "x", "LineWidth",7.0, "MarkerSize", 15)

print -dpng "LT_04.png"
