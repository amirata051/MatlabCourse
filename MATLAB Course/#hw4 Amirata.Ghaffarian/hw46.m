clear all
clc
syms x
h= piecewise(x<=1,4-x.^2,x>1,2+x.^2)
L1=limit(h,1)
L2=limit(h,'x',1,'right')
L3=limit(h,'x',1,'left')
L4=limit(h,2)
subs(diff(h),0)
x=input('x:')
subs(diff(h),x)
