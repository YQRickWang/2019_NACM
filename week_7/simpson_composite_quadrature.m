function [ Ih ] = simpson_composite_quadrature( fun, a, b, M )

H = (b-a)/M;
Ih = 0;
for k = 1:M
    mid_point = a+(k-0.5)*H;
    
    Ih = Ih +H/6*(fun(a+(k-1)*H)+4*fun(mid_point)+fun(a+k*H));
   
end

return