% Script:exct_3_45a.m
% Define an anonymous function for H(f)
H = @(f) 1./(1+j*f/80);
f1 = 20;  % Frequency of interest
% Compute the magnitude and the phase of the system function
% at the frequency of interest
H1 = abs(H(f1));
theta1 = angle(H(f1));
% Compute the steady-state response to a sinusoid with f=f1
t = [0:0.05:40];  % Time instants in milliseconds
x1 = 5*cos(2*pi*f1*t/1000);
y1 = 5*H1*cos(2*pi*f1*t/1000+theta1);
% Graph input and output signals together
plot(t,x1,'--',t,y1,'g'); grid;
xlabel('t (ms)');
title('x_{1}(t) and y_{1}(t)');
legend('Input','Output');