clear all;
close all;

% MATLAB code for simulating a memristor 
v0=1; % amplitude of the input wave 
omega=3; % frequency (rad/s) 
MD=1e-14;%drift velocity 
ROFF=16e+3; % resistance of undoped region 
RON=100;% resistance of the doped region 
r=ROFF/RON; 
%D = 10e-9; % Width of Memristor 
w0 = 1e-9; % Width of doped region  
%M0=(RON*(w0/D))+(ROFF*(1-(w0/D))); 
%q0=(D^2)/(MD*RON); 
deltaR=ROFF-RON; 


D=3e-9:0.1e-9:10e-9;
q0=(D.^2)/(MD*RON); 
Mt = (RON*(w0./D))+(ROFF*(1-(w0./D))) + (deltaR)*1./q0;



figure(1) 
plot(D, Mt, 'LineWidth', 2);%Plot of charge versus flux 
%title('Flux-charge curve');
grid on;
xlabel('D');
ylabel('memristencia');

