clear all
clc
syms x
a=1;
b=3;
k=6.9189;
fun=@(x) a/(x-sin(x))-b/(1-cos(x));
x0=1;
x=fzero(fun,x0);
x=x*180/pi
