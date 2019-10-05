clc;
clear;

fun = @(x) sin(2*x)+x;
dfun = @(x) 2*cos(2*x)+1;
nmax = 6;
[xvect, resvect, nit] = newton( fun, dfun, 0.7, 1e-12, nmax );
alpha = 0;
disp('result:');
disp('xvect');
disp(xvect);
disp('resvect');
disp(resvect);
disp('nit');
disp(nit);


errvect = abs(xvect-alpha);
disp('error');
disp(errvect);
nvect = 0:1:nit;
bnvect = 2.^(nvect);
semilogy(nvect,errvect,'-ko',nvect,bnvect,'--k');grid on
xlabel('n');ylabel('err');
legend('err','b_n=2^{-n}','Location','southwest');