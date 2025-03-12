% Script: exct_4_9.m
% Define an anonumous function for the two-sided exponential signal
x = @(t,a) exp(a*t).*(t>=0)+exp(-a*t).*(t<0);
t = [-4:0.01:4];  % Vector of time instants
% Evaluate x(t) for a=-1
xt = x(t,-1);
% Graph the signal
plot(t,xt); grid;
xlabel('t');
title('x(t)');