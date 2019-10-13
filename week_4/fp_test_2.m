f = @(x) x/2-sin(x)+pi/6-sqrt(3)/2;
a = -pi/2;
b = 0;
c= pi/2;
d = pi;
alpha_1 = -1.0472
alpha_2 = 2.2460
tol = 1e-6;nmax=1500;
x0 = 2*pi/3;

phi = @(x) sin(x)+x/2-pi/6+sqrt(3)/2;
dphi = @(x) cos(x)+1/2;

%plot
%x = linspace(c,d,1001)
%plot(x,phi(x),'-k',x,dphi(x),'-k',x,x,'-k'); grid on;
[xvect,nit] = fixed_point_iterations(phi,x0,tol,nmax);
err = abs(xvect-alpha_2);

ratio = zeros(1,nit);

for t = 0:1:nit-1
    ratio(t+1) = (xvect(t+2)-alpha_2)/(xvect(t+1)-alpha_2);
end

k1 = 0:nit;
k2 = 0:nit-1;

plot(k1,err,'-k*',k2,ratio,'-ko');grid on;

disp('nit');
disp(nit);

disp('xvect');
disp(xvect);

disp('err');
disp(err);

disp('ratio');
disp(ratio);

