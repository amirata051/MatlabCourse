clear all
clc
syms Q Ta Tb
T1=373;
T2=293;
sigma=5.667*10^(-8);
[Q Ta Tb]=solve([T1^4-Ta^4==Q/sigma Ta^4-Tb^4==Q/sigma Tb^4-T2^4==Q/sigma],[Q Ta Tb]);
disp('Q:')
vpa(Q,5)
disp('Ta:')
vpa(Ta,5)
disp('Tb:')
vpa(Tb,5)