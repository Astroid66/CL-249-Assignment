P = linspace(1,100,10000);          % dividing Pressure in 10000 subdivisions i.e. least count is 0.01

for i=1:10000
    V(i) = vol_pre(P(i));           % assigning value of volume to the coclcrrespoding value of pressure
    i=i+1;
end

plot(P,V);                          % plottinig P-V curve
xlabel('Pressure');                 % labelling x-axis
ylabel('Volume');                   % labelling y-axis 
title('P-V isotherm');              % naming the curve