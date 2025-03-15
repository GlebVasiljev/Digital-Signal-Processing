x = [-25:0.1:25];
f1 = (sin(pi.*x))./(pi.*x);
f2 = sinc(x);

subplot(2, 1, 1)
plot (x, f1)
xlabel ("x");
ylabel ("f1");
title("f(x) = (sin(pi*x))/(pi*x)");


subplot(2, 1, 2)
plot(x, f2)
title("sinc");
xlabel("x");
ylabel("f2");


print png uzd03.png
