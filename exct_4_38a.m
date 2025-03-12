% Script: exct_4_38a.m
num = 15*[1,1,0];                       % Numerator coeffieicnts
den = conv([1,3],conv([1,-1],[1,-2]));  % Denominator coefficients
% Compute the residues and the poles
[r,p,k] = residue(num,den)