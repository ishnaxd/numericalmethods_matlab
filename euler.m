clc
clear 
f=@(x,y)  x*y;
h=0.1;
a=1;
b=1.5;
yi=5;
n=(b-a)/h;
for i=0:n-1
    xi=a+i*h;
    yi=yi+ h*f(xi,yi);
end
fprintf("the value of y is %f ",yi);