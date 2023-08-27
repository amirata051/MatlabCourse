clear all
close all
clc
X0=[10 10 10];
t=linspace(0,1,100)
[~,X]=ode45(@lorenz,t,X0)
plot3(X(:,1),X(:,2),X(:,3))





