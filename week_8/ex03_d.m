n=1000;

A = diag(4*ones(n,1))+diag(-1*ones(n-1,1),1)+diag(-2*ones(n-1,1),-1) ...
    +diag(-1*ones(n-2,1),-2)+diag(ones(1,1),n-1)+diag(-1*ones(1,1),-(n-1));

S = sparse(A);

%if we use sparse matrix to store the matrix, the memory is far less than
%the full format