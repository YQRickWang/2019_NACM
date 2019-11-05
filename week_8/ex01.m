fun = @(x) sin(7*x/2)+exp(x)-1;
a=0,b=1;
I = 2/7*(1-cos(7/2))+exp(1)-2;

for n =0:1:2
    Ih = gauss_legendre_simple_quadrature( fun, a, b, n );
    disp(Ih);
    disp(abs(Ih-I));
end