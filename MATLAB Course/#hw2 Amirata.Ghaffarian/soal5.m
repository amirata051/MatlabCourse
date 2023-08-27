clear all
clc
home
filename = 'myExample.xlsx';
A = xlsread(filename)
x=size(A);
disp('num of students: ')
disp(x(1));
for i=1:1:x(1)
    sum=0;
    sum=sum+A(i,1)*3+A(i,2)*2+A(i,3)*1;
    disp('average of student ')
    disp(i)
    disp(sum/6);
end
    sum1=0;
    sum2=0;
    sum3=0;
for i=1:1:x(1)
    sum1=sum1+A(i,1);
    sum2=sum2+A(i,2);
    sum3=sum3+A(i,3);
end
    disp('average of dynamic : ')
    disp(sum1/x(1));
    disp('average of andishe : ')
    disp(sum2/x(1));
    disp('average of azmayeshgah : ')
    disp(sum3/x(1));
    disp('total average:')
    tave=(sum1*3+sum2*2+sum1)/(6*x(1));
    disp(tave);





