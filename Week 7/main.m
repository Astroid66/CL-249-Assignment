n = input("Enter the value of n=");                 % taking value of 'n'
a=0;
b=30;                                               % initializing 'a' and 'b'

I1 = trapezoidal(integrand,n,a,b)
I2 = gauss_quadrature(integrand,n,a,b)              % calling the function I1() and I2()
h = zeros(100,1);
k=1;
for i=1:100
        h(k) = (b-a)/i;                             % forming the 'h' matrix
        I1(k) = trapezoidal(integrand,i,a,b);
        I2(k) = gauss_quadrature(integrand,i,a,b);  % calculating their corresponding values of I1 and I2
        k = k+1;
end

% plotting the graphes
plot(h,I1);
hold on;
plot(h,I2);
xlabel("h values");
ylabel("Value of integral");
title("Value of I on variable 'h'");