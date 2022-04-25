function f = phi2(c,h,y1,y2)

if (c==1)                                       % c=1 for solving y1
    k1 = f1(y1,y2);                             % calculating the value of k1,k2,k3,k4,k5,k6
    k2 = f1(y1 + k1*h/4,y2);
    k3 = f1(y1 + k2*h/8 + k1*h/8,y2);
    k4 = f1(y1 - k2*h/2 + k3*h,y2);
    k5 = f1(y1 + 3*k1*h/16 + 9*k4*h/16,y2);
    k6 = f1(y1 - 3*k1*h/7 + 2*k2*h/7 + 12*k3*h/7 -12*k4*h/7 +8*k5*h/7,y2);
    f = (7*k1 + 32*k3 + 12*k4 + 32*k5 + 7*k6)/90;               % calculating the function
    return;
end

if(c==2)                                        % c=2 for solving y2
    k1 = f2(y1,y2);                             % calculating the value of k1,k2,k3,k4,k5,k6
    k2 = f2(y1 + k1*h/4,y2);
    k3 = f2(y1 + k2*h/8 + k1*h/8,y2);
    k4 = f2(y1 - k2*h/2 + k3*h,y2);
    k5 = f2(y1 + 3*k1*h/16 + 9*k4*h/16,y2);
    k6 = f2(y1 - 3*k1*h/7 + 2*k2*h/7 + 12*k3*h/7 -12*k4*h/7 +8*k5*h/7,y2);
    f = (7*k1 + 32*k3 + 12*k4 + 32*k5 + 7*k6)/90;               % calculating the function
    return;
end

if(c==3)                                        % c=3 for solving y3
    k1 = f3(y1,y2);                             % calculating the value of k1,k2,k3,k4,k5,k6
    k2 = f3(y1 + k1*h/4,y2);
    k3 = f3(y1 + k2*h/8 + k1*h/8,y2);
    k4 = f3(y1 - k2*h/2 + k3*h,y2);
    k5 = f3(y1 + 3*k1*h/16 + 9*k4*h/16,y2);
    k6 = f3(y1 - 3*k1*h/7 + 2*k2*h/7 + 12*k3*h/7 -12*k4*h/7 +8*k5*h/7,y2);
    f = (7*k1 + 32*k3 + 12*k4 + 32*k5 + 7*k6)/90;               % calculating the function
    return;
end
end