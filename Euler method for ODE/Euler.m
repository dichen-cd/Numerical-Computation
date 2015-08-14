field=zeros(2);
field= input('Type the interval for x: ');
h=     input('Type the step length h: ');
y=zeros(floor((field(2)-field(1))/h+1));
y(1)=input('Type the initial condition y(1): ');

k_max=floor((field(2)-field(1))/h+1);

x=field(1);
for k=1:k_max
    y(k+1)=y(k)+h*f(x,y(k));
    x=x+h;
    fprintf('y(%d) = %f \n', k+1, y(k+1));
end