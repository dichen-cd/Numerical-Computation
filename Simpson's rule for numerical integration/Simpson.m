a=input('Type the lower bound(a): ');
b=input('Type the upper bound(b): ');
n=input('Type the number of intervals(n): ');

h=(b-a)/n;
Sn=f(a)+f(b);

for i=1:n-1
    Sn=Sn+2*f(a + i*h);
end

for i=0:n-1
   Sn=Sn+4*f(a+ h/2 + i*h);
end

Sn=(h/6)*Sn
