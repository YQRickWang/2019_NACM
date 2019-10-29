function [ Ih ] = trapezoidal_composite_quadrature( fun, a, b, M )

H = (b-a)/M;
Ih = 0;

for k = 1:M
    Ih = Ih + H/2*(fun(a+(k-1)*H)+fun(a+k*H));
end


return