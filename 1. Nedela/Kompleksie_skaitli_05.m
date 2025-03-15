clear all;
t = [0:0.1:5*2*pi];
C = 1; #brīvi izvelēta konstante
w = 1; # omega



#-----{r = 0}-----
r = 0
a = r + j*w;
c = C * exp(a * t);
subplot(3,1,1)
plot(real(c), imag(c))
axis equal

#-----{r < 0}-----
r = -0.1;
a = r + j*w;
c = C * exp(a * t);

subplot(3,1,2)
plot(real(c), imag(c))
axis equal

#-----{r > 0}-----
r = 0.1;
a = r + j*w;
c = C * exp(a * t);

subplot(3,1,3)
plot(real(c), imag(c))
axis equal

print -dpng 'Kompleksi_skaitļi.png'
