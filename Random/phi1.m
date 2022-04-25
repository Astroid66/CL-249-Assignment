function f = phi1(c,h,u,z,t)

if (c==1)                                       % c=1 for solving y1
    k1 = h*f1(z);                           % calculating the value of k1,k2,k3,k4
    k2 = h*f1(z + k1*h/2);
    k3 = h*f1(z + k2*h/2);
    k4 = h*f1(z + k3*h);
    
    f = (k1 + 2*k2 + 2*k3 + k4)/6;              % calculating the function
    return;
end

if(c==2)                                        % c=2 for solving y2
    k1 = h*f2(u,t);                             % calculating the value of k1,k2,k3,k4
    k2 = h*f2(u + k1*h/2,t+h/2);
    k3 = h*f2(u + k2*h/2,t+h/2);
    k4 = h*f2(u + k3*h,t+h);
    
    f = (k1 + 2*k2 + 2*k3 + k4)/6;              % calculating the function
    return;
end

end