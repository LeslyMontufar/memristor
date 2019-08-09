b=0.01; g=4; n=4; a=2;A=25; m=0.001;
c=-1;d=4;%your constants
numOfPoints = 10000;
t = linspace(-1, 1,numOfPoints);
dt = t(2) - t(1);
volt = .003*sin(2*pi*t);
x = zeros(size(t));
curr = x;
for i=2:numOfPoints
    x(i) = x(i-1) + A*(c*volt(i)+d*(volt(i))^3)*(1-(2*x(i-1)-1)^2)*dt;
    curr(i)=x(i)^n*b*sinh(a*volt(i))+m*(exp(g*volt(i))-1);
end;
fig = figure(1);
plot(volt,curr);
xlabel('Voltage');ylabel('Current');
figure(fig);