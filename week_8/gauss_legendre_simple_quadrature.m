function [ Ih ] = gauss_legendre_simple_quadrature( fun, a, b, n )
% GAUSS_LEGENDRE_SIMPLE_QUADRATURE approximate the integral of a function in
% the interval [a,b] by means of the simple Gauss-Legendre quadrature formula
%  [ Ih ] = gauss_legendre_simple_quadrature( fun, a, b, n )
%  Inputs: fun = function handle, 
%          a,b = extrema of the interval [a,b]
%          n + 1 = number of quadrature nodes and weights
%  Output: Ih = approximate value of the integral
%

if n==0
    y_ =[0];
    alpha_ = [2];
    
elseif n==1
    y_ = [-1/sqrt(3),1/sqrt(3)];
    alpha_ = [1,1];
else
    y_ = [-sqrt(15)/5,0,sqrt(15)/5];
    alpha_= [5/9,8/9,5/9];
end

Ih = 0;

for j = 0:1:n
    y = (b+a)/2+(b-a)/2*y_(j+1);
    alpha = (b-a)/2*alpha_(j+1);
    
    Ih = Ih + alpha*fun(y);
end


return