function u = ODE_solver(h,n,u,z,t)

for i=1:n+1               
        u(i+1) = u(i) +  phi1(1,h,u(i),z(i),t(i))          % Solving the function y1,y2 and y3 
        z(i+1) = z(i) +  phi1(2,h,u(i),z(i),t(i))
end


end