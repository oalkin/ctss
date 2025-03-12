% Script: exct_4_6a.m
% Define an anonymous function for the signal
x = @(t,a) -exp(a*t).*(t<=0);
t = [-4:0.01:1];  % Vector of time instants
% Compute x(t) for a=-0.5
x1 = x(t,-0.5);
% Compute x(t) for a=0.7
x2 = x(t,0.7);
% Graph the two signals
tiledlayout(2,1);
nexttile;
plot(t,x1); grid;
xlabel('t');
title('x(t) with a=-0.5');
nexttile;
plot(t,x2); grid;
xlabel('t');
title('x(t) with a=0.7');