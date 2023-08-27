clear all
clc
home
n=input('n: ');
n=round(n);
d=input('d: ');
while(d>1 || d<0)
    d=input('d: ');
end
X=0:d:2*n*pi;
y=abs(sin(X))*X.^2;



