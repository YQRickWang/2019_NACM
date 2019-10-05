m=1;
fun=@(x) (sin(x)).^m;
dfun=@(x) m*(sin(x).^(m-1)).*cos(x);
tol=1e-8;nmax=50;x0=pi/6;

%[xvect,resvect,nit] = newton( fun, dfun, x0, tol, nmax )
% disp('number of iterations');
% disp(nit);
alpha=0;
errvect={};
nvect={};
% errvect =abs(xvect-alpha); 
% nvect=0:1:nmax;
% bnvect=2.^(-nvect);
% semilogy(nvect,errvect,'-ko',bnvect,errvect,'--k');grid on
% xlabel('n');ylabel('err');
% legend('err','b_n=2^{-n}','Location','southwest');

for m=1:3
    fun=@(x) (sin(x)).^m;
    dfun=@(x) m*(sin(x).^(m-1)).*cos(x);
    [xvect,resvect,nit] = newton( fun, dfun, x0, tol, nmax );
    errvect{m}=abs(xvect-alpha);
    nvect{m}=[0:nit];
end
semilogy(nvect{1},errvect{1},'-ko',nvect{2},errvect{2},'-ks',...
    nvect{3},errvect{3},'-k*');grid on;axis([-1 40 1e-14 1])
xlabel('n');ylabel('err');legend('m=1','m=2','m=3');


