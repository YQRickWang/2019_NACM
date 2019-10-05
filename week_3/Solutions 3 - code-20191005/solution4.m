F = @(x) [ exp( x(1).^2 + x(2).^2 ) - 1; exp( x(1).^2 - x(2).^2 ) - 1 ];
J = @(x) [ 2 * x(1) * exp( x(1).^2 + x(2).^2 ), 2 * x(2) * exp( x(1).^2 + x(2).^2 );
2 * x(1) * exp( x(1).^2 - x(2).^2 ), -2 * x(2) * exp( x(1).^2 - x(2).^2 ) ];
alpha = [ 0; 0 ];
x0 = [ 1.5; -2 ]; tol = 1e-5;
nmax = 100;
[x, res, nit] = newtonsys( F, J, x0, tol, nmax );
err = norm( x - alpha )
nit
% err =
% 
%      6.5108e-06
% 
% nit =
% 
%     25