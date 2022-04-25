function [f c] = value_of_X(l,u,b)

dim = size(l);                  %dimension of matrix a i.e. 15*15
n= dim(2);                      %size of a i.e. 15

y= zeros(n,1);
counter =0;                     % counter for no. of operations

y(1) = b(1) / l(1,1);         
counter = counter+1;
for i = 2:n
    sum = 0; 
    for j = 1:i-1
        sum = sum + l(i,j)*y(j);                % applying summation formulae
        counter = counter+2;
    end
    y(i) = ( b(i) - sum ) / l(i,i);             % calculating the value og x(i)
    counter = counter+2;
end

x= zeros(n,1); 


x(n) = y(n) / u(n,n);         
counter = counter+1;
for i = n-1:-1:1
    sum = 0; 
    for j = n:-1:i+1
        sum = sum + u(i,j)*x(j);                % applying summation formulae
        counter = counter+2;
    end
    x(i) = ( y(i) - sum ) / u(i,i);             % calculating the value og x(i)
    counter = counter+2;
end

f = x;
c = counter;
end
