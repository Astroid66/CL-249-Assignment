x0=0;x1=4;                  % range of x

h = input("Enter the value of h = ");           % taking the 
n = (x1-x0)/h;

y1 = zeros(n+1,1);      % initializing y1, y2, y3 and x
y2 = zeros(n+1,1);
y3 = zeros(n+1,1);
x = zeros(n+1,1);

y1(1)=95;         % using the intial given problem
y2(1)=5;
y3(1)=0;
x(1)=0;

for i=1:n+1;
    x(i+1) = x(i) + h;           % Forming the matrix X
end

%---------------------------------------------------------------------------------

[y1_4,y2_4,y3_4] = ODE_solver(1,h,n,y1,y2,y3);          % solving the differentil equation for y1,y2,y3 by RK4

figure(1);
nexttile
plot(x,y1_4);
title("Plot of y1 v/s x for RK4");                      % plot of y1 v/s x by RK4
xlabel("x values");
ylabel("y1 values");

nexttile
plot(x,y2_4);
title("Plot of y2 v/s x in RK4");                       % plot of y2 v/s x by RK4
xlabel("x values");
ylabel("y2 values");

nexttile
plot(x,y3_4);
title("Plot of y3 v/s x in RK4");                       % plot of y3 v/s x by RK4
xlabel("x values");
ylabel("y3 values");

%------------------------------------------------------------------------------------

[y1_5,y2_5,y3_5] = ODE_solver(2,h,n,y1,y2,y3);           % solving the differentil equation for y1,y2,y3 by RK5

figure(2);
nexttile
plot(x,y1_5);
title("Plot of y1 v/s x for RK5");                      % plot of y1 v/s x by RK5
xlabel("x values");
ylabel("y1 values");

nexttile
plot(x,y2_5);
title("Plot of y2 v/s x for RK5");                      % plot of y2 v/s x by RK5
xlabel("x values");
ylabel("y2 values");

nexttile
plot(x,y3_5);
title("Plot of y3 v/s x for RK5");                      % plot of y3 v/s x by RK5
xlabel("x values");
ylabel("y3 values");

%----------------------------------------------------------------------------------------------