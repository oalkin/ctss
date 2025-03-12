% Script: exct_4_24b.m
% Compute and graph the signal x(t)
t = [-1:0.01:5];  % Vector of time instants.
x = 0.5*(1+exp(-2*t)).*(t>=0);
plot(t,x); grid;
xlabel('t (sec)');
ylabel('Amplitude');
title('The signal x(t) for Example 4.24');