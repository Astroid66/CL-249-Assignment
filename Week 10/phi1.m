function f = phi1(c,h,y1,y2,x)

if (c==1)                                       % c=1 for solving y1
    k1 = f1(y1,y2,x);                             % calculating the value of k1,k2,k3,k4
    k2 = f1(y1 + k1*h/2,y2,x+h/2);
    k3 = f1(y1 + k2*h/2,y2,x+h/2);
    k4 = f1(y1 + k3*h,y2,x+h);
    
    f = (k1 + 2*k2 + 2*k3 + k4)/6;              % calculating the function
    return;
end

if(c==2)                                        % c=2 for solving y2
    k1 = f2(y1,y2,x);                             % calculating the value of k1,k2,k3,k4
    k2 = f2(y1 + k1*h/2,y2,x+h/2);
    k3 = f2(y1 + k2*h/2,y2,x+h/2);
    k4 = f2(y1 + k3*h,y2,x+h);
    
    f = (k1 + 2*k2 + 2*k3 + k4)/6;              % calculating the function
    return;
end

end