% Script : exct_3_15a.m
a = 2;
t = [-1:0.01:5];      % Vector of time instants
% Compute the signal
x = exp(-a*t).*(t>=0);
omg = [-10:0.02:10];  % Vector of radian frequencies
% Compute the transform
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