function [fun1,fun2,fun3] = ODE_solver(c,h,n,y1,y2,y3)

for i=1:n+1
    if ( c==1 )                 % c=1 for RK4 
        y1(i+1) = y1(i) + h * phi1(1,h,y1(i),y2(i));                % Solving the function y1,y2 and y3 
        y2(i+1) = y2(i) + h * phi1(2,h,y1(i),y2(i));
        y3(i+1) = y3(i) + h * phi1(3,h,y3(i),y2(i));
    end
    if ( c==2 )                 % c=2 for RK5
        y1(i+1) = y1(i) + h * phi2(1,h,y1(i),y2(i));                % Solving the function y1,y2 and y3
        y2(i+1) = y2(i) + h * phi2(2,h,y1(i),y2(i));
        y3(i+1) = y3(i) + h * phi2(3,h,y3(i),y2(i)); 
    end
end
fun1 = y1;
fun2 = y2;
fun3 = y3;
end