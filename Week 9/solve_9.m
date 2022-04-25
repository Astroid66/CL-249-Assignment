function C = solve_9( h,n)

    D= 5000;
    U = 100;
    k = 2;
    L = 100;
    Cinlet = 100;
    alpha = (D/h*h)- (U/2*h);
    beta = -(2*D/h*h + k);
    gamma = D/h*h + U/2*h;
    
    A = zeros(n+2);
    C = zeros(n+2,1);
    B = zeros(n+2,1);
    B(1,1) = U*Cinlet;
        
    A(1,1) = D/2*h;
    A(1,2) = U;
    A(1,3) = -D/2*h;
    A(n+2,n) = -1;
    A(n+2,n+1) = 0;
    A(n+2,n+2) = 1;
    
    
    for i = 2:n+1
        A(i,i+1) = alpha;
        A(i,i) = beta;
        A(i,i-1) = gamma;
    end
    
    C = gauss_ele(A,B,n+2);
    return
end