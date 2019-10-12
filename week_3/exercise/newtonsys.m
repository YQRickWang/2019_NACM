function [x, res, nit] = newtonsys( F, J, x0, tol, nmax )
% NEWTONSYS Find the zeros of a system of nonlinear equations.
%   [X] = NEWTONSYS(F,J,X0,TOL,NMAX) find the zero X of the
%   continuous and differentiable system of functions F nearest to X0 using the 
%   Newton method. J is a function which takes X and returns the Jacobian matrix.
%   X0 is a column vector; F returns a column vector and J returns a square matrix.
%   The stopping criterion is based on the difference (norm) of successive
%   iterates.
%   If the search fails a warning message is displayed.
%
%   [X,RES,NITER] = NEWTONSYS(F,J,X0,TOL,NMAX) returns the value of the
%   residual RES in X and the number of iterations NITER required for computing X.
%   Note: only the final iterate is stored in X; similarly for RES.
%

nit = 0; 
x = x0; 
res = [0;0]; % define here the appropriate residual
err_estim = tol + 1; % in this way we are sure we enter the loop
while ( err_estim >= tol && nit < nmax )
    delta = linsolve(J(x(1,nit+1),x(2,nit+1)),-1*F(x(1,nit+1),x(2,nit+1)));
    x_next = x(:,nit+1)+delta;
    err_estim = norm(x_next-x(:,nit+1));
    res = [res,F(x(1,nit+1),x(2,nit+1))];
    
    x = [x,x_next];
    nit = nit +1;    
end

if err_estim >= tol
    warning(['Newton method stopped without converging to the desired tolerance, '...
             'the maximum number of iterations was reached.']);
end

return