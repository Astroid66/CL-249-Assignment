X0=load("X_data.txt");              %loading file for X data
Y=load("Y_data.txt");               %loading file for Y data

n=11;
% A=coeff(X,Y);

X=zeros(n,n);

% functi= @(x) ;
% 
% for i=1:n                           % loop for creating the X vector
%     Xt=X0(i);
%     for j=1:n
%         X(i,j)=Xt^(j-1);
%     end
% end

for i=1:n                              % loop for creating the X vector
    X(:,i) = X0.^(i-1);
end

A = gauss_ele(X,Y,n)                % calling the function Gauss_ele to find the coeff of the polynomial

fu=@(x) A(1) + A(2)*x + A(3)*x^2 + A(4)*x^3 + A(5)*x^4 + A(6)*x^5 + A(7)*x^6 + A(8)*x^7 + A(9)*x^8;             % defining the polynomial by using the corff matrix.

for i=1:n-1
    Ypoly(i) = fu(i-0.5);                       %finding the value of f(x) at x=0.5,1.5......
    Yform(i) = sqrt(i-0.5);                     %finding the value of sqrt of x at x=0.5,1.5......
    diff(i) = abs(Ypoly(i) - Yform(i));         %finding the diffrence in the values of the above both variables
end

diff                                            %displaying the difference

xplot_poly= linspace(0,7.5,10000);

for i=1:10000
    yplot_poly(i)= fu(xplot_poly(i));
end

for i=1:9
    X0(i) = i-0.5; 
    Y(i) = sqrt(X0(i));
end

%plotting the graph

plot(X0,Y, 'ko','DisplayName','Data point');                            % plotting the given data points
hold on
plot(xplot_poly , yplot_poly, 'b','DisplayName','Polynomial')           % plotting the values of polynomial for the given data points
fplot(@(x) sqrt(x),'r');                                                % plotting the inbuilt sqrt function

title("Teacher's Day Special");                                         % giving title
xlabel("X-Points");
ylabel("Y-Points");
% plot(X,f(X));
legend;