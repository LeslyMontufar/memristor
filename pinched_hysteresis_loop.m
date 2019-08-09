close;
K = 10^4;
Ron = 100;
Roff = 16*10^3;

t = -1:0.1:1;
A = 2;
x0 = 0;
w = 3;
x = x0 -K*A*cos(w*t)/w;
M = Ron*x + Roff*(1-x);

plot(x, M);
