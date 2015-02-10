field= input('Type the interval for x: ');
h=     input('Type the step length h: ');
y=zeros(floor((field(2)-field(1))/h+1));
y(1)=input('Type the initial condition y(1): ');

k_max=floor((field(2)-field(1))/h+1);

x=field(1);
for k=1:k_max
    y(k+1)=y(k)+h*f(x,y(k));
    y(k+1)=y(k)+(h/2)*(f(x,y(k)) + f(x+h, y(k+1)));
    fprintf('x = %f, y(%d) = %f \n', x, k, y(k));
    x=x+h;
end