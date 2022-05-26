clc
clear
disp('newton divided difference ')
X= input('enter x data :');
Y =input('enter y data : ');
xp=input('enter the point : ');
n=length(X);
D=zeros(n,n);
D(:,1)=Y';
for j = 2:n
    for i= 1:n-j+1
        num=D(i+1,j-1)-D(i,j-1);
        den=X(i+j-1)-X(i);
        D(i,j)= num./den;
    end
end
for i= 1:n-1
    p(i)=prod(xp-X(:,1:i))* D(1,i+1);
end
y=Y(1)+sum(p);
fprintf("the value of y is %f\n",y);



