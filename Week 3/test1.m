A=load("data_A3.txt");
dim = size(A);  
n= dim(2);  
B = ones(n,1);
X1 = linsolve(A,B)
%inverse of A
Y = inv(A)
X2 = linsolve(Y,B)