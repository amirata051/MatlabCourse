clear all
clc
x=1:50;
y=0.3.*x+2*randn(1,50);
plot(x,y)
hold on
p=polyfit(x,y,1)
y1=polyval(p,x);
plot(x,y1)


