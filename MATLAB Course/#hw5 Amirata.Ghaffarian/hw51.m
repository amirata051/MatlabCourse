clear all
clc
syms x y
eqn1= (x).^2+4.*(y).^2==5;
eqn2= 2*(x).^2-2.*(x)-3.*(y)==2.5;
[x1 x2]=solve([eqn1 eqn2],[x y]);
disp('x1:')
vpa(x1,5)
disp('x2:')
vpa(x2,5)

syms x y z
solve([x+y+z==6 x-y+2*z==7 x-y+z==2],[x y z])





