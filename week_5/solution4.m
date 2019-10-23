f = @(x) 1 ./ ( 1 + x.^2 );   a = -5;   b = 5;
n_vect = [ 2 4 8 12 ];
x_values = linspace( a, b, 1001 );
f_values = f( x_values );
for n = n_vect
   x_nodes = linspace( a, b, n + 1 );
   y_nodes = f( x_nodes );
   P = polyfit( x_nodes, y_nodes, n );
   P_values = polyval( P, x_values );
   figure( n );
   plot( x_values, P_values, '-k', ...
           x_values, f_values, '--k', x_nodes, y_nodes, 'xk' );
   legend( '\Pi_n f(x)', 'f(x)', '(x_i,y_i)');        
end
%%
err = [ ];
for n = n_vect
   x_nodes = linspace( a, b, n + 1 );
   y_nodes = f( x_nodes );
   P = polyfit( x_nodes, y_nodes, n );
   P_values = polyval( P, x_values );
   err = [ err, max( abs( P_values - f_values ) ) ];    
end
err
%  err =
%      0.6462    0.4384    1.0452    3.6630
figure; plot( n_vect, err, '-ko' );
%%
for n = n_vect
   x_nodes_c = (a+b)/2 + (b-a)/2 * ( - cos( pi * [ 0 : n ] / n ) );
   y_nodes_c = f( x_nodes_c );
   P_c = polyfit( x_nodes_c, y_nodes_c, n );
   P_c_values = polyval( P_c, x_values );
   figure( n + 100);
   plot( x_values, P_c_values, '-k', ...
         x_values, f_values, '--k', x_nodes_c, y_nodes_c, 'xk' );
   legend( '$\prod_n f(x)$', '$f(x)$', '$(x_i,y_i)$' );        
end
%%
err_c = [ ];
for n = n_vect
   x_nodes_c = (a+b)/2 + (b-a)/2 * ( - cos( pi * [ 0 : n ] / n ) );
   y_nodes_c = f( x_nodes_c );
   P_c = polyfit( x_nodes_c, y_nodes_c, n );
   P_values_c = polyval( P_c, x_values );
   err_c = [ err_c, max( abs( P_values_c - f_values ) ) ];    
end
err_c
%  err_c =
%     6.4623e-01   4.5998e-01   2.0468e-01   8.4396e-02
plot( n_vect, err_c, '-ks'  );