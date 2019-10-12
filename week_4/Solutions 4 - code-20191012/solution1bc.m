phi = @(x) cos(x);
tol = 1e-6;
kmax = 1500;
alpha = 0.739085133215161;
x0 = -pi/4;
[xvect, kc] = fixed_point_iterations( phi, x0, tol, kmax );
errvect = abs( xvect - alpha );
kc, err = errvect( end )
% kc =
% 
%      30
% 
% err =
% 
%    3.3407e-07

kvect = 0 : kc;
figure( 1 ); semilogy( kvect, errvect, '-ok' ); grid on; legend('x^{(0)}=-\pi/4');

akvect = ( xvect( 2 : end ) - alpha ) ./ ( xvect( 1 : end - 1 ) - alpha );
figure( 2 ); plot( kvect( 1 : end - 1 ), akvect, '-ok' ); grid on;
legend('x^{(0)}=1.1', 'Location', 'Best');