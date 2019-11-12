function [ x ] = backward_substitutions( U, y )
% BACKWARD_SUBSTITUTIONS solve the linear system U x = y by means of the
% backward subsitutions algorithm; U must be an upper triangular matrix
%  [ x ] = backward_substitutions( U, y )
%  Inputs: U = upper triangular matrix (square matrix)
%          y = vector (right hand side of the linear system)
%  Output: x = solution vector (column vector)
%

n = length(y)
x = zeros(n,1)

x(n) = y(n)/U(n,n);

for i=(n-1):-1:1 %this have to be i=(n-1):-1:1 remember!
    temp = 0;
    for j=(i+1):n
        temp = temp + U(i,j)*x(j);
    end
    
    x(i) = (1/U(i,i))*(y(i)-temp);
end


return