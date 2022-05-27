clc
clear
disp('regula falsi method')
f=@(x) x*log10(x)-1.2;
a=2;
b=3;
e=1e-8;
fa=f(a);
fb=f(b);
if fa*fb>0
    disp("you chose the wrong value ");

else 
    c=((a*fb)-(b*fa))/(fb-fa);
    fc=f(c);

    while abs(fc)>e
        if fa*fc<0
            b=c;
            fb=fc;
        else 
            a=c;
            fa=fc;
        end

        c=((a*fb)-(b*fa))/(fb-fa);
        fc=f(c);
    end

    fprintf("the value of root is : %f",c);
end





