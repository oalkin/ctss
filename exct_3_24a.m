% Script: exct_3_24a.m
% Set signal parameter "a"
a = 2;
% Create a vector of radian frequencies and compute the transform
omg = [-10:0.02:10];
Xomg = 1./(a+j*omg);
% Graph the magnitude and the phase of the transform
tiledlayout(2,1);
nexttile;
plot(omg,abs(Xomg)); grid;
axis([-10,10,0,0.6]);
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|X(\omega)|');
nexttile;
plot(omg,angle(Xomg)); grid;
axis([-10,10,-pi,pi]);
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');
title('\angle X(\omega)');