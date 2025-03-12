% Script: mexct_3_6a.m
N = 1000;          % Number of samples per period
T0 = 3;            % Fundamental period
t = [0:N-1]/N*T0;  % Vector of time instants
x = (t<=1);        % Describe one period of the signal
M = 11;            % Number of harmonics
[a0,a,b] = ss_tfsapprox(x,M);  % Compute approximate TFS coefficients
% Display coefficients
a0
[a,b]