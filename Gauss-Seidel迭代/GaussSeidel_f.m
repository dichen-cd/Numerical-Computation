function x=GaussSeidel_f(A,b)
D=diag(diag(A));
x=zeros(size(A,1),1);
X=ones(size(x));
L=zeros(size(A));
for i=2:size(A,1)
    for j=1:(i-1)
        L(i,j)=-A(i,j);
    end
end
U=D-L-A;

max_iter_num=100;
epsilon=1e-6;

for iter_num=0:max_iter_num
    X=(D-L)\(U*x)+(D-L)\b;
 
    if max(abs(X-x))<=epsilon
        break
    end
    x=X; 
end
end