% Script: mexct_4_5a.m
num = conv([1,0],[1,-2]);  % Numerator coefficients
den = [1,9,30,42,20];      % Denominator coefficients
% Compute residues and poles
[res,poles,qt] = residue(num,den)