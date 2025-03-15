clear all;
close all;

ci=imread("kalni.png");
blue=ci(:,:,3);
imshow(blue)

L=5;
[x y] = meshgrid([-L:L]);
z=exp(-(x.^2+y.^2)/L);
h=z/sum(sum(z));
surf(x,y,h);

migla = conv2 (blue, h, "same");
bilde=uint8(migla);
imshow(bilde);
imwrite (bilde, "migla.png");

d=zeros(size(h));
d(L+1,L+1)=1;
g=d-h; # ZF-AF transformaacija
kantes = conv2 (blue, g, "same");
m1=min(min(kantes))
m2=max(max(kantes))
imshow(kantes,[m1 m2]);
