function [ y ] = forward_substitutions( L, b )
% FORWARD_SUBSTITUTIONS solve the linear system L y = b by means of the
% forward subsitutions algorithm; L must be a lower triangular matrix
%  [ y ] = forward_substitutions( L, b )
%  Inputs: L = lower triangular matrix (square matrix)
%          b = vector (right hand side of the linear system)
%  Output: y = solution vector (column vector)
%
n = length(b)
y = zeros(n,1)

y(1) = b(1)/L(1,1);%compute the first element
for i=2:1:n
    temp =0
    for j=1:1:(i-1)
        temp = temp+L(i,j)*y(j);
    end
    
    y(i) = (1/L(i,i))*(b(i)-temp);
end




return