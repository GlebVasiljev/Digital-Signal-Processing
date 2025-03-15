close all;
clear all;


data = dlmread ("test2","\t")'
plot(data(:,1), data(:,2))

print -dpng "plot.png"
