function [ x, k, res ] = jacobi( A, b, x0, tol, kmax )
% JACOBI solve the linear system A x = b by means of the
% Jacobi iterative method; diagonal elements of A must be nonzero.
% Stopping criterion based on the residual.
%  [ x, k, res ] = jacobi( A, b, x0, tol, kmax )
%  Inputs:  A    = matrix (square matrix)
%           b    = vector (right hand side of the linear system)
%           x0   = initial solution (colum vector)
%           tol  = tolerence for the stopping driterion based on residual
%           kmax = maximum number of iterations
%  Outputs: x    = solution vector (column vector)
%           k    = number of iterations at convergence
%           res  = value of the norm of the residual at convergence
%

return