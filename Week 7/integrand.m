function f = integrand
    
    % value of the given function
    f = @(x) ((250*x)/(x+6)) * exp(-x/10);
    return;
    
end
