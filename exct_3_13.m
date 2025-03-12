% Script: exct_3_13.m
% Set pulse parameters
A = 1;
tau = 1;
f = [-6:0.02:6];  % Vector of frequencies
% Compute the transform
Xf = A*tau*sinc(f*tau).*exp(-j*pi*f*tau);
% Graph the magnitude and the phase of the transform
tiledlayout(2,1);
nexttile;
plot(f,abs(Xf)); grid;
axis([-6,6,0,1.2]);
xlabel('f (Hz)');
ylabel('Magnitude');
title('|X(f)|');
nexttile;
plot(f,angle(Xf)); grid;
axis([-6,6,-pi,pi]);
xlabel('f (Hz)');
ylabel('Phase (rad)');
title('\angle X(f)');