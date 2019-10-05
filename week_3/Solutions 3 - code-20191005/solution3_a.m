p = @(x) -3/8 * x.^3 + 5/4 * x.^2 + x/2 - 1;
dp = @(x) -9/8 * x.^2 + 5/2 * x + 1/2;
t_0 = @(x) dp( 0 ) * x + p( 0 ); % tangent line in x=0
t_1 = @(x) dp( 2 ) * (x-2) + p( 2 ); % tangent in x=2
xv = linspace(-1,3,1001);
plot( xv, p( xv ), '-k', xv, t_0( xv ), '--k', xv, t_1( xv ), '--k');
hold on
line([-1,3], [0 0],'color','k')
line([0,0], [p(0) 0],'color','r')
line([2,2], [0 p(2)],'color','r')
plot(0,p(0),'-X','color','r','MarkerSize',12)
plot(2,p(2),'-X','color','r','MarkerSize',12)
grid on