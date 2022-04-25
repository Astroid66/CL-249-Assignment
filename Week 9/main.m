num=8;
N = zeros(num,1);
h = zeros(num,1);


for i=2:num
    N(i) = 2^(i);
    C = solver(N(i));
    X = linspace(0,100,N(i)+2);
%     D = 5000;
%     U = 100;
%     k = 2;
%     L = 100;
%     Cinlet = 100;
%     h(i)=L/N(i);
%     alpha = (D/h(i)*h(i))- (U/2*h(i));
%     beta = -(2*D/h(i)*h(i) + k);
%     gamma = D/h(i)*h(i) + U/2*h(i);
%     
%     A = zeros(N(i)+2);
%     C = zeros(N(i)+2,1);
%     B = zeros(N(i)+2,1);
%     B(1,1) = U*Cinlet;
%         
%     A(1,1) = D/2*h(i);
%     A(1,2) = U;
%     A(1,3) = -D/2*h(i);
%     A(N(i)+2,N(i)) = -1;
%     A(N(i)+2,N(i)+1) = 0;
%     A(N(i)+2,N(i)+2) = 1;
%     
%     
%     for j = 2:N(i)+1
%         A(j,j+1) = alpha;
%         A(j,j) = beta;
%         A(j,j-1) = gamma;
%     end
% 
%     
%     C = gauss_ele(A,B,N(i) + 2);
    plot(X,C);
    hold on
end
    
        
    