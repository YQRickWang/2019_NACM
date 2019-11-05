A = [4,-2,-1;-2,7,-4;-1,-4,6];
x_ex = [1;1;1];
b = A*x_ex;

R = chol(A);

y = forward_substitutions( transpose(R), b )
x = backward_substitutions(R,y)

disp(x-x_ex);