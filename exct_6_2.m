% Script: exct_6_2.m
omgc = 20*pi;  % 3-dB cutoff frequency
k = [2:4];     % Indices for the poles in the left half s-plane
% Compute poles of the Butterworth filter
pls = omgc*exp(j*2*pi*k/6);
% Create vectors of frequencies in Hz and rad/s
f = [-25:0.05:25];
omg = 2*pi*f;
% Compute frequency response using function ss_freqs(...)
[Hmag,Hphs] = ss_freqs([],pls,(20*pi)^3,omg);
% Graph the magnitude and the phase of the frequency response
tiledlayout(2,1);
nexttile;
plot(f,Hmag); grid;
axis([-25,25,0,1.2]);
xlabel('f (Hz)');
ylabel('Magnitude');
title('|H(f)|');
nexttile;
plot(f,Hphs); grid;
axis([-25,25,-pi,pi]);
xlabel('f (Hz)');
ylabel('Phase');
title('\angle H(f)');