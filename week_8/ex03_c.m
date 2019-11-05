n=20;

A = diag(4*ones(n,1))+diag(-1*ones(n-1,1),1)+diag(-2*ones(n-1,1),-1) ...
    +diag(-1*ones(n-2,1),-2)+diag(ones(1,1),n-1)+diag(-1*ones(1,1),-(n-1));

x_ex = ones(n,1);
spy(A,'r');