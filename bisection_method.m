clc 
clear
disp('bisection method');
f=@(x) x*log10(x)-1.2;
a=2;
b=3;
e=1e-8;
fa=f(a);
fb=f(b);
if f(a)*f(b)>0
    disp('given values do not bracket the root');
else 
    c=(a+b)/2;
    fc=f(c);
    while abs(f(c))>e
        if fa*fc<0
            b=c;
        else
            a=c;
        end
        c=(a+b)/2;
        fc=f(c);

    end
 fprintf("root is %f/n: ",c);
end



