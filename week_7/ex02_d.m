
d=3

fun = @(x) x.^d;

a=0,b=1;



I_mp = midpoint_composite_quadrature(fun,a,b,1);
err_mp = abs(I_mp-1/(d+1));
I_t = trapezoidal_composite_quadrature(fun,a,b,1);
err_t = abs(I_t-1/(d+1));
I_s = simpson_composite_quadrature(fun,a,b,1);
err_s = abs(I_s-1/(d+1));
disp(err_mp);
disp(err_t);
disp(err_s);
    

