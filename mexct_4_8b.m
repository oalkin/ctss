% Script: mexct_4_8b.m
num = [1,0,1];      % Numerator coefficients
den = [1,5,17,13];  % Denominator coefficients
% Create a system function object
sys1 = tf(num,den);
t = [0:0.01:5];    % Vector of time instants
% Compute the impulse response of the system
h = impulse(sys1,t);
% Compute the unit-step response of the system
y = step(sys1,t);
% Graph the responses
tiledlayout(2,1);
nexttile;
plot(t,h); grid;
xlabel('t (sec)');
ylabel('Amplitude');
title('Impulse response h(t)');
nexttile;
plot(t,y); grid;
xlabel('t (sec)');
ylabel('Amplitude');
title('Unit-step response y(t)');