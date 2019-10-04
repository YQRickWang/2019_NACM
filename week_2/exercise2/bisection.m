function [xvect,esterrvect,resvect,nit] = bisection(fun,a,b,tol,nmax)
% BISECTION Find a zero of a nonlinear scalar function inside an interval.
%   xvectECT=BISECTION(FUN,A,B,TOL,NMAX) finds a zero of the continuous 
%   function FUN in the interval [A,B] using the bisection method and returns
%   a vector xvectECT containing the successive approximations of the zero (iterates). 
%   FUN accepts real scalar input x and returns a real scalar value; 
%   FUN can also be an inline object. 
%   TOL is the tolerance on error allowed and NMAX the maximum number of iterations.
%   If the search fails an error message is displayed. 
%
%   [xvectECT,ESTERRVECT,RESVECT,NIT]=BISECTION(FUN,...) also returns the vector
%   ESTERRVECT of error estimators for each iterate, the vector RESVECT of residual
%   evaluations for each iterate, and NIT the number of iterations.
%   Note: the length of the vectors is equal to ( NIT + 1 ).
%

if a>=b
    error(' b must be greater than a (b>a)');
end

%evaluate f at the endpoints
fa = fun(a);
fb = fun(b);

if sign(fa)*sign(fb)>0
    error(' The sing of FUN at the extrema of the interval must be different');
end

if fa==0 % a is the solution
    xvect = a; fx = 0; esterr = 0; nit = 0;
    resvect = fx; esterrvect = esterr;
    return
elseif fb==0 %b is the solution
    xvect = b; fx = 0;esterr = 0;nit = 0;
    resvect = fx;esterrvect =esterr;
    return
end

nit = 0;
xvect = []; resvect = []; estervect = [];

%initial approximate solution
x = (a+b)/2;
%initial error estimator is the half of the length of the interval
esterr = (b-a)/2;
fx = fun(x);
xvect = x;
resvect = fx;
esterrvect = esterr;

%loop until convergence or maximum number of iterations reached
while esterr >= tol && nit <nmax
    
    if fx==0 %solution founded
        return;
    end
    
    if sign(fx)*sign(fa)<0 %alpha is in (a,x)
        b=x;
    elseif sign(fx)*sign(fb) <0 %alpha is in (x,b)
        a=x;
    else
        error('Algorithm not operating correctly');
    end
    %calculate mid-point of updataed interval
    x = (a+b)/2;
    %the error estimator is now half of the previous one
    esterr = esterr/2;
    fx = fun(x);
    xvect = [xvect,x];
    resvect = [resvect,fx];
    esterrvect = [esterrvect,esterr];
    nit = nit+1;
end
 
if esterrvect(end) >tol
    warning(['bisection stooped without converging to the desired tolerance',...
        'because the maximum number of iterations was reached']);
end
 


return