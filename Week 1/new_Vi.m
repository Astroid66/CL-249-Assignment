function g = new_Vi(V0,P)

    a = 3.592;              % value of canstant 'a'
    b = 0.04267;            % value of constant 'b'
    R = 0.082056;           % value of Universal gas constant
   

    fu =@(V) P*V^3 - (R*345+P*b)*V^2 + a*V - a*b;        % Van-Der waal's equation expressed as f(V)
    del = 0.0001;           % value of delta
    V1 = V0 - (fu(V0)*del*V0)/(fu(V0+del*V0) - fu(V0));
    g = V1;
    
end