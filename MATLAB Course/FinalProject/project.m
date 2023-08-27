clear all
close all
clc
home
filename = 'path1.xlsx';
A = xlsread(filename)

disp('______________________________________________________')
disp('______________________________________________________')

s=size(A);
t=A(:,1);
x=A(:,2);
y=A(:,3);
p1=polyfit(t,x,s(1)-1);
p2=polyfit(t,y,s(1)-1);
p3=polyfit(x,y,s(1)-1);

subplot(2,2,1)
t=0:0.1:A(s(1));
x1=polyval(p1,t);
plot(t,x1,'-+')
title('x(t)')
xlabel('t(sec)')
ylabel('x(m)')
grid on
axis equal
hold on

subplot(2,2,3)
y1=polyval(p2,t);
plot(t,y1,'-+')
title('y(t)')
xlabel('t(sec)')
ylabel('y(m)')
grid on
axis equal
hold on

subplot(2,2,2)
plot(x1,y1,'-+')
title('y(x)')
xlabel('x(m)')
ylabel('y(m)')
grid on
axis equal
hold on

vt=V(p1,p2)
at=a(p1,p2)

vn=inline(-vnorm(p1,p2),'x')
[t vnval]=fminbnd(vn,A(1),A(s(1)));
vnval=-vnval;
disp('    t vmax    v max')
disp([t vnval])

disp('______________________________________________________')
disp('______________________________________________________')

filename = 'path2.xlsx';
B = xlsread(filename)

disp('______________________________________________________')
disp('______________________________________________________')

sB=size(B);
tB=B(:,1);
xB=B(:,2);
yB=B(:,3);
p1B=polyfit(tB,xB,sB(1)-1);
p2B=polyfit(tB,yB,sB(1)-1);
p3B=polyfit(xB,yB,sB(1)-1);


subplot(2,2,1)
t=0:0.1:B(sB(1));
x1B=polyval(p1B,t);
plot(t,x1B)
title('x(t)')
xlabel('t(sec)')
ylabel('x(m)')
grid on
axis equal
legend('A','B')

subplot(2,2,3)
y1B=polyval(p2B,t);
plot(t,y1B)
title('y(t)')
xlabel('t(sec)')
ylabel('y(m)')
grid on
axis equal
legend('A','B')

subplot(2,2,2)
plot(x1B,y1B)
title('y(x)')
xlabel('x(m)')
ylabel('y(m)')
grid on
axis equal
legend('A','B')

x_interact=simplify(vpa(solve(poly2sym(p3)==poly2sym(p3B)),2));

for i=1:1:size(x_interact)
    if isreal(x_interact(i))==1 % && x_interact>A(1) && x_interact<A(s(1))
        x_interaction=vpa(x_interact(i),5)
        y_interaction=vpa(subs(poly2sym(p3),x_interact(i)),5)
    end
end




