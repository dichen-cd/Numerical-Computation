x=input('Enter x vector in the table: ');
y=input('Enter y vector in the table: ');
x_0=input('Enter the interpolation point: ');

n=length(x);

L=0;
for i=1:n
    M=y(i);
    
   for j=1:n
       if j == i
           continue;
       else
           M=M*(x_0-x(j))/(x(i)-x(j));
       end
   end
    
    L=L+M;
end

L