% Script: mexct_4_6a.m
omega = 3;
s = j*omega;
B = s-1;                  % Numerator
A = s+2;                  % Denominator
mag = abs(B)/abs(A);      % Magnitude of the transform at 3 rad/s
phs = angle(B)-angle(A);  % Magnitude of the transform at 3 rad/s