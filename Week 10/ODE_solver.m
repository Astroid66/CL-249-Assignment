function [fun1,fun2] = ODE_solver(h,n,y1,y2,x)

for i=1:n+1
        y1(i+1) = y1(i) + h * phi1(1,h,y1(i),y2(i),x(i));                % Solving the function y1,y2 and y3 
        y2(i+1) = y2(i) + h * phi1(2,h,y1(i),y2(i),x(i));
        x(i) = x(i) + 1;
end

fun1 = y1;
fun2 = y2;

end