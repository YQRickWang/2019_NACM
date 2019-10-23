a=-5,b=5;
f = @(x) exp(-(x.^2));

n=[2,7,12,22,27,32];
H=[]
%for each different n

err =[];
for t=1:6
    H = [H,(b-a)/n(t)]
    %pp = interp1(x,v,method,'pp')
    x = a:H(t):b
    x1=linspace(a,b)
    pp = interp1(x,f(x),'linear','pp')
    v = ppval(pp,x)
    v1=ppval(pp,x1)
    err = [err,max(abs(f(x1)-v1))]
    
    %compute the error
    
    %plot
    %disp(pp)
    figure
    plot(x1,f(x1),'-o',x1,v1,'--');
    hold on;
    
    
end

%plot the err coresponds to the n
figure
%semilogy(n,err,'--o')
semilogy(H,err,'--o')
hold on

