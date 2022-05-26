clc
clear
disp("lagrange polynomial")
% syms x
X = input( 'enter x data: ');
Y = input ( ' enter y data: ');
xp = input('enter the point which you want to interpolate : ');
n= length(X);
sum=0;

for j  =1:n
    L = 1;
    for k= 1:n
        if k~=j
            L =L * (xp-X(k))/(X(j)-X(k));
        end
    end
    sum = sum + L* Y(j);
end
yp=sum;
fprintf('the ans %f\n',yp);


