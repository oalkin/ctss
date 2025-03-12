% Script: exct_3_34.m
% Set signal parameters
f0 = 5;
tau = 1;
% Create a vector of time instants and compute the signal
t = [-3:0.01:3];
x = cos(2*pi*f0*t).*((t>=-tau)&(t<=tau));
% Create a vector of frequencies
f = [-10:0.02:10];
% Compute the transform
X = tau*sinc(2*tau*(f+f0))+tau*sinc(2*tau*(f-f0));
% Graph the signal and its transform.
tiledlayout(2,1);
nexttile;
plot(t,x); grid;
xlabel('t');
title('x(t)');
nexttile;
plot(f,X); grid;
xlabel('f (Hz)');
title('X(f)');