% EXAMPLE 1
x_nodes = [0:0.25:1];
y_nodes = [3.38 3.86 3.85 3.59 3.49];
P = polyfit( x_nodes, y_nodes, 4 )   % Coefficients of the L. polynomial 
%  P = 1.8133   -0.1600   -4.5933    3.0500    3.3800

% polynomial value in a single point
x_value = 0.4;
P_value = polyval( P, x_value )    % value of the polynomial at point x_value
%  P_value =
%      3.9012

% polynomial values in multiple points
x_values = linspace( 0, 1, 1001);  % 1001 equispaced points between 0 and 1
P_values = polyval( P, x_values ); % values of the polynomial at points x_values
plot( x_values, P_values )         % plot the interpolating polynomial

% EXAMPLE 2
f = @(x) cos(x); a=0; b=1;
n = 4;
x_nodes = linspace( a, b, n +1 );
y_nodes = f(x_nodes);
P = polyfit( x_nodes, y_nodes, n )
%  P =
%      0.0362    0.0063   -0.5025    0.0003    1.0000

% EXAMPLE 3
f = @(x) sin(x) + x; a=0; b=3*pi;
x_values = linspace(a,b,1001);
plot( x_values, f(x_values), 'b' ); 
hold on
for n = 1:5
    x_nodes = linspace( a, b, n+1 ); 
    P = polyfit( x_nodes, f(x_nodes), n );
    plot( x_values, polyval( P, x_values ), '--b' )
end