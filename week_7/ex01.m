%ex01
f = @(x) x.*log(x)-(sin(x))^2;
f_d = @(x) log(x)+1 - sin(2*x);


xnodes = [1.9];


err_1=[];
err_2=[];
err_3=[];
for k = 2:1:7
    h = 2^(-k);
    
    dfh_1 = forward_finite_difference(f,xnodes,h);
    err_1 = [err_1,abs(dfh_1-f_d(xnodes))];
    dfh_2 = backward_finite_difference(f,xnodes,h);
    err_2 = [err_2,abs(dfh_2-f_d(xnodes))];
    dfh_3 = centered_finite_difference(f,xnodes,h);
    err_3 = [err_3,abs(dfh_3-f_d(xnodes))];
    
end

t = 2:7;
h_t = 2.^(-t);

loglog(h_t,err_1,'-*',h_t,err_2,'-o',h_t,err_3,'-');grid on;