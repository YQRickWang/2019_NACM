A=[4,-2,-1;-1,3,-1;-1,-3,5];
x_ex=[1;1;1];
b = A*x_ex;
[L,U,P] = lu(A);

y = forward_substitutions(L,b);
x = backward_substitutions(U,y);

disp(x-x_ex);