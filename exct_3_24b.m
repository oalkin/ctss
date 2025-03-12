% Script: exct_3_24b.m
% Set signal parameter "a"
a = 2;
% Create a vector of radian frequencies and compute the transform
omg = [-10:0.02:10];
Xomg = 1./(a+j*omg);
% Graph real and imaginary parts of the transform
tiledlayout(2,1);
nexttile;
plot(omg,real(Xomg)); grid;
xlabel('\omega (rad/s)');
title('real\{X(\omega)\}');
nexttile;
plot(omg,imag(Xomg)); grid;
xlabel('\omega (rad/s)');
title('imag\{X(\omega)\}');