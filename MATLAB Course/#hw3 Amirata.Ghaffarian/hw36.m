clear all
clc
x=-10:0.5:10;
y=-10:0.5:10;
e=10^(-10);
[x y]=meshgrid(x,y);
z=(sin(sqrt(x.^2+y.^2+e)))./(sqrt(x.^2+y.^2+e));
surf(x,y,z)