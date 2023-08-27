clear all
close all
clc
X0=[0 0.25];
t=linspace(0,0.1,100);
[~,X]=ode45(@aaa,t,X0)