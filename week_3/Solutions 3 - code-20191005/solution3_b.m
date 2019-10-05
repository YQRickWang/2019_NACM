x0 = 1e-3; tol = 1e-8; nmax = 20;
[xvect, resvect, nit] = newton( p, dp, x0, tol, nmax );
xvect( nit+1 )
nit
% ans =
% 
%    0.7955
% 
% nit =
% 
%      8


% xvect =
% 
%      0     2     0     2     0     2     0     2     0     2     0  ... 
