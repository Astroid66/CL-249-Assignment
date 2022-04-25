function I = gauss_quadrature(fun,n,a,b)

    h = (b-a)/n;                            % calculating the value of 'h'
    B = zeros(n+1,1);                       % forming 'B' which is the coordinates of the partition
    
    for i=0:n
        B(i+1) = a + i*h;
    end
    I=0;
    x1 = -0.577350269;                      % initializing the value of x1 to be 1/root(3)
    
    for i=1:n
        alpha = (B(i+1) - B(i))/2;
        beta = (B(i+1) + B(i))/2;
        I = I + alpha * ( fun(alpha*x1 + beta) + fun(-alpha*x1 + beta));        % calculating the value of the integral using gauss- quadrature formula
    end
    return;
    
end