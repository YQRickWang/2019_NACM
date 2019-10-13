function [xvect, nit] = fixed_point_iterations( phi, x0, tol, nmax )
% FIXED_POINT_ITERATIONS Finds a fixed point of a scalar function.
%   [XVECT] = FIXED_POINT_ITERATIONS(PHI,X0,TOL,NMAX) finds a fixed point of  
%   the iteration function PHI using the fixed point iterations method and  
%   returns a vector XVECT containing the successive approximations of the 
%   fixed point (iterates).
%   PHI accepts a real scalar input x and returns a real scalar value; 
%   PHI can also be an inline object. X0 is the initial guess.
%   TOL is the tolerance on error allowed and NMAX the maximum number of iterations.
%   The stopping criterion based on the difference of successive iterates is used.
%   If the search fails a warning message is displayed.
%   
%   [XVECT,NIT] = FIXED_POINT_ITERATIONS(PHI,X0,TOL,NMAX) also returns the 
%   number of iterations  NIT.
%   Note: the length of the vectors is equal to ( NIT + 1 ).
%
nit = 0;
xvect = x0;
err_estim = tol+1;
xnext = 0;

while err_estim>tol&&nit<nmax
    xnext = phi(xvect(nit+1));
    err_estim = abs(xvect(nit+1)-xnext);
    xvect = [xvect,xnext];
    nit = nit +1;
end

if err_estim >= tol
   warning(['Fixed point iter. stopped without converging to the desired'...
       'tolerance, the maximum number of iterations was reached.'])
end

return
