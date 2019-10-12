phi = @(x) x/2 + sin(x) - pi/6 + sqrt(3)/2;
tol = 1e-6;
kmax = 1500;
alpha2 = -1.047197598567;
x0 = -1.1;
[x2vect, kc2] = fixed_point_iterations( phi, x0, tol, kmax );
err2vect = abs( x2vect - alpha2 );
kc2, err2 = err2vect( end )
% kc2 =
% 
%      8
% 
% err2 =
% 
%    3.5940e-08

k2vect = 0 : kc2;
figure( 1 ); semilogy( k2vect, err2vect, '-ok' ); grid on;
legend('x^{(0)}=-1.1');
ak2vect = ( x2vect( 2 : end ) - alpha2 ) ./ ( x2vect( 1 : end - 1 ) - alpha2 );
figure( 2 ); plot( k2vect( 1 : end - 1 ), ak2vect, '-ok' ); grid on;
legend('x^{(0)}=-1.1', 'Location', 'Best');

% x1 = pi;
% [x2vect_1, kc2_1] = fixed_point_iterations( phi, x1, tol, kmax );
% err2vect_1 = abs( x2vect_1 - alpha2 );
% 
% k2vect = 0 : kc2; k2vect_1 = 0 : kc2_1;
% figure( 1 ); semilogy( k2vect, err2vect, '-ok' ); hold on; semilogy( k2vect_1, err2vect_1, '-Xk' );
% legend('x^{(0)}=\pi/2','x^{(0)}=\pi');
% ak2vect = ( x2vect( 2 : end ) - alpha2 ) ./ ( x2vect( 1 : end - 1 ) - alpha2 );
% ak2vect_1 = ( x2vect_1( 2 : end ) - alpha2 ) ./ ( x2vect_1( 1 : end - 1 ) - alpha2 );
% figure( 2 ); plot( k2vect( 1 : end - 1 ), ak2vect, '-ok' );  hold on; plot( k2vect_1( 1 : end - 1 ), ak2vect_1, '-Xk' );
% legend('x^{(0)}=\pi/2','x^{(0)}=\pi');


