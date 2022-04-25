function f = inverse_of_A(a,n)

In = eye(n);                    % declaring an identity matrix
counter_inv = 0;

% overall idea is to change a matrix into identity matrix and perform
% similar transformation to a new In matrix whixh is itself identity matrix
% the resulting In matrix will be the inverse of matrix

for i = 1:n
        for j=1:n
            if( i ~= j && a(j,i) ~= 0)
                factor = a(j,i)/a(i,i);                     % the factor for each row
                a(j,:) = a(j,:) - factor * a(i,:);          % performing the row operation
                In(j,:) = In(j,:) - factor * In(i,:);       % transforming identity matrix into A inverse
                counter_inv = counter_inv + (4*n) + 1;
            end
        end
        
        if ( a(i,i) ~= 1)
            In(i,:) = In(i,:) / a(i,i);                             % transforming the diagonal elements of a to be 1
            a(i,:) = a(i,:) / a(i,i);
            counter_inv = counter_inv + (2*n);
        end
end

% for i=1:n
%     if ( a(i,i) ~= 1)
%         In(i,:) = In(i,:) / a(i,i);                             % transforming the diagonal elements of a to be 1
%         a(i,:) = a(i,:) / a(i,i);
%         counter_inv = counter_inv + (2*n);
%     end
% end

counter_inv
f = In;
end
