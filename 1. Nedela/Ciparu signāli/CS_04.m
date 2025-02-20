x = [1,2,3,2,1];
h = [1, -1, 2, -2, 1];

y = conv(x,h);
summa = sum(y)
subplot(3,1,1);
plot(x);
subplot(3,1,2);
plot(h);
subplot(3,1,3);
plot(y);
print -dpng "CS_04.png"

is_odd = isequal(y, -fliplr(y)) # 0 -> false
is_even = isequal(y, fliplr(y)) # 0 -> false
