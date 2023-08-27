function [] = func(str,array)
str=input('enter the pharase: ','s');
array=input('enter the array: ');
narginchk('func')
nargoutchk('func')
isstr(str);
isnumeric(array);
for i=1:1:size(array)
    array(i)=eval(str);
    disp(array(i));
end
