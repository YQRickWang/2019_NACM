clc;
clear;
p=@(x) -3*x.^3/8+5*x.^2/4+x/2-1;
dp=@(x) -9/8*x.^2+5/2*x+0.5;
t_0 =@(x) dp(0)*x+p(0);%tangent line in x=0
t_1 =@(x) dp(2)*(x-2)+p(2);%tangent line in x=2
xv = linspace(-1,8,1001);
plot(xv,p(xv),'-k',xv,t_0(xv),'--k',xv,t_1(xv),'--k');grid on
hold on;

x0=-1e-3;tol=1e-8;nmax=20;
[xvect, resvect, nit] = newton( p, dp, x0, tol, nmax )

disp('nit');
disp(nit);
disp('xvect');
disp(xvect);
plot(xvect,p(xvect),'*');