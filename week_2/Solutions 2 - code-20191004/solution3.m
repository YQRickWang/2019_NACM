fun = @(x) x.^3 - 2*x - 5;
dfun = @(x) 3*x.^2 - 2;
newton_iterate = @(xn) xn - fun( xn ) / dfun( xn );
x0 = 1.5;
x1 = newton_iterate( x0 )
x2 = newton_iterate( x1 )
x3 = newton_iterate( x2 )
% x1 =
% 
%     2.4737
% 
% x2 =
% 
%     2.1564
% 
% x3 =
% 
%     2.0966
