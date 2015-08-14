I=input('Type the interval of root: ');
epsilon=input('Type the maximal error: ');

x_pre=I(1);
x_for=0;
e=100;

steps=0;
while(e > epsilon)
    [fun, diff_fun]=f(x_pre);
    x_for = x_pre -fun/diff_fun ;
    e=abs(x_pre-x_for);
    x_pre=x_for; 
    steps=steps+1;
end

fprintf('The root is x=%f \n', x_for);
fprintf('Iteration steps is: %d \n', steps);