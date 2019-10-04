alpha = xvect( 20 + 1 ); % approximation of exact zero (alpha)
nv = [ 0 : 18 ];
nv_ind = nv + 1; % Matlab indexes start from 1
err_n_plus_1 = abs( xvect( nv_ind + 1 ) - alpha );
err_n = abs( xvect( nv_ind ) - alpha );
a_n = err_n_plus_1 ./ err_n;
plot( nv, a_n, '--k*' ); grid on
esterr_n_plus_1 = ( b - a ) ./ 2.^( nv + 1 );
esterr_n = ( b - a ) ./ 2.^( nv );
a_tilde_n = esterr_n_plus_1 ./ esterr_n;
plot( nv, a_tilde_n, '--k*' ); grid on
% xlabel('n, iterarion number','interpreter','latex')
% ylabel('$\tilde{a}_n$','interpreter','latex')
semilogy( nv, err_n, '-ko', nv, esterr_n, '--ks' ); grid on
% xlabel('n, iterarion number','interpreter','latex')
% ylabel('$e_n, \tilde{e}_n$','interpreter','latex')
legend('error','error estimator','Location','northeast')