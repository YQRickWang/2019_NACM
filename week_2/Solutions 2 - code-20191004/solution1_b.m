fun = @(x) sin(2*x) - 1 + x;
a = -1; b = 3; tol = 1e-1; nmax = 100;
[xvect,esterrvect,resvect,nit] = bisection(fun,a,b,tol,nmax);
x_nit = xvect( nit+1 ) % last iterate (approximated zero)
nit
% x_nit =
% 
%     0.3125
% 
% nit =
% 
%     5