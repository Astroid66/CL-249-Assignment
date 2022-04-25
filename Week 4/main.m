a = load("data_A.txt");         %loading data_A.txt and assigning its value to a
b = load("data_B.txt");         %loading data_A.txt and assigning its value to a

dim = size(a);                  %dimension of matrix a i.e. 15*15
n= dim(2);                       %size of a i.e. 15

x0=zeros(n,1);
x = jacobi_it(a,b)              % calling the function jacobi_it() 
x = gauss_sie(a,b)              % calling the function gauss_sie()  

linsolve(a,b)                   % checking the answer using inbuilt funtion 