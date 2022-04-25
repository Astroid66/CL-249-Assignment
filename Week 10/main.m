t0=0;t1=1;                  % range of x

h = 0.05;          
n = (t1-t0)/h;

u = zeros(n+1,1);      % initializing y1, y2, y3 and x
z = zeros(n+1,1);
t = zeros(n+1,1);

u(1)=0;         % using the intial given problem
t(1)=0;
z(1) = 1.5;

for i=1:10
    [y1,y2] = ODE_solver(h,n,u,z,t);          % solving the differential equation for y1,y2,y3 by RK4
    y1(2)
    if( y1(1)==1)
        break;
    end
    z(1)=z(1)+1; 
end
