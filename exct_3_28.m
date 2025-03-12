% Script: exct_3_28.m
% Set signal parameters "a" and "tau"
a = 2;
tau = 1;
% Create a vector of radian frequencies
omg = [-10:0.02:10];
% Compute the transform
Xomg = 2*a*exp(-j*omg*tau)./(a*a+omg.*omg);
% Graph the magnitude and the phase of the transform
tiledlayout(2,1);
nexttile;
plot(omg,abs(Xomg)); grid;
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|X(\omega)|');
nexttile;
plot(omg,angle(Xomg)); grid;
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');
title('X(\omega)');