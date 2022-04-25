ep = 0.00001;                    % value of epsilon

z0=1.5;     % the initial value of V1


while 1
    z1 = new_zi(z0);
    if abs(z1 - z0) < ep        % checking the distance between adjacent points   
        break;
    end
    z0 = z1;
end

z1;                          % returning the value of volume 
