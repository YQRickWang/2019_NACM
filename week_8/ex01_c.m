I = zeros(7,3);
err = zeros(7,3)

for d =0:1:6
    fun =@(x) x.^d;
    a=0,b=1;
    I_f = 1/(d+1);

    
    for n=0:1:2
        Ih=gauss_legendre_simple_quadrature( fun, a, b, n )
        I(d+1,n+1) = Ih
        err(d+1,n+1)=abs(Ih-I_f)
    end
    
end