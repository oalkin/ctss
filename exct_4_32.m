% Script: exct_4_32.m
num = [4];       % Numerator coefficients
den = [1,3,2];   % Denominator coefficients
% Compute residues and poles
[r,p,k] = residue(num,den)
% Compute and graph the impulse response h(t)
t = [-1:0.01:8];
h = 4*(exp(-t)-exp(-2*t)).*(t>=0);
plot(t,h); grid;
xlabel('t (sec)');
ylabel('Amplitude');
title('The impulse response h(t) for Example 4.32');