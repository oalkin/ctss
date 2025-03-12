% Script: exct_2_12.m
R = 1;        % Set R=1 Ohm
C = 0.25;     % Set C=0.25 Farads
t0 = -0.5;    % Start time
yh0 = 10;     % Initial value yh(t0) of the homogeneous solution
alpha = 1/(R*C);  
t = [t0:0.01:t0+1.5];  % Vector of time instants
% Compute the constant for the homogeneous solution
c = yh0/exp(-alpha*t0);  
% Compute the homogeneous solution
yh = c*exp(-alpha*t);
% Graph the solution
plot(t,yh); grid;
title('Homogeneous solution y_h(t) for Example 2.12');
xlabel('t (sec)'); 
ylabel('Amplitude');