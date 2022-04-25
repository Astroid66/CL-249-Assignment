function I = trapezoidal(func,n,a,b)

    h = (b-a)/n;                                % calculating the value of 'h'
    X = zeros(n+1,1);
    
    for i=0:n
        X(i+1) = a + i*h;                       % forming 'X'
    end
    
    sum=0;
    for i=2:n
        sum = sum + func(X(i));
    end
    
    I = (h/2)*( func(X(1)) + 2*sum + func(X(n+1)) );        % value of the given integral using trapezoidal rule
    
end