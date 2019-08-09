close;
##K = 10^4;
##Ron = 100;
##Roff = 16*10^3;
##x = x0 -K*A*cos(w*t)/w;
##M = Ron*x + Roff*(1-x);
##A = 2;
##x0 = 0;

figure(1);
t = -0:0.01:2;
w = 3;
A = 0.8;
B = 0.8;
u = A*sin(w*t)+B*cos(2*w*t);

plot(t, u);
title('Fig 2(a)');

figure(2);
t = -1:0.01:1;
%u = sin(t).-0.5*sin(2*t);
A = 1;
w = 1;
%y = A*sin(w*t) - A^2*sin(2*w*t)/(2*w);
%y = u

plot(t, y);
title('Example 01');

