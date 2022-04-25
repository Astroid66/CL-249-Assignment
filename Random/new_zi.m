function [g,u] = new_zi(z0)

    uf=1;
   
    f =@(z) un(z) - uf;       % Van-Der waal's equation expressed as f(V)
    f(z0);
    del = 0.0001;           % value of delta
   
    z1 = z0 - (f(z0)*del*z0)/(f(z0+del*z0) - f(z0));
    g = z1;
    
end