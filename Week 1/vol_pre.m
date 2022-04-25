function f = vol_pre(P)

ep = 0.00001;                    % value of epsilon

V0=1;                            % the initial value of V1
i=2;
while 1
    V1 = new_Vi(V0,P);
    if abs(V1 - V0) < ep,        % checking the distance between adjacent points   
        break;
    else
        i=i+1;
    end
    V0 = V1;
end

f = V1;                          % returning the value of volume 
end 
