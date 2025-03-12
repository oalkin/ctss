% Script: exct_3_33.m
% Set signal parameters
f0 = 10;
r = 0.1;
% Create a vector of frequency values
f = [-20:0.05:20];
% Compute the trapezoidal spectrum
X1 = 1.*((f>=-f0*(1-r))&(f<=f0*(1-r)));
X2 = 1/(2*r)*(-abs(f)/f0+1+r).*((abs(f)>f0*(1-r))&(abs(f)<f0*(1+r)));
X = X1+X2;
% Create a vector of time instants
t = [-0.5:0.001:0.5];
% Compute the inverse transform x(t)
x = 2*f0*sinc(2*f0*t).*sinc(2*f0*r*t);
% Graph the trapezoidal spectrum and the inverse transform
tiledlayout(2,1);
nexttile;
plot(f,X); grid;
axis([-20,20,-0.2,1.2]);
xlabel('f (Hz)');
title('X(f)');
nexttile;
plot(t,x); grid;
xlabel('t (sec)');
title('x(t)');