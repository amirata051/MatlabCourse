clear all
clc
home
filename = 'myExample.xlsx';
A = xlsread(filename)
subplot(1,2,1)
bar(A)
subplot(1,2,2)
pie(A)
A=A';
dyn=A(1,:);
andishe=A(2,:);
azmayeshgah=A(3,:);
disp('miangin dars ha:')
disp('dynamic:')
disp(mean(dyn))
disp('andishe:')
disp(mean(andishe))
disp('azmayeshgah:')
disp(mean(azmayeshgah))
disp('----------------------------------------------')
disp('variances:')
disp('dynamic:')
disp(var(dyn))
disp('andisheh:')
disp(var(andishe))
disp('azmayeshgah:')
disp(var(azmayeshgah))
disp('----------------------------------------------')
disp('medians:')
disp('dynamic:')
disp(median(dyn))
disp('andisheh:')
disp(median(andishe))
disp('azmayeshgah:')
disp(median(azmayeshgah))
disp('----------------------------------------------')
disp('standard deviation:')
disp('dynamic:')
disp(std(dyn))
disp('andisheh:')
disp(std(andishe))
disp('azmayeshgah:')
disp(std(azmayeshgah))
disp('----------------------------------------------')

figure
subplot(2,3,1)
bar(dyn)
subplot(2,3,2)
bar(andishe)
subplot(2,3,3)
bar(azmayeshgah)

subplot(2,3,4)
pie(dyn)
subplot(2,3,5)
pie(andishe)
subplot(2,3,6)
pie(azmayeshgah)




