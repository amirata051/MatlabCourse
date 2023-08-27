%%
% Amir ata Ghaffarian # HW1
% 1
clear all
clc
x=input('x :');
y=input('y :');
z=4*x.^2+3*x+2*y+3;
disp('z:')
disp(z)

%%
% 2
clear
clc
A=input('A :\n');
B=input('B :\n');
C=input('C :\n');
B1=B;
B=A;
A=C;
C=B1;
disp('A:')
disp(A)
disp('B:')
disp(B)
disp('C:')
disp(C)
%%
% 3
clear
clc
S=input('masahat:');
a=input('Ghaede:');
h=2*S/a;
disp('height:')
disp(h)
%%
% 4
clear
clc
A=input('A :\n');
B=input('B :\n');
C=input('C :\n');
disp('2*A+2*B+2*C');
disp(2*(A+B+C));
disp('(A-B+C)-ABC');
disp((A-B+C)-A*B*C);
disp('(A+B+C)+ABC');
disp((A+B+C)+A*B*C);
disp('ABC-A-B-C');
disp(A*B*C-A-B-C);


%%
% 5
clear
clc
x=input('x :');
y=input('y :');
z=input('z :');
if x<0
    disp(y/z);
elseif x>0
    disp(z/y);
else
    disp(y-z)
end
%%
% 6
clear
clc
x=input('x :');
if x>0
    y=5+2*x;
elseif x<0
    y=5-2*x;
else
    y=5;
end
disp('y= ');
disp(y);
%%
% 7
clear
clc
a(1)=input('a1 :');
a(2)=input('a2 :');
for i=3:10
    a(i)=a(i-1)+a(i-2);
end
disp(a(10));
%%
% 7+
clear
clc
x=input('x :');
y=input('y :');
a=input('a :');
i=0;
s=0;
sumt=0;
a1=1/x;
a2=1/y;
a3=-1/(x*y);
while (abs(a1)<a && abs(a2)<a && abs(a3)<a)
    i=i+1;
    if mod(i,3)==1
        a1=i/(x.^i);
        a2=(2*i-1)/(y.^i);
        a3=(3*i-2)/(x.^i*y.^i);
        s=a1+a2-a3;
    elseif mod(i,3)==2
        a1=i/(x.^i);
        a2=(2*i-1)/(y.^i);
        a3=(3*i-2)/(x.^i*y.^i);
        s=a1-a2+a3;
    else
        a1=i/(x.^i);
        a2=(2*i-1)/(y.^i);
        a3=(3*i-2)/(x.^i*y.^i);
        s=-a1+a2+a3;
    end
    sumt=sumt+s;
end
disp('sum :')
disp(sumt-s)
%%
% 8
clear
clc
a=input('a :');
if mod(a,2)==0
    disp('sum of odd numbers:')
    disp((a/2)^2);
else
    disp('sum of odd numbers:')
    disp((a/2+1/2)^2);
end
%%
% 9
clear
clc
x1=input('x1 :');
y1=input('y1 :');
x2=input('x2 :');
y2=input('y2 :');
d=sqrt((x2-x1)^2+(y2-y1)^2);
disp('d:')
disp(d)
%%
% 10
clear
clc
day=input('day :');
month=input('month :');
year=input('year :');
disp('______________')
if month<=6 && day<=30
    disp('day:'); disp(day+1);
    disp('month:'); disp(month);
    disp('year:'); disp(year);
elseif month<=6 && day==31
    disp('day: 1'); 
    disp('month:'); disp(month+1);
    disp('year:'); disp(year);
elseif month>6 && month<=11 && day<=29
    disp('day:'); disp(day+1);
    disp('month:'); disp(month);
    disp('year:'); disp(year);
elseif month>6 && month<=11 && day==30
    disp('day: 1'); 
    disp('month:'); disp(month+1);
    disp('year:'); disp(year);
elseif month==12 && day<=28
    disp('day:'); disp(day+1);
    disp('month:'); disp(month);
    disp('year:'); disp(year);
else
    disp('day: 1'); 
    disp('month: 1');
    disp('year:'); disp(year+1);
end
%%
% 11
clear
clc
salary=input('salary:');
if salary<=5
    disp('remained value:');
    disp(9*salary/10);
elseif salary>5 && salary<=10
    disp('remained value:');
    disp(8.5*salary/10);
else
    disp('remained value:');
    disp(8*salary/10);
end
%%
% 12
clear
clc
phi=0:0.01:360;
S=cos(phi*pi/180)+sqrt((2.25)-(sin(phi*pi/180)-0.3).^2);
plot(phi,S)
title('S-phi')
xlabel('phi(degree)')
ylabel('S')
