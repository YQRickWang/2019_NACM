fun = @(x) sin(7/2*x)+exp(x)-1

a = 0,b=1;

I_f = 2/7*(1-cos(7/2))+exp(1)-2

%simple

I_mp = midpoint_composite_quadrature( fun, a, b, 10);
I_t = trapezoidal_composite_quadrature(fun,a,b,10);
I_s = simpson_composite_quadrature(fun,a,b,10);

for k=2:7
    M = 2^k;
    
end
