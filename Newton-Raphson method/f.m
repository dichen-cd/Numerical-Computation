function [ f, diff_f ] = f( a )
syms y x
y=x^3+10*x-20;
f=double(subs(y,a));
diff_f=double(subs(diff(y), a));
end


