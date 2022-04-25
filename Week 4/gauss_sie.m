function X1 = gauss_sie(a,b)

[a,b]=sort(a,b);                                            % sorting matrix a 
op_g =0;                                                      % counter for no. of operations
c_g=0;                                                        % counter for no. of iterations
ep = 0.00000000000000000001;                     % value of epsilon

dim = size(a);                
n = dim(2);

X1= zeros(n,1);
X0 = zeros(n,1);

flag=1;
while flag
    for i=1:n
        sum1=0;
        sum2=0;
        for j=1:i-1
            sum1 = sum1 + a(i,j)*X1(j);                                 % calculating summation 1 for updated X1
            op_g=op_g+2;                                                    % increasing the value of operation by 2
        end
        for j=i+1:n
            sum2 = sum2 + a(i,j)*X0(j);                                 % calculating summation 2 for old X0
            op_g=op_g+2;
        end
        X1(i) = (b(i) - sum1 - sum2) / a(i,i);                          % updating the value of X1
        op_g=op_g+2;
    end
    flag=0;
    for i=1:n
        if (abs((X1(i)-X0(i))/X1(i))>ep)                                % checking if X1 and X0 converges or not
            flag=1;
            break
        end
    end
    c_g=c_g+1;                                                              % increasing the no. of iterations by 1
    X0=X1;
end
c_g
op_g
return;
end


function [f,g]=sort(a,b)

    dim = size(a);                
    n = dim(2);                             % dimension of 'a' matrix
    for j = 1:n   
        for i = 1:n
            for k = 1:n-i         
                    e = j;
                    c=1;
                    while e>1
                        if ( a(k,e-1) ~=0 || a(k+1,e-1) ~= 0)           % checking if the 
                            c = 0;
                            break;
                        end
                        e=e-1;
                    end
                    if (abs(a(k,j)) < abs(a(k+1,j)) && c ~=0 ) 
                        t = a(k+1,:);           % swaping the value of a(k) and a(k+1)
                        a(k+1,:) = a(k,:);
                        a(k,:) = t;
                        t = b(k+1,1);           % swaping the value of a(k) and a(k+1)
                        b(k+1,1) = b(k,1);
                        b(k,1) = t;
                    end
            end
        end
    end
    
     for j = 1:n   
        for i = 1:n
            for k = 1:n-i         
                    e = j;
                    c=1;
                    while e>1
                        if ( a(k,e-1) ~=0 || a(k+1,e-1) ~= 0)           % checking if the 
                            c = 0;
                            break;
                        end
                        e=e-1;
                    end
                    if (abs(a(j,k)) < abs(a(j,k+1)) && c ~=0 ) 
                        t = a(k+1,:);           % swaping the value of a(k) and a(k+1)
                        a(k+1,:) = a(k,:);
                        a(k,:) = t;
                        t = b(k+1,1);           % swaping the value of a(k) and a(k+1)
                        b(k+1,1) = b(k,1);
                        b(k,1) = t;
                   end
            end
        end
    end
    f=a;
    g=b;
end