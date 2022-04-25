function f = forw_subs(a,b,n)

x= zeros(15,1); 
% sort(a);                        % sorting matrix a 
counter =0;                     % counter for no. of operations
% 
% for i = 1:n
%     if ( a(i,i) ~= 0 )          % checking if the diagonal element is non-Zero
%         sort (a);               % sorting the array for maximum diagonal element 
%         for j=i+1:n
%             factor = a(j,i)/a(i,i);         % the factor for each row
%             a(j,:) = a(j,:) - factor * a(i,:);          % performing the operation R2->R2-f*R1
%              b(j) = b(j) - factor * b(i);               % making similar transformation in b matrix
%             counter = counter+2*n +3;                   % increasing the counter as 2*n for a rows and 2 for b rows and 1 for factor
%         end
%     end
% end

% back subsitutuion
x(1) = b(1) / a(1,1);         
counter = counter+1;
for i = 2:n
    sum = 0; 
    for j = 1:i-1
        sum = sum + a(i,j)*x(j);                % applying summation formulae
        counter = counter+2;
    end
    x(i) = ( b(i) - sum ) / a(i,i);             % calculating the value og x(i)
    counter = counter+2;
end

%couter for the operations
counter;
f = x;
end
