k=1;
e_rel_1=[];
e_rel_2=[];
rel_1=[];
rel_2=[];
c_1=[];
c_2=[];


for n =4:1:13


A_1 = diag(3*ones(n,1))+diag(-2*ones(n-1,1),1)+diag(-1*ones(n-1,1),-1);
A_2 = hilb(n);

x_1 = ones(n,1);
x_2 = ones(n,1);

b_1 = A_1*x_1;
b_2 = A_2*x_2;


%check the determinant of matrix/ or check eigenvalues
%eig(A_1) 
%eig(A_2) singular?

%LU
[L_1,U_1] = lu(A_1);
%solve the linear systems
y_1 = forward_substitutions( L_1, b_1 );
x_hat_1 = backward_substitutions( U_1, y_1 );

%LU
[L_2,U_2,P_2] = lu(A_2);
%solve the linear systems
A_2_new = L_2*U_2
b_2_new = P_2*b_2
y_2 = forward_substitutions(L_2,b_2_new);
x_hat_2 = backward_substitutions(U_2,y_2);

e_rel_1(k) = (norm(x_1-x_hat_1))/(norm(x_1));
e_rel_2(k) = (norm(x_2-x_hat_2))/(norm(x_2));

r_1 = b_1 - A_1*x_hat_1;
r_2 = b_2_new - A_2_new*x_hat_2;

rel_1 = (norm(r_1))/(norm(b_1));
rel_2= (norm(r_2))/norm(b_2_new);

c_1(k)= cond(A_1);
c_2(k)= cond(A_2);

k = k+1;

end

N = 4:1:13

%plot

semilogy(N,e_rel_1,'r-',N,e_rel_2,'b-',N,rel_1,'r-o',N,rel_2,'b-o',N,c_1,'r-*',N,c_2,'b-*');



