function Y = solve(a, b, h)
    Cin = 100;
    L = b;
    k = 2;
    U = 100;
    D = 5000;
    n = (L-a)/h;

    A = zeros(n+2);
    B = zeros(n+2, 1);
    
    A(1,1) = D;
    A(1,2) = 2*h*U;
    A(1,3) = -D;
    A(n+2, n) = -1;
    A(n+2, n+2) = 1;

    for i = 2:n+1
        A(i, i-1) = (2*D)+(h*U);
        A(i, i) = -((2*k*h*h)+(4*D));
        A(i, i+1) = (2*D)-(h*U);
    end
    B(1, 1)=2*h*U*Cin;
    
    Y = gauss_ele(A, B, n+2);
    Y = Y(2:n+1)';
    return
end