A1 = load("data_A3.txt");                   %loading data_A.txt and assigning its value to A
B = ones(15,15);

dim = size(A1);                             %dimension of matrix A i.e. 15*15
n= dim(2);                                  %size of A i.e. 15
operations1 =0;
I=eye(n);
% LU decomposition
[L1 U1 opera] = gauss_ele_L_U(A1+8*I,n)             % assining values of L and U by calling function gauss_ele_L_U(A,n)
for i=1:n
    [X1(:,i) c] = value_of_X(L1,U1,B(:,i)) ;                   % calling the function value_of_X() to use L and U and find out value of X1
    operations1 = operations1+c;
end
X1
operations1

% for finding the inverse of A1
opt=0;
B = eye(n);
for i=1:n
    [X2(:,i) opera] = value_of_X(L1,U1,B(:,i)) ;                   % calling the function value_of_X() to use L and U and find out value of X1
    opt = opt+opera;
end
X2
inv(A1)
opt + opera