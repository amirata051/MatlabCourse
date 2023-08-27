clear all
clc
A=input('A: ');
a=max(max(A));
[m n]=size(A);
for i=1:1:m.*n
    if A(i)==a
        break
    end
end
% disp(i)
if mod(i,m)==0
    b=m;
else
    b=mod(i,m)
end
disp('satr:')
disp(b)
y=ceil(i/m);
disp('sotoon:')
disp(y)

