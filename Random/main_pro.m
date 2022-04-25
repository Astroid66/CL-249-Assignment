X0=load("X_data.txt");              %loading file for X data
Y=load("Y_data.txt");               %loading file for Y data

n=10;

X=zeros(n,n);

for i=1:n
    
    A = [a(i), b(i), c(i), d(i);
         a(i-1), b(i-1), c(i-1), d(i-1);
         0, 3*a(i-1) - 3*a(i), 2*b(i-1) - 2*b(i), c(i-1) - c(i);
         0, 0, 6*a(i-1) - 6a(i), 2b(i-1) - 2*b(i);];
     
    X = [x(i)^3 ; x(i)^2 ; x(i) ; 1];
    
    Y = [ y(i) ; y(i-1) ; 0 ; 0];
    
    gauss

% 
% prod =@(x) 1;
% fu = @(x) 0;
% 
% 
% for i=0:n
%     prod =@(x) 1;
%     for j=0:n
%         if j~=i
%             prod =@(x) prod(x) * ((x-X0(j+1))/(X0(i+1)-X0(j+1)));
%         end
%     end
%     fu =@(x) fu(x) + prod(x) * Y(i+1);
% end
% 
% for i=0:n
%      X0(i+1) = i-0.5; 
%     Y(i+1) = fu(X0(i+1));
% end
% 
% Y