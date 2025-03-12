% Script: mexct_1_1a.m
t = linspace(0,5,1000);   % Vector of time instants
x1 = 5*sin(12*t);         % Compute the signal
% Graph the signal.
plot(t,x1); grid;
axis([0,5,-6,6]);
xlabel('Time (sec)');
title('x_1(t)');