% Script: mexct_4_5b.m
num = [3,2,5];   % Numerator coefficients
den = [1,4,20];  % Denominator coefficients
% Compute residues, poles and the quotient polynomial
[res,poles,qt] = residue(num,den)