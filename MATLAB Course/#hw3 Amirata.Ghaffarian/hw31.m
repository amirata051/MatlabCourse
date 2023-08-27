clear all
clc

disp('phi(1):');
disp(phi(1));

x=0:0.1:40;
z=phi(x);
plot(x,z)

function [y] = phi(x)
a=0.43;
b=-0.12;
c=0.93;
t=1./(x.*0.33);
r=(exp(-0.5.*x.^2))/(sqrt(2*pi));
y = 0.5-r.*(a.*t.^1+b*t.^2+c*t.^3);
end
