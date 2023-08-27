clear all
clc
x=randi([10,99],1,20);
X=[x;x;x;x;x];
disp(X)
disp('max(X):')
max(X)
sum=0;
for i=1:1:10
    sum=sum+x(i).^7;
end
norm7=nthroot(sum,7);
disp('norm7(x):')
disp(norm7)
disp('norm inf:')
norm(X,"inf")
disp('norm 1')
norm(X,1)