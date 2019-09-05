  t = -10:0.1:10;
  v0 = 1;
  
%  Typical parameters
  t0 = 0.1*10^(-3);
  w0 = 50*10^3;
  
  
  %freq = 60;
  %freq = 1/(2*pi);
  %w = 2*pi*freq;
  
  v = v0*sin(w*t);
  flux = v0*(1-cos(w*t))/w;
  plot(t, v, 'b',t, flux, 'r');
