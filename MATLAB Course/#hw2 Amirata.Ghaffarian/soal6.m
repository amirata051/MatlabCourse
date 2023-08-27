clear all
clc
home
pass='Ghaffarian';
pass0=input('enter the password: ','s');
result=passcmp(pass0);
if(result==1)
    disp('welcome.');
else
    for i=1:1:3
        pass0=input('enter the password: ','s');
        result=passcmp(pass0);
        if(result==1)
            disp('welcome.');
            break;
        end
    end
end
if (result==0)
     disp('imposibility of trying again!');
end
function result= passcmp(pass0)
if strcmp(pass0,'Ghaffarian')==1
    result=1;
else
    result=0;
end
end