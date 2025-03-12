% Script: mexct_4_8a.m
num = [1,0,1];      % Numerator coefficients
den = [1,5,17,13];  % Denominator coefficients
% Create a system function object
sys1 = tf(num,den)
% Pole zero plot for H(s)
pzmap(sys1);
axis([-3,1,-4,4]);