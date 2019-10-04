clc;
clear;



fun = @(x) (1-x).*sin(4*x)+1/6; % inline function
a = 0; b = 2;
xv = linspace(0,2,2001); % xv=[a:(b-a)/2000:b]
plot(xv, fun(xv)); grid on; % plot of the function f

tol = 1e-6; nmax = 1000;
[xvect,esterrvect,resvect,nit] = bisection(fun,a,b,tol,nmax);
% x_nit = xvect(end); % final iterate (approximated zero); NOTE: length(xvect)=nit+1
% fx_nit = resvect(end); % final residual fun(x nit); NOTE: length(resvect)=nit+1
% hold on
% plot(xvect,resvect,'*k',x_nit,fx_nit,'or'); % iterates in black, the final in red

% resvect(19+1);
% resvect(20+1)
% nvect = 0:nit;
% resvect_abs = abs(resvect);
% semilogy(nvect,resvect_abs,'-ok');grid on

alpha = xvect(20+1);%approximation of exact zero (alpha)
nv = [0:1:18];
nv_ind = nv+1;%Matlab indexes start from 1
err_n_plus_1 = abs(xvect(nv_ind+1)-alpha);
err_n = abs(xvect(nv_ind)-alpha);
a_n = err_n_plus_1./err_n;
%plot(nv,a_n,'--k*');grid on

esterr_n_plus_1 = (b-a)./2.^(nv+1);
esterr_n = (b-a)./2.^(nv);
a_tilde_n = esterr_n_plus_1./esterr_n;
%plot(nv,a_tilde_n,'--k*');grid on

semilogy(nv,err_n,'--ko',nv,esterr_n,'--ks');grid on

