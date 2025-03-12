% Script: mexct_3_5a.m
N = 500;                % Number of samples per period
T0 = 3;                 % Fundamental period
t = [0:N-1]/N*T0;       % Vector of time instants
x = (t<=0.5)|(t>=2.5);  % Describe one period of the signal
k = [-5:5];             % Vector of desired EFS coefficient indices
c = ss_efsapprox(x,k);  % Compute approximate EFS coefficients
% Display coefficients
c