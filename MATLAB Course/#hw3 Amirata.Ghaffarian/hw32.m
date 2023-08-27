clear all
clc
x=-2:0.1:2;
y=-3:0.1:4;
[x y]=meshgrid(x,y);
z=x.*exp(-[(x-y.^2).^2+y.^2]);
surf(x,y,z)
