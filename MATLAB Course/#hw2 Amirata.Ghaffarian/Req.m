function [Req_p,Req_s] = Req(R1,R2)
R1=input('R1: ');
R2=input('R2: ');
Req_p = (R1*R2)/(R1+R2);
Req_s = R1+R2;
end