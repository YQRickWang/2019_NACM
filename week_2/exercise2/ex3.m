clc;
clear;

fun=@(x) x.^3-2*x-5;
a=1;b=3;
xv=linspace(a,b,2001);
plot(xv,fun(xv));grid on

fun_der=@(x) 3*x.^2-2;

x=[];
x0=1.5;
x=x0;
for i=1:3
    x_next = x(end)-(fun(x(end)))/(fun_der(x(end)));
    x=[x,x_next];
end
disp(x);
