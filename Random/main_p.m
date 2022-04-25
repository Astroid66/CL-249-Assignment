X0=load("X_data.txt");              %loading file for X data
Y=load("Y_data.txt");               %loading file for Y data

n=10;

X=zeros(n,n);

prod =@(x) 1;                       % product i.e. L(i) will be this only
fu = @(x) 0;                        % fu which is our main polynomial


for i=0:n
    prod =@(x) 1;                   % redefining for the every iteration of i 
    for j=0:n
        if j~=i
            prod =@(x) prod(x) * ((x-X0(j+1))/(X0(i+1)-X0(j+1)));               % multiplying (x-x0(j+1))/(x0(i+1)-x0(j+1)) in prod
        end
    end
    M(i+1)=prod(7.5);
    N(i+1)=prod(8.5);
    fu =@(x) fu(x) + prod(x) * Y(i+1);                                          % adding to the main polynomial
end

for i=0:n
    X0(i+1) = i-0.5;                                                            % updating X0
    Y(i+1) = fu(X0(i+1));                                                       % found the values of Y coresponding to X0 = 0.5 to 9.5
end

Y
M
N