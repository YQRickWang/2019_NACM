t = [0.00,0.07,0.14,0.21,0.28,0.35,0.42,0.49,0.56,0.63,0.70]
v = [194,184,177,156,142,160,168,166,170,178,187]

m = 100

a = t(1);
b = t(end);

y = interpft(v,m*11);
dt = (b-a)/(m*11-1)
t_1 = a:dt:b

plot(t,v,'-o',t_1,y,'--')

%ejection fraction
E_f = (max(y)-min(y))/max(y)
disp(E_f)