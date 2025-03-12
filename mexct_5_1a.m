% Script: mexct_5_1a.m
num = [1,1,-2];  % Numerator coefficients
den = [1,6,5];   % Denominator coefficients
% Convert to state-space form using function tf2ss(...)
[A,B,C,d] = tf2ss(num,den)