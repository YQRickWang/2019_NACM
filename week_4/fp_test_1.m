f = @(x) x-cos(x);
phi = @(x) cos(x);

a = -pi/3;b=pi/3;
tol =1e-6;
nmax = 1500;

%x0 = 0;
%x0 = -pi/4;
x0 = pi/5;
alpha = 0.739085133215161
[xvect,nit] = fixed_point_iterations(phi,x0,tol,nmax);

err = abs(xvect - alpha);
disp('xvect');
disp(xvect);
disp('nit');
disp(nit);
disp('error');
disp(err);

n = 0:nit;
figure(1);semilogy(n,err,'-ok');grid on; legend('x^{(0)}=-\pi/4');



