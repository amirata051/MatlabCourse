function [at]= a(p1,p2)

at=[polyder(polyder(p1));polyder(polyder(p2))];

end