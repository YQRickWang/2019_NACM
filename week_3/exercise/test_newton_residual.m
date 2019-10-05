clc;
clear;

beta = 1e3;
fun=@(x) exp(beta*x)-1;
dfun=@(x) beta*exp(beta*x);

[xvect, resvect, nit] = newton_residual( fun, dfun, 0.1, 1e-7, 150 );
alpha = 0;
errvect = xvect-alpha;
disp('error');
disp(errvect);
disp('resvect');
disp(abs(resvect));
disp('nit');
disp(nit);