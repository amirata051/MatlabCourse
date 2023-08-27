clear all
clc
t=0:0.1:30;
x1=(2+sin(t)).*(exp(-0.05.*t))./(2-cos(t./4));
x2=(2+sin(t)).*(exp(-0.2.*t))./(2-cos(t./4));
plot(t,x1,'linewidth',1.5,'Color',[0 0 1])
hold on
plot(t,x2,'linewidth',2,'Color',[0 0 0])
xlabel('\it t')
ylabel('\it x1 x2')
title('\fontsize{15} x1(t) & x2(t)')
