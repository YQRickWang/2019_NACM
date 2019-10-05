fun = @(x) sin(2*x) + x;
dfun = @(x) 2*cos(2*x) + 1;
x0 = 0.7; tol = 1e-5; nmax = 50;
[xvect, resvect, nit] = newton( fun, dfun, x0, tol, nmax );
alpha = 0;
err = abs( xvect(end) - alpha )
nit
% err =
% 
%      3.956702654861650e-19
% 
% nit =
% 
%      5

x0 = 0.7; tol = 1e-12; nmax = 6;
[xvect, resvect, nit] = newton( fun, dfun, x0, tol, nmax );
errvect = abs( xvect - alpha );
nvect = 0 : nmax;
bnvect = 2.^( - nvect );
semilogy( nvect, errvect, '-ko', nvect, bnvect, '--k' ); grid on;
xlabel( 'n'); ylabel( 'err'); 
legend( 'err', 'b_n=2^{-n}', 'Location', 'southWest' );


beta = 1e0;
fun = @(x) exp(beta * x) - 1;
dfun = @(x) beta * exp(beta * x);
x0 = 0.1; tol = 1e-7; nmax = 150;
[xvect, resvect, nit] = newton_residual( fun, dfun, x0, tol, nmax );
err = abs( xvect(end) - alpha )
res = abs( resvect(end) )
nit
% err =
% 
%      6.822793885920731e-11
% 
% res =
% 
%      6.822786779991930e-11
% 
% nit =
% 
%      3