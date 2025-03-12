% Script: exct_3_45b.m
% Define an anonymous function for H(f)
H = @(f) 1./(1+j*f/80);
f2 = 100;  % Frequency of interest
% Compute the magnitude and the phase of the system function
% at the frequency of interest.
H2 = abs(H(f2));
theta2 = angle(H(f2));
% Compute the steady-state response to a sinusoid with f=f2
t = [0:0.02:15];  % Time instants in milliseconds
x2 = 5*cos(2*pi*f2*t/1000);
y2 = 5*H2*cos(2*pi*f2*t/1000+theta2);
% Graph input and output signals together
plot(t,x2,'--',t,y2,'r'); grid;
xlabel('t (ms)');
title('x_{2}(t) and y_{2}(t)');
legend('Input','Output');