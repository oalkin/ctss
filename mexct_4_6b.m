% Script: mexct_4_6b.m
omega = [-5:0.01:5];      % Vector of radian frequencies
s = j*omega;              % Vector of s values on the imaginary axis
B = s-1;                  % Numerator
A = s+2;                  % Denominator
mag = abs(B)./abs(A);     % Magnitude of the transform
phs = angle(B)-angle(A);  % Phase of the transform
% Graph the results
tiledlayout(2,1);
nexttile;
plot(omega,mag); grid;
xlabel('\omega (rad/s)');
ylabel('Magnitude');
nexttile;
plot(omega,phs); grid;
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');