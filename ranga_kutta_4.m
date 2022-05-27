clc
clear
f=@(x,y) -x*y;
h=0.2;
a=0;
b=0.2;
yi=1;
n=(b-a)/h;
for i=0:n-1
    xi=a+i*h;
    k1=h*f(xi,yi);
    k2=h*f(xi+0.5*h,yi+0.5*k1);
    k3=h*f(xi+0.5*h,yi+0.5*k2);
%     k3=h*f(xi+0.5*h,yi+0.5*k2);
    k4=h*f(xi+h,yi+k3);
    yi=yi+(1/6)*(k1+2*k2+2*k2+k4);
end
fprintf("the value of y is : %f",yi);

