% Script: exct_3_9.m
f0 = 1;
t = [0:0.002:2];  % Vector of time instants
% Compute the multitone signal
x = cos(2*pi*10*f0*t)+0.4*cos(2*pi*11*f0*t)+0.4*cos(2*pi*9*f0*t);
% Graph the multitone signal
plot(t,x); grid;
xlabel('t');
ylabel('Amplitude');
title('x(t)');