% Script: exct_3_47.m
% Set parameter "fc" and "tau".
fc = 80;      % Cutoff frequency for the RC system.
tau = 0.01;   % Pulse width (we will use 10 ms).
% Define an anonymous function for H(f).
H = @(f) 1./(1+j*f/fc);
% Set a vector of frequency values.
f = [-500:500];
% Graph the system function and the spectra for
% input and output signals.
tiledlayout(3,2);
nexttile;
plot(f,abs(H(f))); grid;
xlabel('f (Hz)');
ylabel('Magnitude');
title('|H(f)|');
nexttile;
plot(f,angle(H(f))); grid;
axis([-500,500,-pi,pi]);
xlabel('f (Hz)');
ylabel('Phase (rad)');
title('\angle H(f)');
X = tau*sinc(f*tau);
nexttile;
plot(f,abs(X)); grid;
xlabel('f (Hz)');
ylabel('Magnitude');
title('|X(f)|');
nexttile;
plot(f,angle(X)); grid;
axis([-500,500,-pi,pi]);
xlabel('f (Hz)');
ylabel('Phase (rad)');
title('\angle X(f)');
Y = X.*H(f);
nexttile;
plot(f,abs(Y)); grid;
xlabel('f (Hz)');
ylabel('Magnitude');
title('|Y(f)|');
nexttile;
plot(f,angle(Y)); grid;
axis([-500,500,-pi,pi]);
xlabel('f (Hz)');
ylabel('Phase (rad)');
title('\angle Y(f)');