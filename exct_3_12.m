% Script: exct_3_12.m
% Set pulse parameters
A = 1;
tau = 1;
% Create a vector of frequencies
f = [-8:0.02:8];
% Compute and graph the transform
Xf = A*tau*sinc(f*tau);
plot(f,Xf); grid;
axis([-8,8,-0.3,1.2]);
xlabel('f (Hz)');
title('X(f)');