fun = @(x) sin(2*x) - 1 + x; % inline function
a = -1; b = 3;
xv = linspace(a,b,2001); % xv=[a:(b-a)/2000:b]
plot(xv, fun(xv)); grid on; % plot of the function f
tol = 1e-1; nmax = 100;
[xvect,esterrvect,resvect,nit] = bisection(fun,a,b,tol,nmax);
x_nit = xvect(end); % final iterate (approximated zero); NOTE: length(xvect)=nit+1
fx_nit = resvect(end); % final residual fun(x nit); NOTE: length(resvect)=nit+1
hold on
plot(xvect,resvect,'*k',x_nit,fx_nit,'or'); % iterates in black, the final in red