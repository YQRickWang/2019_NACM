f = @(x) sin( x );   a = 0;   b = 3 * pi;
n_vect = 1 : 7;   % vector containing all the degrees of desired polynomials
x_values = linspace( a, b, 1001 );  
f_values = f( x_values );
for n = n_vect    % for all the degrees in n_vect
    x_nodes = linspace( a, b, n + 1 );
    y_nodes = f( x_nodes );
    P = polyfit( x_nodes, y_nodes, n );
    P_values = polyval( P, x_values );
    figure( n );
    plot( x_values, P_values, '-k', ...
               x_values, f_values, '--k', x_nodes, y_nodes, 'xk'  );
    legend( '\Pi_n f(x)', 'f(x)', '(x_i,y_i)');    
end