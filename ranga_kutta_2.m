clc
clear
f=@(x,y) x+sqrt(y);
h=0.1;
a=0;
b=0.3;
yi=1;
n=(b-a)/h;
for i=0:n
    xi=a+h*i;
    k1=h*f(xi,yi);
    k2=h*f(xi+h,yi+k1);
    yi=yi+0.5*(k1+k2);
end
fprintf("the value of y is : %f",yi);
