tol = 1e-6; nmax = 100;
[xvect,esterrvect,resvect,nit] = bisection(fun,a,b,tol,nmax);
% NOTE: the first entry of the vector xvect contains the initial guess of
% the zero obtained for n=0, i.e. the mid point of the interval [a,b]
resvect( 19 + 1 )
resvect( 20 + 1 )
nvect = 0 : nit;
resvect_abs = abs( resvect );
semilogy( nvect, resvect_abs, '-ok' ); grid on