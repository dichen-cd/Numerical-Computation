function [x]=ColumnElimination_f(A,b)
[n,~]=size(A);
x=zeros(n,1); 

for k=1:n-1
    a_max=0;
    for i=k:n
        if abs(A(i,k))>a_max
            a_max=abs(A(i,k));
            r=i;
        end
    end
    
    if a_max<1e-10
        return;
    end
    
    if r>k
        for j=k:n
            z=A(k,j);
            A(k,j)=A(r,j);
            A(r,j)=z;
        end
        z=b(k);
        b(k)=b(r);
        b(r)=z;
    end
    
    for i=k+1:n
        m=A(i,k)/A(k,k);
        for j=k:n
            A(i,j)=A(i,j)-m*A(k,j);
        end
        b(i)=b(i)-m*b(k);
    end
end

if abs(A(n,n))==0
   return;
end

x(n)=b(n)/A(n,n);

for i=n-1:-1:1
    for j=i+1:n
        b(i)=b(i)-A(i,j)*x(j);
    end
    x(i)=b(i)/A(i,i);
end
