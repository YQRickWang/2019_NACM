fun = @(x) (1-x) .* sin(4*x) + 1/6;
a = 0; b = 2;
xv = linspace(a,b,1001); % xv=[a:(b-a)/1000:b]
plot( xv, fun(xv) ); grid on