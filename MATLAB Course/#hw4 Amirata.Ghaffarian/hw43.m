clear all
clc
x=-2.1:0.1:2.1;
y=-6:0.1:6;
[x y]=meshgrid(x,y);
z=80.*(y.^2).*exp(-x.^2-0.3*y.^2);
mesh(x,y,z)
figure
surf(x,y,z)
