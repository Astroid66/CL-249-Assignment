
function u_n = un(z0) 

t0=0;
t1=1;

h=0.05;
n = (t1-t0)/h;

u = zeros(n+1,1);
z = zeros(n+1,1);
t = zeros(n+1,1);

t(1)=0;
u(1)=0;
z(1)=z0;

for i=1:n+1
    t(i+1) = t(i) + h;
end

u_next = ODE_solver(h,n,u,z,t);
u_n = u_next(n+1);

plot(t,u_next);

end