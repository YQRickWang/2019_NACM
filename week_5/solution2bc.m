f = @(x) sin( x );   a = 0;   b = 3 * pi;
n_vect = 1 : 7;   % vector containing all the degrees of desired polynomials
x_values = linspace( a, b, 1001 );   
f_values = f( x_values );
err = [ ];   % initialization of the vector containing the true errors 
for n = n_vect
    x_nodes = linspace( a, b, n + 1 );
    y_nodes = f( x_nodes ); 
    P = polyfit( x_nodes, y_nodes, n );
    P_values = polyval( P, x_values );
    err = [ err, max( abs( P_values - f_values ) ) ];  % append errors to err
end
err
%  err =
%      1.0000    1.5925    1.0000    0.6363    0.4228    0.1301    0.0895
plot( n_vect, err, '-ko' );

err_estimated = [ ];
for n = n_vect
       df_max = 1;  % for all n and x \in I=[0,3 *pi]
       err_estimated = [ err_estimated, ...
             1 / ( 4 * ( n + 1 ) ) * ( ( b - a ) / n )^( n + 1 ) * df_max ];
end
err_estimated
%  err_estimated =
%     11.1033    8.7205    6.0881    3.6310    1.8689    0.8427    0.3375
plot( n_vect, err, '-ko', n_vect, err_estimated, '--ks' );