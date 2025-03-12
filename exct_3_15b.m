% Script: exct_3_15b.m
a = 2;
t = [-1:0.01:5];      % Vector of time instants
% Compute the signal
x = exp(-a*t).*(t>=0);
omg = [-10:0.02:10];  % Vector of radian frequencies
% Compute the transform
Xomg = 1./(a+j*omg);
% Graph real and imaginary parts of the transform
tiledlayout(2,1);
nexttile;
plot(omg,real(Xomg)); grid;
axis([-10,10,0,0.6]);
xlabel('\omega (rad/s)');
title('real\{X(\omega)\}');
nexttile;
plot(omg,imag(Xomg)); grid;
axis([-10,10,-0.3,0.3]);
xlabel('\omega (rad/s)');
title('imag\{X(\omega)\}');