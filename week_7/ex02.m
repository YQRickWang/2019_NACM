fun = @(x) sin(7/2*x)+exp(x)-1

a = 0,b=1;

I_f = 2/7*(1-cos(7/2))+exp(1)-2

%simple

I_mp = midpoint_composite_quadrature( fun, a, b, 10);
I_t = trapezoidal_composite_quadrature(fun,a,b,10);
I_s = simpson_composite_quadrature(fun,a,b,10);

err_mp = [];
err_t = [];
err_s = [];

for k=2:7
    M = 2^k;
    H = (b-a)/M;
    
    I_mp = midpoint_composite_quadrature(fun, a, b, M);
    I_t = trapezoidal_composite_quadrature(fun,a,b,M);
    I_s = simpson_composite_quadrature(fun,a,b,M);
    
    err_mp = [err_mp,abs(I_mp-I_f)];
    err_t = [err_t,abs(I_t-I_f)];
    err_s  = [err_s,abs(I_s-I_f)];
    
end

x = 2:7;
m_x = 2.^x;

loglog(m_x,err_mp,'-*',m_x,err_t,'-o',m_x,err_s,'-');grid on

