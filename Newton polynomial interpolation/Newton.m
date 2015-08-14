x=input('Enter x vector in the table: ');
y=input('Enter y vector in the table: ');
x_0=input('Enter the interpolation point: ');

n=length(x);

dqtable=zeros(n,n-1);

for i=2:n
   dqtable(i,1)=(y(i)-y(i-1))/(x(i)-x(i-1));
end

for i=2:n
   for j=(i+1):n
       dqtable(j,i)=(dqtable(j,i-1)-dqtable(j-1,i-1))/(x(j)-x(j-i));
   end
end

N=y(1);
M=x_0-x(1);
for i=1:(n-1)
    N=N+dqtable((i+1),i)*M;
    M=M*(x_0-x(i+1));
end

N