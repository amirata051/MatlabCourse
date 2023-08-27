clear all
clc
syms x
fun1=abs(-x^2+9);
eqn1= diff(fun1)==0;
ext1=solve(eqn1)
eqn11= diff(fun1,2)==0;
turn1=solve(eqn11)

fun2=x^4-12*x^2+36;
eqn2= diff(fun2)==0;
ext2=solve(eqn2)
eqn21= diff(fun2,2)==0;
turn2=solve(eqn21)

fun3=((x-4)^2)*(x+2)^3;
eqn3= diff(fun3)==0;
ext3=solve(eqn3)
eqn31= diff(fun3,2)==0;
turn3=solve(eqn31)

% [x fval]=fminbnd(fun1,x1,x2)

