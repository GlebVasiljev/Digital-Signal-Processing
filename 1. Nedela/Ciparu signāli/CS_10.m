
N = 20;
n = [0:0.25:N];
S = zeros(N);
r = 0.5;

S = (1-r.^n)/ (1 - r);


plot(S);
print -dpng "CS_10.png"
