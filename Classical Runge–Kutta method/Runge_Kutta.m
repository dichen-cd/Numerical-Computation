field= input('Type the interval for x: ');
h=     input('Type the step length h: ');
y=zeros(floor((field(2)-field(1))/h+1));
y(1)=input('Type the initial condition y(1): ');

k_max=floor((field(2)-field(1))/h+1);

x=field(1);
for k=1:k_max
    K1= f(x,y(k));
    K2= f(x+h/2, y(k) + h/2 *K1);
    K3= f(x+h/2, y(k) + h/2 *K2);
    K4= f(x+h, y(k) +h*K3);
    y(k+1)=y(k) + h/6 *(K1 + 2*K2 + 2*K3 +K4);
    
    fprintf('x = %f, y(%d) = %f \n', x, k, y(k));
    x=x+h;
end