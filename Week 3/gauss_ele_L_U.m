function [f g c] = gauss_ele_L_U(u,n)

l = eye(n);                     % initialising l matrix to be an identity matrix
counter_L_U = 0;

for i = 1:n
    if ( u(i,i) ~= 0 )          % checking if the diagonal element is non-Zero
        for j=i+1:n
            if(u(j,i) == 0)
                l(j,i) = 0;     % aasigning the upper triangle to be zero
            else
                factor = u(j,i) / u(i,i);               % calculating the factor
                u(j,:) = u(j,:) - factor * u(i,:);      % performing the row operation  
                l(j,i) = factor;                        % making of l
                counter_L_U = counter_L_U + 2*n + 1;       % increasing the counter by 2(n-i-1) + 1
            end
        end
    end
end

c=counter_L_U
f = l;
g = u;
end
