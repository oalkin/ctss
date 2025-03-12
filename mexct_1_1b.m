% Script: mexct_1_1b.m
t = [0:0.01:5];               % Vector of time instants
x2 = (exp(-3*t)-exp(-6*t));   % Compute the signal
% Graph the signal.
plot(t,x2); grid;
axis([0,5,-0.2,0.4]);
xlabel('Time (sec)');
title('x_2(t)');