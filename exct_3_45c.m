% Script: exct_3_45c.m
% Define an anonymous function for H(f)
H = @(f) 1./(1+j*f/80);
f3 = 200;  % Frequency of interest
% Compute the magnitude and the phase of the system function
% at the frequency of interest
H3 = abs(H(f3));
theta3 = angle(H(f3));
% Compute the steady-state response to a sinusoid with f=f3
t = [0:0.02:15];  % Time instants in milliseconds
x3 = 5*cos(2*pi*f3*t/1000);
y3 = 5*H3*cos(2*pi*f3*t/1000+theta3);
% Graph input and output signals together
plot(t,x3,'--',t,y3,'m'); grid;
xlabel('t (ms)');
title('x_{3}(t) and y_{3}(t)');
legend('Input','Output');