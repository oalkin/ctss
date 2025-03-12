% Script: exct_4_25a.m
num = [1,1]                  % Numerator polynomial for X(s)
den = [1,0,9,0]              % Denominator polynomial for X(s)
[r,p,k] = residue(num,den)   % Compute residues and poles