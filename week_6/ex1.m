g = @(x) 10*x.^2;
f = @(x) g(x)+2*rand(size(x))-1;
a=0,b=1;

n = 9;
x=linspace(a,b,n+1);
f_n = polyfit(x,f(x),n);
f_m = polyfit(x,f(x),2);


%plot
x1 = linspace(a,b);
y1_n = polyval(f_n,x1);
y1_m = polyval(f_m,x1);
figure
plot(x,f(x),'o')
hold on
plot(x1,y1_n)
plot(x1,y1_m)
hold off

%extrapolate value of fx in x=2
disp(polyval(f_n,2));
disp(polyval(f_m,2));
disp(f(2))

