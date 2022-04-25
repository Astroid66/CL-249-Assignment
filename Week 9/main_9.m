eps = 10^-4;

Y0 = zeros(1, 4);

for i = 2:10
    
    N = 2^i;
    h = 100/N;
    X = linspace(0,100, N+2);
    C = solve_9(h,N);
    
    for j = 1:i
        eps = abs((C(2*j - 1) - Y0(j))/C(2*j - 1));
        maxerr=-1;
        if eps > maxerr
            maxerr = eps;
        end
        
    end
    
    legendtext = ['h = ' num2str(h)];
    
    if maxerr<eps
        plot(X, C, 'LineWidth', 3, 'DisplayName', legendtext);
    else
        plot(X, C, 'DisplayName', legendtext);
    end
    hold on
    Y0 = C;
end


title('Plot of C v/s x')
xlabel('X')
ylabel('C')
legend
