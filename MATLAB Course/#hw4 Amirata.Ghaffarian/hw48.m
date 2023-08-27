clear all
clc
syms x
%x=-5:5;
y=nthroot(9-x.^3,3);
subs(diff(y),1)