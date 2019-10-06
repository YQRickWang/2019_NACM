syms x1 x2;

x0=[1.5;-2];

fun_1=@(x1,x2) exp(x1.^2+x2.^2)-1;
fun_2=@(x1,x2) exp(x1.^2-x2.^2)-1;
F =@(x1,x2) [fun_1(x1,x2);fun_2(x1,x2)];
jacobian(F(x1,x2),[x1,x2])


tol=1e-5;nmax=100;




