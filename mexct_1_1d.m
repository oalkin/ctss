% Script: mexct_1_1d.m
t = [-2:0.01:3];                               % Vector of time instants
x4 = (exp(-3*t)-exp(-6*t)).*((t>=0)&(t<=1));   % Compute the signal
% Graph the signal.
plot(t,x4); grid;
axis([-2,3,-0.2,0.4]);
xlabel('t (sec)');
title('x_{4}(t)');