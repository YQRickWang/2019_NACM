function [xvect, resvect, nit] = newton_residual( fun, dfun, x0, tol, nmax )
% NEWTON_RES Find a zero of a nonlinear scalar function.
%   [XVECT] = NEWTON_RES(FUN,DFUN,X0,TOL,NMAX) finds a zero of the differentiable 
%   function FUN using the Newton method and returns a vector XVECT containing 
%   the successive approximations of the zero (iterates). DFUN is the derivative of FUN.
%   FUN and DFUN accept real scalar input x and return a real scalar value; 
%   FUN and DFUN can also be inline objects. X0 is the initial guess.
%   TOL is the tolerance on error allowed and NMAX the maximum number of iterations.
%   The stopping criterion based on the (absolute) residual is used.
%   If the search fails a warning message is displayed.
%   
%   [XVECT,RESVECT,NIT] = NEWTON_RES(FUN,DFUN,X0,TOL,NMAX) also returns the vector
%   RESVECT of residual evaluations for each iterate, and NIT the number of iterations.
%   Note: the length of the vectors is equal to ( NIT + 1 ).
%

nit = 0; 
xvect(nit+1) = x0; 
resvect(nit+1) = fun( x0 );
err_estim = abs( resvect(nit+1) );
while ( err_estim >= tol && nit < nmax )
    xvect(nit+2) = xvect(nit+1) - fun( xvect(nit+1) ) / dfun( xvect(nit+1) );    
    resvect(nit+2) = fun( xvect(nit+2) );
    err_estim = abs( resvect(nit+2) ); % absolute residual
    nit = nit + 1;    
end

if err_estim >= tol
    warning(['Newton method stopped without converging to the desired tolerance, '...
             'the maximum number of iterations was reached.']);
end

return
