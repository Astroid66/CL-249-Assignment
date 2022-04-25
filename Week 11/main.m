
l = 0;
u = 100;

ep = 10^-4;
Y0 = zeros(1, 4);
for i = 2:8
    N = 2^i;
    h = (u-l)/N;
    
    X = linspace(l, u, N);
    
    Y = solve(l, u, h);
    
    m = -1;
    for j = 1:i
        
        error = abs((Y(2*j - 1) - Y0(j))/Y(2*j - 1));
        if error > m
            m = error;
        end
    end
    
    
    if m<ep
        plot(X, Y, 'LineWidth', 2.5);
    else
        plot(X, Y);
    end
    hold on
    Y0 = Y;
end

xlabel('X')
ylabel('Conc')
title('Plot of c vs x')
legend
