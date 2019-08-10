clear all;
% MATLAB code for simulating a memristor 
v0=1; % amplitude of the input wave 
omega=3; % frequency (rad/s) 
MD=1e-14;%drift velocity 
ROFF=16e+3; % resistance of undoped region 
RON=100;% resistance of the doped region 
r=ROFF/RON; 
D = 10e-9; % Width of Memristor 
w0 = 1e-9; % Width of doped region  
M0=(RON*(w0/D))+(ROFF*(1-(w0/D))); 
q0=(D^2)/(MD*RON); 
deltaR=ROFF-RON; 

t_ini=0; passo=0.0095; t_fim=6;
delta_t = t_fim - t_ini;
t = t_ini:passo:t_fim; 
vt=v0*sin(omega*t);%input voltage 
flux=v0.*(1-cos(omega*t))./omega;%flux 

n_fim = ceil(delta_t/passo);
for n=1:n_fim
i(n)=(vt(n))/(ROFF*sqrt(1-((2*MD*flux(n))/(r*(D^2))))); %Current 
charge(n)=(q0*(1-sqrt(1-((2*flux(n))/(q0*ROFF)))));%charge 
width(n)= 1-sqrt(1-((2*MD*flux(n))/(r*(D^2))));%internal state of memristor 
Mt = M0 - (deltaR)*(charge(n))/q0;
end 

figure(1) 
plot(flux,charge);%Plot of charge versus flux 
title('Flux-charge curve');
grid on;

figure(2) 
plot (vt,i);%plot of current versus voltage  
title('Voltage-current curve');
grid on;

hold on;
omega = 6;
vt=v0*sin(omega*t);%input voltage 
flux=v0*(1-cos(omega*t))/omega;%flux 
for n=1:n_fim
i(n)=(vt(n))/(ROFF*sqrt(1-((2*MD*flux(n))/(r*(D^2))))); %Current 
charge(n)=(q0*(1-sqrt(1-((2*flux(n))/(q0*ROFF)))));%charge 
width(n)= 1-sqrt(1-((2*MD*flux(n))/(r*(D^2))));%internal state of memristor 
end 
plot(vt, i);

figure(3)
plot(t, vt);
title('Time-voltage curve');
grid on;
hold on;
plot(t,width);

figure(4)
plot(t, i);
title('Time-current curve');
grid on;
