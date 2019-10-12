%x0=[-1.5;-2];
x0 = [4;4];
fun_1=@(x1,x2) exp(x1.^2+x2.^2)-1;
fun_2=@(x1,x2) exp(x1.^2-x2.^2)-1;
F =@(x1,x2) [fun_1(x1,x2);fun_2(x1,x2)];
J_11 = @(x1,x2) 2*x1*exp(x1^2 + x2^2)
J_12 = @(x1,x2) 2*x2*exp(x1^2 + x2^2)
J_21 = @(x1,x2) 2*x1*exp(x1^2 - x2^2)
J_22 = @(x1,x2) -2*x2*exp(x1^2 - x2^2)
J = @(x1,x2) [J_11(x1,x2),J_12(x1,x2);J_21(x1,x2),J_22(x1,x2)];

tol=1e-5;nmax=100;
alpha = [0;0]
[x,res,nit] = newtonsys(F,J,x0,tol,nmax)
err = x-alpha;

