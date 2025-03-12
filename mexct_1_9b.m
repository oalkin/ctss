% Script: mexct_1_9b.m
t = linspace(0,10,2000);
vc = 0.5*sawtooth(2*pi*2*t)+0.5;
vref = 0.45*sin(2*pi*0.15*t)+0.5;
vPWM = vref>=vc;   % Eqn. (1.84)
tiledlayout(2,1);  % Plot in a 2 by 1 arrangement
nexttile;          % Plot the first tile
plot(t,vc,t,vref);
axis([0,10,-0.2,1.2]);
title('Carrier and reference');
ylabel('Amplitude');
nexttile;          % Plot the next tile
plot(t,vPWM);
axis([0,10,-0.2,1.2]);
title('PWM signal');
xlabel('time (sec)');
ylabel('Amplitude');