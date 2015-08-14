a=input('Type the lower bound(a): ');
b=input('Type the upper bound(b): ');
e=input('Type the minimal error(epsilon): ');

k=0; 
n=1; 
h=b-a;  
T(1,1)=h/2*(f(a)+f(b));  
err=10; 

while err>=e  
    k=k+1;  
    h=h/2;  
    tmp=0;  
    
    for i=1:n  
        tmp=tmp+f(a+(2*i-1)*h);  
    end  
    
    T(k+1,1)=T(k,1)/2+h*tmp; 
    
    if k<3
        for j=1:k 
            T(k+1,j+1)=(4^j*T(k+1,j) - T(k,j))/(4^j-1);  
        end 
    else
        for j=1:3 
            T(k+1,j+1)=(4^j*T(k+1,j) - T(k,j))/(4^j-1);  
        end 
    end
    
    n=n*2;  
    if k<3
        err=abs(T(k+1,k+1)-T(k+1,k)); 
    else
        err=abs(T(k+1,4)-T(k+1,3));
    end
end  
R=T(k+1,4)
