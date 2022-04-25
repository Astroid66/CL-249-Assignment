function X1 = jacobi_it(a,b)

[a,b]=sort(a,b);                        % sorting matrix a 

op_j=0;                                 % counter for no. of operations
c_j=0;                                  % counter for no. of iterations
ep = 0.0000000000000000001;             % value of epsilon

dim = size(a);                
n = dim(2);                             % dimension of 'a' matrix

X1 = zeros(n,1);
X0 = zeros(n,1);
flag=1;

while flag
    for i=1:n
%         sum=0;                          % calculating the summation factor
%         for j=1:n
%             if( i~=j)
%                 sum = sum + a(i,j)*X0(j);
%                 op_j = op_j +2;                             % increasing the operations by 2
%             end
%         end
        X1(i) = (b(i) + a(i,i)*X0(i) - a(i,:)*X0) / a(i,i);                  % updating X1
        op_j = op_j +2;
    end
    flag=0;
    for i=1:n
        if abs((X1(i)-X0(i))./X1(i))>ep                 % checking if the X1 and X0 converges
            flag=1;
        end
     end
    X0=X1;
    c_j=c_j+1;                                              % increasing one iteration
end

c_j
op_j
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
