% Script: exct_3_16.m
a = 2;
t = [-5:0.01:5];      % Vector of time instants
% Compute the signal
x = exp(-a*abs(t));
omg = [-10:0.02:10];  % Vector of radian frequencies.
% Compute the transform
Xomg = 2*a./(a*a+omg.*omg);
% Graph the transform
plot(omg,Xomg); grid;
xlabel('\omega (rad/s)');
title('X(\omega)');