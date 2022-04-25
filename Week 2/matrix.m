a = load("data_A.txt");         %loading data_A.txt and assigning its value to a
b = load("data_B.txt");         %loading data_A.txt and assigning its value to a
dim = size(a);                  %dimension of matrix a i.e. 15*15
n= dim(2)                      %size of a i.e. 15

x = gauss_ele(a,b,n)             % calling the function gauss_ele() to perform gauss elemination and back substituion

plot(x);                        % plotting the vector x