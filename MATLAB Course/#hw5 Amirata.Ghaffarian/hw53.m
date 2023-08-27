clear all
clc
syms x
fun=@(x) (0.025.*x.^2-0.0625.*x.^4-0.333.*x^3+x.^2);
[x fval]=fminbnd(fun,-1,4)
