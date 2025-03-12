% Script: mexct_4_9.m
zrs = [0,1];       % Zeros of the system function
pls = [-1,-2,-3];  % Poles of the system function
% Create a system object
sys = zpk(zrs,pls,10)
% Compute and display the Bode plot
bode(sys); grid;