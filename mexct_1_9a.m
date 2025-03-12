% Script: mexct_1_9a.m
t = linspace(0,10,2000);
vc = 0.5*sawtooth(2*pi*2*t)+0.5;
Vref = 0.3;
vPWM = Vref>=vc;   % Eqn. (1.83)
tiledlayout(2,1);  % Plot in a 2 by 1 arrangement
nexttile;          % Plot the first tile
plot(t,vc,t,Vref*ones(size(t)));
axis([0,10,-0.2,1.2]);
title('Carrier and reference');
ylabel('Amplitude');
nexttile;          % Plot the next tile
plot(t,vPWM);
axis([0,10,-0.2,1.2]);
title('PWM signal');
xlabel('time (sec)');
ylabel('Amplitude');