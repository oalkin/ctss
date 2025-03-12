% Script: exct_4_27b.m
% Create vectors for the numerator and the denominator of X(s)
num = [1,1,0];
den = [1,5,6];
% Compute residues, poles and the quotient polynomial
[r,p,qt] = residue(num,den);
t = [-1:0.01:5];  % Vector of time instants
% Compute the signal x1(t). We only have simple poles
x1 = r(1)*exp(p(1)*t).*(t>=0)+r(2)*exp(p(2)*t).*(t>=0);
plot(t,x1); grid;
xlabel('t');
title('x_{1}(t)');