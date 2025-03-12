% Script: mexct_1_1c.m
t = [-2:0.01:3];                 % Vector of time instants
w = (t>=0);
x3 = (exp(-3*t)-exp(-6*t)).*w;   % Compute the signal
% Graph the signal.
plot(t,x3); grid;
axis([-2,3,-0.2,0.4]);
xlabel('Time (sec)');
title('x_3(t)');