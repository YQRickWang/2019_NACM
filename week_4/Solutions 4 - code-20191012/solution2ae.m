phi = @(x) x/2 + sin(x) - pi/6 + sqrt(3)/2;
dphi = @(x) 1/2 + cos(x);
a2 = pi/2; b2 = pi;
xv = linspace( a2, b2, 1001 );
figure( 1 ); plot( xv, phi( xv ), '-k', xv, xv, '--k' ); grid on
axis equal; axis([ a2 b2 a2 b2 ]);
figure( 2 ); plot( xv, dphi( xv ), '-k', xv, -ones( 1, length( xv ) ), ...
     '--k', xv, ones( 1, length( xv ) ), '-.k' ); axis([ a2 b2 -1.1 1.1 ]);
alpha2 = 2.246005589297;
phi( alpha2 ) - alpha2
dphi( alpha2 )
% ans =
% 
%    1.0960e-12
% 
% ans =
% 
%    -0.1251

xv = linspace( a2, b2, 1001 );
dphi_max_I2 = max( abs( dphi( xv ) ) )
% dphi_max_I2 =
% 
%     0.5000