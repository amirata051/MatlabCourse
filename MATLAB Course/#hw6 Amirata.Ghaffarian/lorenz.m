function dx= lorenz(t,X)
beta=8/3;
sigma=10;
rho=28;
dx=[sigma*(X(2)-X(1));X(1)*(rho-X(3))-X(2);X(1)*X(2)-beta*X(3)]
end