f = @(x) x.*log(x)-(sin(x))^2;
f_d = @(x) log(x)+1 - sin(2*x);

a = 3/2,b=5/2;

n = 8
j = 0:n;
h = (b-a)/n;
x=a+j.*h;
dfh = [];
for t = 0:n
    if t==0
        dfh_next = (-3*f(x(t+1))+4*f(x(t+2))-f(x(t+3)))/(2*h);
    elseif t>0 && t<n
        dfh_next = centered_finite_difference(f,x(t+1),h);
    else 
        dfh_next = (3*f(x(t+1))-4*f(x(t))+f(x(t-1)))/(2*h);
    end
    dfh = [dfh,dfh_next];
end
err = abs(dfh-f_d(x));
disp(dfh);
disp(err);
