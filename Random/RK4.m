% function R= RK4(h,x0,xf)
x0=0;
xf=4;
h=0.001;
n=(xf-x0)/h;
x=zeros(1,n+1);
y1=zeros(1,n+1);
y2 = zeros(1,n+1);
y1(1)=95;
y2(1)=5;
x(1)=0;
for i=1:n
    x(i+1)= x(i) + h;
    k1y1=h*f_1(y1(i),y2(i));
    k2y1=h*f_1(x(i)+(h/2),y1(i)+(k1y1/2));
    k3y1=h*f_1(x(i)+(h/2),y1(i)+(k2y1/2));
    k4y1=h*f_1(x(i)+h,y1(i)+ k3y1);
    y1(i+1)=y1(i)+(1/6)*(k1y1+2*k2y1+2*k3y1+k4y1);
    
    k1y2=h*f_2(y1(i),y2(i));
    k2y2=h*f_2(y1(i)+(k1y2/2),y2(i));
    k3y2=h*f_2(y1(i)+(k2y2/2),y2(i));
    k4y2=h*f_2(y1(i)+ k3y2,y2(i));
    y2(i+1)=y2(i)+(1/6)*(k1y2+2*k2y2+2*k3y2+k4y2);
end

plot(x,y1);
hold on
plot(x,y2);

% for i=1:n
%     y1(1)=95;
%     y2(1)=5;
%     y1(i+1)= y1(i) +h;
%     x(i+1)= x(i) +h;
%     k1=h*f_2(y1(i),y2(i));
%     k2=h*f_2(y1(i)+(h/2),y2(i)+(k1/2));
%     k3=h*f_2(y1(i)+(h/2),y2(i)+(k2/2));
%     k4=h*f_2(y1(i)+h,y2(i)+ k3);
%     y2(i+1)=y2(i)+(1/6)*(k1+2*k2+2*k3+k4);
% end
% R=[y1,y2];
% plot(x,y2);
% hold off

