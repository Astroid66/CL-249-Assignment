function f = gauss_ele(a,b,n)

x= zeros(n,1); 
% sort(a,n);                        % sorting matrix a 
counter =0;                     % counter for no. of operations

for i = 1:n
    if ( a(i,i) ~= 0 )          % checking if the diagonal element is non-Zero
%         sort (a,n);               % sorting the array for maximum diagonal element 
        for j=i+1:n
            factor = a(j,i)/a(i,i);         % the factor for each row
            a(j,:) = a(j,:) - factor * a(i,:);          % performing the operation R2->R2-f*R1
             b(j) = b(j) - factor * b(i);               % making similar transformation in b matrix
            counter = counter+2*n +3;                   % increasing the counter as 2*n for a rows and 2 for b rows and 1 for factor
        end
    end
end

% back subsitutuion
x(n) = b(n) / a(n,n);         
counter = counter+1;
for i = n-1:-1:1
    sum = 0; 
    for j = n:-1:i+1
        sum = sum + a(i,j)*x(j);                % applying summation formulae
        counter = counter+2;
    end
    x(i) = ( b(i) - sum ) / a(i,i);             % calculating the value og x(i)
    counter = counter+2;
end

%couter for the operations
counter;
f = x;
return;
end
% 
% %sort function
% function sort(a,n)
%     for j = 1:n   
%         for i = 1:n
%             for k = 1:n-i         
%                     e = j;
%                     c=1;
%                     while e>1
% %                         if ( a(k,e-1) ~=0 || a(k+1,e-1) ~= 0)           % checking if the 
% %                             c = 0;
% %                             break;
% %                         end
%                         e=e-1;
%                     end
%                     if (abs(a(k,j)) < abs(a(k+1,j)) && c ~=0 ) 
%                         for l=1:n
%                             t = a(k+1,l);           % swaping the value of a(k) and a(k+1)
%                             a(k+1,l) = a(k,l);
%                             a(k,l) = t;
%                         end
%                     end
%             end
%         end
%     end
% end