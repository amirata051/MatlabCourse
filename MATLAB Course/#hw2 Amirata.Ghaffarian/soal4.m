clear all
clc
home

n=input('n: ');
for i=1:1:n
    mark=input('mark: ');
    unit=input('unit: ');
    A(i,1)=mark;
    A(i,2)=unit;
end

ave=average(A,n);
disp(ave);
if (ave<10 && ave>=0)
    disp('D');
elseif (ave>=10 && ave<15)
    disp('C');
elseif (ave>=15 && ave<18)
    disp('B');
elseif(ave>=18 && ave<=20)
    disp('A');
end

function [ave]= average(A,n)
sum=0;
units=0;
for i=1:1:n
    if(A(i,1)>20)
        continue;
    end
    sum=A(i,1)*A(i,2)+sum;
    units=units+A(i,2);
end
ave=sum/units;
end


