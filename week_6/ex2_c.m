a=-5,b=5;
f = @(x) exp(-(x.^2));

n=[2,7,12,22,27,32];
H=[]
err=[]
for t=1:6
    num_interval = 7
    H = [H,(b-a)/n(t)]
    x = a:H(t):b
    x1 = linspace(a,b)
    pp = spline(x,f(x))
    v = ppval(pp,x)
    v1 = ppval(pp,x1)
    
    %err
    err =[err,max(abs(f(x1)-v1))]
    
    %plot
    figure
    %plot(x1,f(x1),'o',x1,v1,'--')
    plot(x,f(x),'o',x1,v1,'--')
    %plot(x1,v1,'--')
    hold on
    
end

figure
plot(n,err,'-*')
hold on