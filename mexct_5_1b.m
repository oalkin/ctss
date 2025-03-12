% Script: mexct_5_1b.m
num = [1,1,-2];  % Numerator coefficients
den = [1,6,5];   % Denominator coefficients
% Convert system to state-space form using function ss_tf2ss(...)
[A,B,C,d] = ss_tf2ss(num,den)