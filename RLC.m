t = -30:0.1:-20;

i = 15.2755*exp(-2.5*t).*cos(4.33*t+49.1074);
subplot(131);
plot(t, i);
title('Circuito subamortecido');

i = 15.2755*exp(-2.5*t).*cos(4.33*t+49.1074);
subplot(132);
plot(t, i);
title('Circuito com amortecimento crítico');

i = -1.3333*exp(-2*t).+1.3333*exp(0.5*t);
subplot(133);
plot(t, i);
title('Circuito superamortecido');
